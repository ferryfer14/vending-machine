// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drop_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DropModelDto _$$_DropModelDtoFromJson(Map<String, dynamic> json) =>
    _$_DropModelDto(
      slot_number: json['slot_number'] as int?,
      slot: json['slot'] as int?,
      amount: json['amount'] as int?,
      quantity_success: json['quantity_success'] as int?,
      quantity_error: json['quantity_error'] as int?,
    );

Map<String, dynamic> _$$_DropModelDtoToJson(_$_DropModelDto instance) =>
    <String, dynamic>{
      'slot_number': instance.slot_number,
      'slot': instance.slot,
      'amount': instance.amount,
      'quantity_success': instance.quantity_success,
      'quantity_error': instance.quantity_error,
    };
