// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../common/functions/app_functions.dart';
import '../../domain/product/product_model.dart';

part 'product_dtos.freezed.dart';
part 'product_dtos.g.dart';

@freezed
class ProductModelDto with _$ProductModelDto {
  const ProductModelDto._();

  const factory ProductModelDto(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'price') int? price,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'image_url') String? image,
      @JsonKey(name: 'stock') int? stock,
      @JsonKey(name: 'amount') int? amount}) = _ProductModelDto;

  factory ProductModelDto.fromJson(Map<String, dynamic> json) =>
      _$ProductModelDtoFromJson(json);

  factory ProductModelDto.fromDomain(ProductModel data) => ProductModelDto(
      id: data.id,
      name: data.name,
      price: data.price,
      description: data.description,
      image: data.image,
      stock: data.stock,
      amount: data.amount);

  ProductModel toDomain() {
    return ProductModel(
        id: id ?? 0,
        name: name ?? '',
        price: price ?? 0,
        description: description ?? '',
        image: image ?? '',
        stock: stock ?? 0,
        amount: amount ?? 0);
  }
}
