// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/drop/drop_model.dart';

part 'drop_dtos.freezed.dart';
part 'drop_dtos.g.dart';

@freezed
class DropModelDto with _$DropModelDto {
  const DropModelDto._();

  const factory DropModelDto(
      {@JsonKey(name: 'slot_number') int? slot_number,
      @JsonKey(name: 'slot') int? slot,
      @JsonKey(name: 'amount') int? amount,
      @JsonKey(name: 'quantity_success') int? quantity_success,
      @JsonKey(name: 'quantity_error') int? quantity_error}) = _DropModelDto;

  factory DropModelDto.fromJson(Map<String, dynamic> json) =>
      _$DropModelDtoFromJson(json);

  factory DropModelDto.fromDomain(DropModel data) => DropModelDto(
        slot_number: data.slot_number,
        slot: data.slot,
        amount: data.amount,
        quantity_success: data.quantity_success,
        quantity_error: data.quantity_error,
      );

  DropModel toDomain() {
    return DropModel(
        slot_number: slot_number ?? 0,
        slot: slot ?? 0,
        amount: amount ?? 0,
        quantity_success: quantity_success ?? 0,
        quantity_error: quantity_error ?? 0);
  }
}
