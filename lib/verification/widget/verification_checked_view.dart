import 'package:firebase_verification/app/ui/app_spacing.dart';
import 'package:flutter/material.dart';

/// {@template VerificationCheckedView}
/// Shows the content of the Verification page when the user has an error.
/// {@endtemplate}
class VerificationCheckedView extends StatelessWidget {
  /// {@macro VerificationCheckedView}
  const VerificationCheckedView({required this.email, super.key});

  /// Verified [email] to be displayed to the user.
  final String email;

  @override
  Widget build(BuildContext context) {
    final message = 'Email verified successfully: $email';

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      spacing: AppSpacing.space16,
      children: [
        Text(message, textAlign: TextAlign.center),
        const Icon(Icons.check, color: Colors.green, size: 40),
      ],
    );
  }
}
