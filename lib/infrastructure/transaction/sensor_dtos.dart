// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:standart_project/domain/sensor/sensor_category_model.dart';
import 'package:standart_project/infrastructure/transaction/sensor_category_dtos.dart';
import '../../domain/sensor/sensor_model.dart';

part 'sensor_dtos.freezed.dart';
part 'sensor_dtos.g.dart';

@freezed
class SensorModelDto with _$SensorModelDto {
  const SensorModelDto._();

  const factory SensorModelDto(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'code') String? code,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'value') bool? value,
      @JsonKey(name: 'slot_name') int? slotName,
      @JsonKey(name: 'category') SensorCategoryDto? sensorCategoryDto,
      @JsonKey(name: 'slot') int? slot}) = _SensorModelDto;

  factory SensorModelDto.fromJson(Map<String, dynamic> json) =>
      _$SensorModelDtoFromJson(json);

  factory SensorModelDto.fromDomain(SensorModel data) => SensorModelDto(
      id: data.id,
      title: data.title,
      code: data.code,
      description: data.description,
      value: data.value,
      slotName: data.slotName,
      slot: data.slot);

  SensorModel toDomain() {
    return SensorModel(
        id: id ?? 0,
        title: title ?? '',
        code: code ?? '',
        sensorCategoryModel: sensorCategoryDto?.toDomain() ?? SensorCategoryModel.empty(),
        description: description ?? '',
        value: value ?? false,
        slot: slot ?? 0);
  }
}
