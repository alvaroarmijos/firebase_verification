// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code_validation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CodeValidation _$CodeValidationFromJson(Map<String, dynamic> json) =>
    _CodeValidation(
      uid: json['uid'] as String,
      email: json['email'] as String,
      code: (json['code'] as num).toInt(),
    );

Map<String, dynamic> _$CodeValidationToJson(_CodeValidation instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'code': instance.code,
    };
