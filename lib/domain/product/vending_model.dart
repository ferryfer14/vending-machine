import 'package:freezed_annotation/freezed_annotation.dart';

part 'vending_model.freezed.dart';

@freezed
class VendingModel with _$VendingModel {
  const VendingModel._();

  const factory VendingModel(
      {int? id,
      String? name,
      String? vending_id,
      String? address,
      int? row_slot,
      int? col_slot,
      String? status}) = _VendingModel;

  factory VendingModel.empty() => const VendingModel(
      id: 0,
      name: '',
      vending_id: '',
      address: '',
      row_slot: 0,
      col_slot: 0,
      status: '');
}
