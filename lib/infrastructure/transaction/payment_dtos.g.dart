// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentModelDto _$$_PaymentModelDtoFromJson(Map<String, dynamic> json) =>
    _$_PaymentModelDto(
      id: json['id'] as int?,
      xendit_id: json['xendit_id'] as String?,
      external_id: json['external_id'] as String?,
      amount: json['amount'] as int?,
      qr_string: json['qr_string'] as String?,
      callback_url: json['callback_url'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$_PaymentModelDtoToJson(_$_PaymentModelDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'xendit_id': instance.xendit_id,
      'external_id': instance.external_id,
      'amount': instance.amount,
      'qr_string': instance.qr_string,
      'callback_url': instance.callback_url,
      'status': instance.status,
    };
