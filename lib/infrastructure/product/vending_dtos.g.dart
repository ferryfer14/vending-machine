// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vending_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VendingModelDto _$$_VendingModelDtoFromJson(Map<String, dynamic> json) =>
    _$_VendingModelDto(
      id: json['id'] as int?,
      name: json['name'] as String?,
      vending_id: json['vending_id'] as String?,
      address: json['address'] as String?,
      row_slot: json['row_slot'] as int?,
      col_slot: json['col_slot'] as int?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$_VendingModelDtoToJson(_$_VendingModelDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'vending_id': instance.vending_id,
      'address': instance.address,
      'row_slot': instance.row_slot,
      'col_slot': instance.col_slot,
      'status': instance.status,
    };
