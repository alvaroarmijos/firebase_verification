import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_verification/app/navigator/app_navigator.dart';
import 'package:firebase_verification/app/ui/ui.dart';
import 'package:firebase_verification/firebase_options.dart';
import 'package:firebase_verification/home/view/home_page.dart';
import 'package:firebase_verification/verification/cubit/verification_cubit.dart';
import 'package:firebase_verification/verification/view/verification_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

/// {@template MyApp}
/// Contains the Material App
/// {@endtemplate}
class MyApp extends StatelessWidget {
  /// {@macro MyApp}
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      title: 'Firebase Verification',
      routes: {
        AppNavigator.MAIN_ROUTE: (_) => const HomePage(),
        AppNavigator.VERIFICATION:
            (_) => BlocProvider(
              create: (context) => VerificationCubit(),
              child: const VerificationPage(),
            ),
      },
    );
  }
}
