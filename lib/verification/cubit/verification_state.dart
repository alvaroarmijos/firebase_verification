part of 'verification_cubit.dart';

@freezed
/// Verification state class.
sealed class VerificationState with _$VerificationState {
  /// Verification Page Loading state.
  const factory VerificationState.initial({
    String? email,
    @Default(false) bool loading,
  }) = VerificationInitialState;

  /// Posts Page checking state.
  const factory VerificationState.checking({
    required String email,
    required String uid,
    int? verificationCode,
  }) = VerificationCheckingState;

  /// Posts Page checked state.
  const factory VerificationState.checked({
    required String email,
    required String uid,
  }) = VerificationCheckedState;

  /// Posts Page error state
  const factory VerificationState.error(String message) =
      VerificationErrorState;
}
