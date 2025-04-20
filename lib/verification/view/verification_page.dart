import 'package:firebase_verification/app/common/validators.dart';
import 'package:firebase_verification/app/ui/app_spacing.dart';
import 'package:flutter/material.dart';

/// {@template VerificationPage}
/// Contains the button to start verification.
/// {@endtemplate}
class VerificationPage extends StatelessWidget {
  /// {@macro VerificationPage}
  const VerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(title: const Text('Email verification')),
      body: Padding(
        padding: const EdgeInsets.all(AppSpacing.space12),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: AppSpacing.space12,
            children: [
              TextFormField(
                decoration: const InputDecoration(hintText: 'Email'),
                validator: EmailValidator.validate,
                textInputAction: TextInputAction.next,
              ),
              ElevatedButton(
                onPressed: () => _onSendVerificationCode(formKey),
                child: const Text('Enviar código de verificación'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onSendVerificationCode(GlobalKey<FormState> formKey) {
    final isValid = formKey.currentState?.validate() ?? false;
    if (isValid) {}
  }
}
