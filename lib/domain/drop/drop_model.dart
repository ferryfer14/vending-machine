import 'package:freezed_annotation/freezed_annotation.dart';

import '../product/product_model.dart';

part 'drop_model.freezed.dart';

@freezed
class DropModel with _$DropModel {
  const DropModel._();

  const factory DropModel(
      {int? slot_number,
      int? slot,
      ProductModel? product,
      int? amount,
      int? dropped,
      int? statusDrop,
      int? quantity_success,
      int? quantity_error}) = _DropModel;

  factory DropModel.empty() => DropModel(
      slot_number: 0,
      slot: 0,
      product: ProductModel.empty(),
      amount: 0,
      dropped: 0,
      statusDrop: 0,
      quantity_success: 0,
      quantity_error: 0);
}
