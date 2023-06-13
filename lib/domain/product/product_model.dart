import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';

@freezed
class ProductModel with _$ProductModel {
  const ProductModel._();

  const factory ProductModel(
      {int? id, String? name, String? sku, String? description, String? image}) = _ProductModel;

  factory ProductModel.empty() =>
      const ProductModel(id: 0, name: '', sku: '', description: '', image: '');
}
