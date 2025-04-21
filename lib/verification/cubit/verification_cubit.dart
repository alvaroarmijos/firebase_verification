import 'package:firebase_verification/app/di/di.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';
import 'package:verification_repository/verification_repository.dart';

part 'verification_cubit.freezed.dart';
part 'verification_state.dart';

/// {@template VerificationCubit}
/// Cubit for the verification process.
/// {@endtemplate}
class VerificationCubit extends Cubit<VerificationState> {
  /// {@macro VerificationCubit}
  VerificationCubit() : super(const VerificationInitialState());

  final _verificationRepository = getIt<VerificationRepository>();

  /// Updates the [email] in the state.
  void onEmailChange(String? email) {
    final state = this.state;
    if (state is VerificationInitialState) {
      emit(state.copyWith(email: email));
    }
  }

  /// Sends the verification code to the email in the state
  Future<void> sendVerificationCode() async {
    final state = this.state;
    if (state is VerificationInitialState && state.email != null) {
      // Generates a time based UID for the validation.
      final uid = const Uuid().v1();
      final email = state.email!;
      emit(state.copyWith(loading: true));
      final result = await _verificationRepository.sendVerificationCode(
        email,
        uid,
      );

      if (result.success) {
        emit(VerificationState.checking(email: email, uid: uid));
      } else {
        final errorMessage =
            result.message ??
            'Unable to send verification code to email: $email';
        emit(VerificationState.error(errorMessage));
      }
    }
  }

  /// Updates the [code] in the state.
  void onCodeChange(String? code) {
    final state = this.state;
    if (state is VerificationCheckingState && code != null) {
      final verificationCode = int.tryParse(code);
      emit(state.copyWith(verificationCode: verificationCode));
    }
  }

  /// Verify code sent to the email in the state
  Future<void> verifyEmail() async {
    final state = this.state;
    if (state is VerificationCheckingState && state.verificationCode != null) {
      final uid = state.uid;
      final email = state.email;
      final verificationCode = state.verificationCode!;

      final result = await _verificationRepository.verifyEmail(
        email,
        uid,
        verificationCode,
      );

      if (result.success) {
        emit(VerificationState.checked(email: email, uid: uid));
      } else {
        final errorMessage =
            result.message ?? 'Unable to verify the email: $email';
        emit(VerificationState.error(errorMessage));
      }
    }
  }
}
