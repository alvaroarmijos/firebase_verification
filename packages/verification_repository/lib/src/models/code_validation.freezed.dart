// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'code_validation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CodeValidation {
  String get uid;
  String get email;
  int get code;

  /// Create a copy of CodeValidation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CodeValidationCopyWith<CodeValidation> get copyWith =>
      _$CodeValidationCopyWithImpl<CodeValidation>(
          this as CodeValidation, _$identity);

  /// Serializes this CodeValidation to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CodeValidation &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uid, email, code);

  @override
  String toString() {
    return 'CodeValidation(uid: $uid, email: $email, code: $code)';
  }
}

/// @nodoc
abstract mixin class $CodeValidationCopyWith<$Res> {
  factory $CodeValidationCopyWith(
          CodeValidation value, $Res Function(CodeValidation) _then) =
      _$CodeValidationCopyWithImpl;
  @useResult
  $Res call({String uid, String email, int code});
}

/// @nodoc
class _$CodeValidationCopyWithImpl<$Res>
    implements $CodeValidationCopyWith<$Res> {
  _$CodeValidationCopyWithImpl(this._self, this._then);

  final CodeValidation _self;
  final $Res Function(CodeValidation) _then;

  /// Create a copy of CodeValidation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? code = null,
  }) {
    return _then(_self.copyWith(
      uid: null == uid
          ? _self.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CodeValidation implements CodeValidation {
  _CodeValidation({required this.uid, required this.email, required this.code});
  factory _CodeValidation.fromJson(Map<String, dynamic> json) =>
      _$CodeValidationFromJson(json);

  @override
  final String uid;
  @override
  final String email;
  @override
  final int code;

  /// Create a copy of CodeValidation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CodeValidationCopyWith<_CodeValidation> get copyWith =>
      __$CodeValidationCopyWithImpl<_CodeValidation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CodeValidationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CodeValidation &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uid, email, code);

  @override
  String toString() {
    return 'CodeValidation(uid: $uid, email: $email, code: $code)';
  }
}

/// @nodoc
abstract mixin class _$CodeValidationCopyWith<$Res>
    implements $CodeValidationCopyWith<$Res> {
  factory _$CodeValidationCopyWith(
          _CodeValidation value, $Res Function(_CodeValidation) _then) =
      __$CodeValidationCopyWithImpl;
  @override
  @useResult
  $Res call({String uid, String email, int code});
}

/// @nodoc
class __$CodeValidationCopyWithImpl<$Res>
    implements _$CodeValidationCopyWith<$Res> {
  __$CodeValidationCopyWithImpl(this._self, this._then);

  final _CodeValidation _self;
  final $Res Function(_CodeValidation) _then;

  /// Create a copy of CodeValidation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? code = null,
  }) {
    return _then(_CodeValidation(
      uid: null == uid
          ? _self.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
