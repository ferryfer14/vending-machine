import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';

@freezed
class ProductModel with _$ProductModel {
  const ProductModel._();

  const factory ProductModel(
      {int? id,
      String? name,
      int? price,
      String? description,
      String? image,
      int? stock,
      int? amount}) = _ProductModel;

  factory ProductModel.empty() => const ProductModel(
      id: 0,
      name: '',
      price: 0,
      description: '',
      image: '',
      stock: 0,
      amount: 0);
}
