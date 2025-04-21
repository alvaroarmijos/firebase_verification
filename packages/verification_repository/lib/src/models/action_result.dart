// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'action_result.freezed.dart';
part 'action_result.g.dart';

@freezed

/// {@template action_result}
/// [ActionResult] is a model that corresponds to the documents stored
/// in the `action_results` collection.
///
/// [ActionResult] document is created by the Cloud Functions in response
/// to documents created in the `actions` collection.
/// {@endtemplate}
abstract class ActionResult with _$ActionResult {
  /// {@macro action_result}
  factory ActionResult({
    required bool success,
    @JsonKey(name: 'error_type') String? errorType,
    @JsonKey(name: 'msg') String? message,
  }) = _ActionResult;

  /// Creates a new instance of [Post] from a JSON object.
  factory ActionResult.fromJson(Map<String, dynamic> json) =>
      _$ActionResultFromJson(json);
}
