// coverage:ignore-file
// ignore_for_file: constant_identifier_names

import 'package:flutter/widgets.dart';

/// Abstract class of Navigator.
abstract class AppNavigator {
  /// main route
  static const MAIN_ROUTE = Navigator.defaultRouteName;

  /// verification route
  static const VERIFICATION = '/verification';

  /// navigate to the property detail page
  static void navigateToVerification(BuildContext context) {
    Navigator.pushNamed(context, VERIFICATION);
  }
}
