// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/sensor/sensor_category_model.dart';

part 'sensor_category_dtos.freezed.dart';
part 'sensor_category_dtos.g.dart';

@freezed
class SensorCategoryDto with _$SensorCategoryDto {
  const SensorCategoryDto._();

  const factory SensorCategoryDto(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name}) = _SensorCategoryDto;

  factory SensorCategoryDto.fromJson(Map<String, dynamic> json) =>
      _$SensorCategoryDtoFromJson(json);

  factory SensorCategoryDto.fromDomain(SensorCategoryModel data) => SensorCategoryDto(
        id: data.id,
        name: data.name
      );

  SensorCategoryModel toDomain() {
    return SensorCategoryModel(
        id: id ?? 0,
        name: name ?? '');
  }
}
