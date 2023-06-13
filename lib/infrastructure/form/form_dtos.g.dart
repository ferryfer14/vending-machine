// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FormModelDto _$$_FormModelDtoFromJson(Map<String, dynamic> json) =>
    _$_FormModelDto(
      created_at: json['created_at'] as String?,
      fullname: json['fullname'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$$_FormModelDtoToJson(_$_FormModelDto instance) =>
    <String, dynamic>{
      'created_at': instance.created_at,
      'fullname': instance.fullname,
      'email': instance.email,
      'phone': instance.phone,
    };
