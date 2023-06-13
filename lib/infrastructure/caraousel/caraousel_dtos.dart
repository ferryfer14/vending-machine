// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:standart_project/domain/caraousel/caraousel_model.dart';
import '../../common/functions/app_functions.dart';

part 'caraousel_dtos.freezed.dart';
part 'caraousel_dtos.g.dart';

@freezed
class CaraouselModelDto with _$CaraouselModelDto {
  const CaraouselModelDto._();

  const factory CaraouselModelDto({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'images') String? images,
  }) = _CaraouselModelDto;

  factory CaraouselModelDto.fromJson(Map<String, dynamic> json) =>
      _$CaraouselModelDtoFromJson(json);

  factory CaraouselModelDto.fromDomain(CaraouselModel data) =>
      CaraouselModelDto(id: data.id, images: data.images);

  CaraouselModel toDomain() {
    return CaraouselModel(id: id ?? 0, images: images ?? '');
  }
}
