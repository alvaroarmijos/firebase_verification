import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:path/path.dart';
import 'package:verification_repository/src/contract/verification_repository_contract.dart';
import 'package:verification_repository/src/exceptions/code_exception.dart';
import 'package:verification_repository/src/exceptions/desserialization_exception.dart';
import 'package:verification_repository/src/exceptions/verification_exception.dart';
import 'package:verification_repository/src/models/action_result.dart';
import 'package:verification_repository/src/models/code_validation.dart';

/// {@template verification_repository}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}
class VerificationRepository extends VerificationRepositoryContract {
  /// {@macro verification_repository}
  VerificationRepository({
    FirebaseDatabase? firebaseDatabase,
    FirebaseFirestore? firestore,
  })  : _firebaseDatabase = firebaseDatabase ?? FirebaseDatabase.instance,
        _firestore = firestore ??
            FirebaseFirestore.instanceFor(
              app: Firebase.app(),
              databaseId: _firestoreDatabaseId,
            );

  static const _codeVerificationsCollectionPath = 'code_verifications';
  static const _firestoreDatabaseId = 'verification-123';

  final FirebaseDatabase _firebaseDatabase;
  final FirebaseFirestore _firestore;

  late final CollectionReference<CodeValidation> _validationsCollection =
      _firestore
          .collection(_codeVerificationsCollectionPath)
          .withConverter<CodeValidation>(
            fromFirestore: _codeValidationsFromFirestore,
            toFirestore: _codeValidationsToFirestore,
          );

  static CodeValidation _codeValidationsFromFirestore(
    DocumentSnapshot<Map<String, dynamic>> documentSnapshot,
    SnapshotOptions? _,
  ) =>
      CodeValidation.fromJson(
        documentSnapshot.data()!..addAll({'uid': documentSnapshot.id}),
      );

  static Map<String, dynamic> _codeValidationsToFirestore(
    CodeValidation post,
    SetOptions? _,
  ) {
    return post.toJson()..remove('uid');
  }

  @override
  Future<ActionResult> sendVerificationCode(String email, String uid) async {
    final actionReference =
        _firebaseDatabase.ref().child('actions/verification/$uid').push();

    try {
      await actionReference.set({
        'type': 'NEW_VERIFICATION',
        'email': email,
        'uid': uid,
        'timestamp': ServerValue.timestamp,
      });
    } catch (_) {
      throw const VerificationException();
    }

    final actionResult =
        await _waitForVerificationActionResult(actionReference, uid);
    return actionResult;
  }

  /// This method will wait for the first result of verification action
  /// that has a data.
  ///
  /// When stream closes before valid database snapshot comes in
  /// [VerificationException] will be thrown, which does not conclude that the
  /// verification was a failure.
  ///
  /// When the stream snapshot data is malformed [DeserializationException]
  /// will be thrown which also does not have to indicate that the verification
  /// was not performed.
  Future<ActionResult> _waitForVerificationActionResult(
    DatabaseReference actionReference,
    String uid,
  ) async {
    late DatabaseEvent event;

    final documentId = basename(actionReference.path);
    try {
      event = await _firebaseDatabase
          .ref()
          .child('action_results/verification/$uid/$documentId')
          .onValue
          .firstWhere((data) => data.snapshot.exists);
    } catch (_) {
      throw const VerificationException();
    }

    try {
      final data = Map<String, dynamic>.from(event.snapshot.value! as Map);
      final actionResult = ActionResult.fromJson(data);

      return actionResult;
    } catch (_) {
      throw const DeserializationException();
    }
  }

  @override
  Future<ActionResult> verifyEmail(
    String email,
    String uid,
    int code,
  ) async {
    try {
      final snapshot = await _validationsCollection.doc(uid).get();
      final data = snapshot.data();

      if (data == null) {
        return _fail('Unable to verify, please try again.', uid);
      }

      if (data.code != code) {
        return _fail('Incorrect verification code', uid);
      }

      unawaited(_saveValidation(email, uid));
      unawaited(_removeCodeValidations(uid));
      return ActionResult(success: true, message: 'Complete verification');
    } catch (_) {
      unawaited(_removeCodeValidations(uid));
      throw const CodeException();
    }
  }

  Future<ActionResult> _fail(String message, String uid) async {
    unawaited(_removeCodeValidations(uid));
    return ActionResult(success: false, message: message);
  }

  Future<void> _removeCodeValidations(
    String uid,
  ) async {
    await _firestore
        .collection(_codeVerificationsCollectionPath)
        .doc(uid)
        .delete();
  }

  Future<void> _saveValidation(
    String email,
    String uid,
  ) async {
    try {
      final docReference = _firestore.collection('validations').doc();

      await docReference.set(
        {
          'verifiedEmail': true,
          'email': email,
          'uid': uid,
        },
      );
    } catch (_) {
      throw const CodeException();
    }
  }
}
