// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'action_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ActionResult {
  bool get success;
  @JsonKey(name: 'error_type')
  String? get errorType;
  @JsonKey(name: 'msg')
  String? get message;

  /// Create a copy of ActionResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ActionResultCopyWith<ActionResult> get copyWith =>
      _$ActionResultCopyWithImpl<ActionResult>(
          this as ActionResult, _$identity);

  /// Serializes this ActionResult to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ActionResult &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.errorType, errorType) ||
                other.errorType == errorType) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, errorType, message);

  @override
  String toString() {
    return 'ActionResult(success: $success, errorType: $errorType, message: $message)';
  }
}

/// @nodoc
abstract mixin class $ActionResultCopyWith<$Res> {
  factory $ActionResultCopyWith(
          ActionResult value, $Res Function(ActionResult) _then) =
      _$ActionResultCopyWithImpl;
  @useResult
  $Res call(
      {bool success,
      @JsonKey(name: 'error_type') String? errorType,
      @JsonKey(name: 'msg') String? message});
}

/// @nodoc
class _$ActionResultCopyWithImpl<$Res> implements $ActionResultCopyWith<$Res> {
  _$ActionResultCopyWithImpl(this._self, this._then);

  final ActionResult _self;
  final $Res Function(ActionResult) _then;

  /// Create a copy of ActionResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? errorType = freezed,
    Object? message = freezed,
  }) {
    return _then(_self.copyWith(
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      errorType: freezed == errorType
          ? _self.errorType
          : errorType // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ActionResult implements ActionResult {
  _ActionResult(
      {required this.success,
      @JsonKey(name: 'error_type') this.errorType,
      @JsonKey(name: 'msg') this.message});
  factory _ActionResult.fromJson(Map<String, dynamic> json) =>
      _$ActionResultFromJson(json);

  @override
  final bool success;
  @override
  @JsonKey(name: 'error_type')
  final String? errorType;
  @override
  @JsonKey(name: 'msg')
  final String? message;

  /// Create a copy of ActionResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ActionResultCopyWith<_ActionResult> get copyWith =>
      __$ActionResultCopyWithImpl<_ActionResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ActionResultToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ActionResult &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.errorType, errorType) ||
                other.errorType == errorType) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, errorType, message);

  @override
  String toString() {
    return 'ActionResult(success: $success, errorType: $errorType, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$ActionResultCopyWith<$Res>
    implements $ActionResultCopyWith<$Res> {
  factory _$ActionResultCopyWith(
          _ActionResult value, $Res Function(_ActionResult) _then) =
      __$ActionResultCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool success,
      @JsonKey(name: 'error_type') String? errorType,
      @JsonKey(name: 'msg') String? message});
}

/// @nodoc
class __$ActionResultCopyWithImpl<$Res>
    implements _$ActionResultCopyWith<$Res> {
  __$ActionResultCopyWithImpl(this._self, this._then);

  final _ActionResult _self;
  final $Res Function(_ActionResult) _then;

  /// Create a copy of ActionResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = null,
    Object? errorType = freezed,
    Object? message = freezed,
  }) {
    return _then(_ActionResult(
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      errorType: freezed == errorType
          ? _self.errorType
          : errorType // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
