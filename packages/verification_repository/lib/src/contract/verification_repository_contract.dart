import 'package:verification_repository/verification_repository.dart';

/// Contract that defines the methods to interact with the
/// posts repository.
abstract class VerificationRepositoryContract {
  /// Method called on send verification code with
  /// the given [email].
  Future<ActionResult> sendVerificationCode(String email, String uid);

  /// Method called on verify email with the given [code].
  Future<ActionResult> verifyEmail(String email, String uid, int code);
}
