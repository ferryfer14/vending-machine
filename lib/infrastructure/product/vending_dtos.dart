// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:standart_project/domain/product/vending_model.dart';
import '../../common/functions/app_functions.dart';
import '../../domain/product/product_model.dart';

part 'vending_dtos.freezed.dart';
part 'vending_dtos.g.dart';

@freezed
class VendingModelDto with _$VendingModelDto {
  const VendingModelDto._();

  const factory VendingModelDto(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'vending_id') String? vending_id,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'row_slot') int? row_slot,
      @JsonKey(name: 'col_slot') int? col_slot,
      @JsonKey(name: 'status') String? status}) = _VendingModelDto;

  factory VendingModelDto.fromJson(Map<String, dynamic> json) =>
      _$VendingModelDtoFromJson(json);

  factory VendingModelDto.fromDomain(VendingModel data) => VendingModelDto(
      id: data.id,
      name: data.name,
      vending_id: data.vending_id,
      address: data.address,
      row_slot: data.row_slot,
      col_slot: data.col_slot,
      status: data.status);

  VendingModel toDomain() {
    return VendingModel(
        id: id ?? 0,
        name: name ?? '',
        vending_id: vending_id ?? '',
        address: address ?? '',
        row_slot: row_slot ?? 0,
        col_slot: col_slot ?? 0,
        status: status ?? '');
  }
}
