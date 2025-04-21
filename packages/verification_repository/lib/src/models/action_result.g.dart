// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ActionResult _$ActionResultFromJson(Map<String, dynamic> json) =>
    _ActionResult(
      success: json['success'] as bool,
      errorType: json['error_type'] as String?,
      message: json['msg'] as String?,
    );

Map<String, dynamic> _$ActionResultToJson(_ActionResult instance) =>
    <String, dynamic>{
      'success': instance.success,
      'error_type': instance.errorType,
      'msg': instance.message,
    };
