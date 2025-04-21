// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'code_validation.freezed.dart';
part 'code_validation.g.dart';

@freezed

/// {@template Post}
/// Contains the information about a post
/// {@endtemplate}
abstract class CodeValidation with _$CodeValidation {
  /// {@macro CodeValidation}
  factory CodeValidation({
    required String uid,
    required String email,
    required int code,
  }) = _CodeValidation;

  /// Creates a new instance of [CodeValidation] from a JSON object.
  factory CodeValidation.fromJson(Map<String, dynamic> json) =>
      _$CodeValidationFromJson(json);
}
