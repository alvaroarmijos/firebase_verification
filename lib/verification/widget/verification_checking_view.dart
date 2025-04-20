import 'package:firebase_verification/app/common/validators.dart';
import 'package:firebase_verification/app/ui/ui.dart';
import 'package:firebase_verification/verification/cubit/verification_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// {@template VerificationCheckingView}
/// Contains the email input and the button to send the verification code.
/// {@endtemplate}
class VerificationCheckingView extends StatelessWidget {
  /// {@macro VerificationCheckingView}
  const VerificationCheckingView({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final verificationCubit = context.read<VerificationCubit>();

    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: AppSpacing.space12,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Introduce el código de verificación',
            ),
            validator: EmailValidator.validate,
            textInputAction: TextInputAction.next,
            onChanged: verificationCubit.onEmailChange,
          ),
          ElevatedButton(
            onPressed: () => _onSendVerificationCode(context, formKey),
            child: const Text('Verificar email'),
          ),
        ],
      ),
    );
  }

  void _onSendVerificationCode(
    BuildContext context,
    GlobalKey<FormState> formKey,
  ) {
    final isValid = formKey.currentState?.validate() ?? false;
  }
}
