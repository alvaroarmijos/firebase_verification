import 'package:firebase_verification/app/ui/app_spacing.dart';
import 'package:firebase_verification/verification/cubit/verification_cubit.dart';
import 'package:firebase_verification/verification/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// {@template VerificationPage}
/// Contains the verification process.
/// {@endtemplate}
class VerificationPage extends StatelessWidget {
  /// {@macro VerificationPage}
  const VerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Email verification')),
      body: Padding(
        padding: const EdgeInsets.all(AppSpacing.space12),
        child: BlocBuilder<VerificationCubit, VerificationState>(
          builder: (context, state) {
            return switch (state) {
              VerificationInitialState() => const VerificationInitialView(),
              VerificationCheckingState() => const VerificationCheckingView(),
              VerificationCheckedState(:final email) => VerificationCheckedView(
                email: email,
              ),
              VerificationErrorState(:final message) => VerificationErrorView(
                message: message,
              ),
            };
          },
        ),
      ),
    );
  }
}
