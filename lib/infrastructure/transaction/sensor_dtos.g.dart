// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sensor_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SensorModelDto _$$_SensorModelDtoFromJson(Map<String, dynamic> json) =>
    _$_SensorModelDto(
      code: json['code'] as String?,
      description: json['description'] as String?,
      value: json['value'] as bool?,
      slotName: json['slot_name'] as int?,
      slot: json['slot'] as int?,
    );

Map<String, dynamic> _$$_SensorModelDtoToJson(_$_SensorModelDto instance) =>
    <String, dynamic>{
      'code': instance.code,
      'description': instance.description,
      'value': instance.value,
      'slot_name': instance.slotName,
      'slot': instance.slot,
    };
