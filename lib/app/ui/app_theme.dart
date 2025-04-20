// coverage:ignore-file
import 'package:firebase_verification/app/ui/app_colors.dart';
import 'package:firebase_verification/app/ui/app_spacing.dart';
import 'package:flutter/material.dart';

/// Contains the light theme used in App.
abstract class AppTheme {
  /// Determines outline input border for input decoration
  static final outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(AppSpacing.space16),
    borderSide: BorderSide(
      color: AppColors.primaryColor.withValues(alpha: 0.1),
    ),
  );

  /// Returns the light theme
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      fontFamily: 'Roboto',
      splashColor: Colors.transparent,
      shadowColor: const Color.fromRGBO(228, 235, 252, 0.25),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        hintStyle: const TextStyle(fontSize: 14, color: Colors.grey),
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        border: outlineInputBorder,
      ),
      colorScheme: ColorScheme.fromSwatch().copyWith(
        brightness: Brightness.light,
        surface: AppColors.surfaceColor,
        primary: AppColors.primaryColor,
      ),
    );
  }
}
