import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'verification_cubit.freezed.dart';
part 'verification_state.dart';

/// {@template VerificationCubit}
/// Cubit for the verification process.
/// {@endtemplate}
class VerificationCubit extends Cubit<VerificationState> {
  /// {@macro VerificationCubit}
  VerificationCubit() : super(const VerificationInitialState());

  /// Updates the [email] in the state.
  void onEmailChange(String email) {
    final state = this.state;
    if (state is VerificationInitialState) {
      emit(state.copyWith(email: email));
    }
  }

  /// Sends the verification code to the email in the state
  void sendVerificationCode() {
    final state = this.state;
    if (state is VerificationInitialState && state.email != null) {
      // Generates a time based UID for the validation.
      final uid = const Uuid().v1();
      emit(VerificationState.checking(email: state.email!, uid: uid));
    }
  }
}
