import 'package:firebase_verification/app/navigator/app_navigator.dart';
import 'package:flutter/material.dart';

/// {@template HomePage}
/// Contains the Button to start verification.
/// {@endtemplate}
class HomePage extends StatelessWidget {
  /// {@macro HomePage}
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => AppNavigator.navigateToVerification(context),
          child: const Text('Start'),
        ),
      ),
    );
  }
}
