// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verification_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VerificationState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerificationState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VerificationState()';
}


}

/// @nodoc
class $VerificationStateCopyWith<$Res>  {
$VerificationStateCopyWith(VerificationState _, $Res Function(VerificationState) __);
}


/// @nodoc


class VerificationInitialState implements VerificationState {
  const VerificationInitialState({this.email});
  

 final  String? email;

/// Create a copy of VerificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerificationInitialStateCopyWith<VerificationInitialState> get copyWith => _$VerificationInitialStateCopyWithImpl<VerificationInitialState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerificationInitialState&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'VerificationState.initial(email: $email)';
}


}

/// @nodoc
abstract mixin class $VerificationInitialStateCopyWith<$Res> implements $VerificationStateCopyWith<$Res> {
  factory $VerificationInitialStateCopyWith(VerificationInitialState value, $Res Function(VerificationInitialState) _then) = _$VerificationInitialStateCopyWithImpl;
@useResult
$Res call({
 String? email
});




}
/// @nodoc
class _$VerificationInitialStateCopyWithImpl<$Res>
    implements $VerificationInitialStateCopyWith<$Res> {
  _$VerificationInitialStateCopyWithImpl(this._self, this._then);

  final VerificationInitialState _self;
  final $Res Function(VerificationInitialState) _then;

/// Create a copy of VerificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = freezed,}) {
  return _then(VerificationInitialState(
email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class VerificationCheckingState implements VerificationState {
  const VerificationCheckingState({required this.email, required this.uid, this.verificationCode});
  

 final  String email;
 final  String uid;
 final  int? verificationCode;

/// Create a copy of VerificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerificationCheckingStateCopyWith<VerificationCheckingState> get copyWith => _$VerificationCheckingStateCopyWithImpl<VerificationCheckingState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerificationCheckingState&&(identical(other.email, email) || other.email == email)&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.verificationCode, verificationCode) || other.verificationCode == verificationCode));
}


@override
int get hashCode => Object.hash(runtimeType,email,uid,verificationCode);

@override
String toString() {
  return 'VerificationState.checking(email: $email, uid: $uid, verificationCode: $verificationCode)';
}


}

/// @nodoc
abstract mixin class $VerificationCheckingStateCopyWith<$Res> implements $VerificationStateCopyWith<$Res> {
  factory $VerificationCheckingStateCopyWith(VerificationCheckingState value, $Res Function(VerificationCheckingState) _then) = _$VerificationCheckingStateCopyWithImpl;
@useResult
$Res call({
 String email, String uid, int? verificationCode
});




}
/// @nodoc
class _$VerificationCheckingStateCopyWithImpl<$Res>
    implements $VerificationCheckingStateCopyWith<$Res> {
  _$VerificationCheckingStateCopyWithImpl(this._self, this._then);

  final VerificationCheckingState _self;
  final $Res Function(VerificationCheckingState) _then;

/// Create a copy of VerificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? uid = null,Object? verificationCode = freezed,}) {
  return _then(VerificationCheckingState(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,verificationCode: freezed == verificationCode ? _self.verificationCode : verificationCode // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class VerificationCheckedState implements VerificationState {
  const VerificationCheckedState({required this.email, required this.uid});
  

 final  String email;
 final  String uid;

/// Create a copy of VerificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerificationCheckedStateCopyWith<VerificationCheckedState> get copyWith => _$VerificationCheckedStateCopyWithImpl<VerificationCheckedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerificationCheckedState&&(identical(other.email, email) || other.email == email)&&(identical(other.uid, uid) || other.uid == uid));
}


@override
int get hashCode => Object.hash(runtimeType,email,uid);

@override
String toString() {
  return 'VerificationState.checked(email: $email, uid: $uid)';
}


}

/// @nodoc
abstract mixin class $VerificationCheckedStateCopyWith<$Res> implements $VerificationStateCopyWith<$Res> {
  factory $VerificationCheckedStateCopyWith(VerificationCheckedState value, $Res Function(VerificationCheckedState) _then) = _$VerificationCheckedStateCopyWithImpl;
@useResult
$Res call({
 String email, String uid
});




}
/// @nodoc
class _$VerificationCheckedStateCopyWithImpl<$Res>
    implements $VerificationCheckedStateCopyWith<$Res> {
  _$VerificationCheckedStateCopyWithImpl(this._self, this._then);

  final VerificationCheckedState _self;
  final $Res Function(VerificationCheckedState) _then;

/// Create a copy of VerificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? uid = null,}) {
  return _then(VerificationCheckedState(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class VerificationErrorState implements VerificationState {
  const VerificationErrorState(this.message);
  

 final  String message;

/// Create a copy of VerificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerificationErrorStateCopyWith<VerificationErrorState> get copyWith => _$VerificationErrorStateCopyWithImpl<VerificationErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerificationErrorState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'VerificationState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $VerificationErrorStateCopyWith<$Res> implements $VerificationStateCopyWith<$Res> {
  factory $VerificationErrorStateCopyWith(VerificationErrorState value, $Res Function(VerificationErrorState) _then) = _$VerificationErrorStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$VerificationErrorStateCopyWithImpl<$Res>
    implements $VerificationErrorStateCopyWith<$Res> {
  _$VerificationErrorStateCopyWithImpl(this._self, this._then);

  final VerificationErrorState _self;
  final $Res Function(VerificationErrorState) _then;

/// Create a copy of VerificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(VerificationErrorState(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
