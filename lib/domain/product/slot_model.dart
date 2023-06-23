import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:standart_project/domain/product/product_model.dart';
import 'package:standart_project/domain/product/vending_model.dart';

part 'slot_model.freezed.dart';

@freezed
class SlotModel with _$SlotModel {
  const SlotModel._();

  const factory SlotModel(
      {int? id,
      String? name,
      ProductModel? product,
      VendingModel? vending,
      int? price,
      int? stock,
      int? statusDrop,
      int? amount}) = _SlotModel;

  factory SlotModel.empty() => SlotModel(
      id: 0,
      name: '',
      product: ProductModel.empty(),
      vending: VendingModel.empty(),
      price: 0,
      stock: 0,
      statusDrop: 0,
      amount: 0);
}
