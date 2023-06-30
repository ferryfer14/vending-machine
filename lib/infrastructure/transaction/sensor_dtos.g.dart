// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sensor_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SensorModelDto _$$_SensorModelDtoFromJson(Map<String, dynamic> json) =>
    _$_SensorModelDto(
      id: json['id'] as int?,
      title: json['title'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      value: json['value'] as bool?,
      slotName: json['slot_name'] as int?,
      sensorCategoryDto: json['category'] == null
          ? null
          : SensorCategoryDto.fromJson(
              json['category'] as Map<String, dynamic>),
      slot: json['slot'] as int?,
    );

Map<String, dynamic> _$$_SensorModelDtoToJson(_$_SensorModelDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'code': instance.code,
      'description': instance.description,
      'value': instance.value,
      'slot_name': instance.slotName,
      'category': instance.sensorCategoryDto,
      'slot': instance.slot,
    };
