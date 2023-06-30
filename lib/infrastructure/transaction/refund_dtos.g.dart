// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refund_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RefundModelDto _$$_RefundModelDtoFromJson(Map<String, dynamic> json) =>
    _$_RefundModelDto(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      qr_string: json['qr_string'] as String?,
    );

Map<String, dynamic> _$$_RefundModelDtoToJson(_$_RefundModelDto instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'qr_string': instance.qr_string,
    };
