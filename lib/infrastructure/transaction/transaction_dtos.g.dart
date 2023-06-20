// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionModelDto _$$_TransactionModelDtoFromJson(
        Map<String, dynamic> json) =>
    _$_TransactionModelDto(
      id: json['id'] as int?,
      transaction_code: json['transaction_code'] as String?,
      paymentModelDto: json['payment'] == null
          ? null
          : PaymentModelDto.fromJson(json['payment'] as Map<String, dynamic>),
      total_amount: json['total_amount'] as int?,
      total_cost: json['total_cost'] as int?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$_TransactionModelDtoToJson(
        _$_TransactionModelDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'transaction_code': instance.transaction_code,
      'payment': instance.paymentModelDto,
      'total_amount': instance.total_amount,
      'total_cost': instance.total_cost,
      'status': instance.status,
    };
