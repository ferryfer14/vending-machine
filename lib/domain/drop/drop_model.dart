import 'package:freezed_annotation/freezed_annotation.dart';

part 'drop_model.freezed.dart';

@freezed
class DropModel with _$DropModel {
  const DropModel._();

  const factory DropModel(
      {int? slot_number,
      int? slot,
      int? amount,
      int? quantity_success,
      int? quantity_error}) = _DropModel;

  factory DropModel.empty() => DropModel(
      slot_number: 0,
      slot: 0,
      amount: 0,
      quantity_success: 0,
      quantity_error: 0);
}
