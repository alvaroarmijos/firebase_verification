import 'package:flutter/material.dart';

/// {@template VerificationErrorView}
/// Shows the content of the Verification page when the user has an error.
/// {@endtemplate}
class VerificationErrorView extends StatelessWidget {
  /// {@macro VerificationErrorView}
  const VerificationErrorView({required this.message, super.key});

  /// Error [message] to be displayed to the user.
  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(message));
  }
}
