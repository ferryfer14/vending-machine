// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:standart_project/domain/product/product_model.dart';
import 'package:standart_project/domain/product/vending_model.dart';
import 'package:standart_project/infrastructure/product/product_dtos.dart';
import 'package:standart_project/infrastructure/product/vending_dtos.dart';
import '../../common/functions/app_functions.dart';
import '../../domain/product/slot_model.dart';

part 'slot_dtos.freezed.dart';
part 'slot_dtos.g.dart';

@freezed
class SlotModelDto with _$SlotModelDto {
  const SlotModelDto._();

  const factory SlotModelDto({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'product') ProductModelDto? product,
    @JsonKey(name: 'vending') VendingModelDto? vending,
    @JsonKey(name: 'price') int? price,
    @JsonKey(name: 'stock') int? stock,
  }) = _SlotModelDto;

  factory SlotModelDto.fromJson(Map<String, dynamic> json) =>
      _$SlotModelDtoFromJson(json);

  SlotModel toDomain() {
    return SlotModel(
        id: id ?? 0,
        name: name ?? '',
        product: product?.toDomain() ?? ProductModel.empty(),
        vending: vending?.toDomain() ?? VendingModel.empty(),
        price: price ?? 0,
        stock: stock ?? 0,);
  }
}
