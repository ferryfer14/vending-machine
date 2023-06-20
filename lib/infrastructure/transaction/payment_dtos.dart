// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/transaction/payment_model.dart';

part 'payment_dtos.freezed.dart';
part 'payment_dtos.g.dart';

@freezed
class PaymentModelDto with _$PaymentModelDto {
  const PaymentModelDto._();

  const factory PaymentModelDto(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'xendit_id') String? xendit_id,
      @JsonKey(name: 'external_id') String? external_id,
      @JsonKey(name: 'amount') int? amount,
      @JsonKey(name: 'qr_string') String? qr_string,
      @JsonKey(name: 'callback_url') String? callback_url,
      @JsonKey(name: 'status') String? status}) = _PaymentModelDto;

  factory PaymentModelDto.fromJson(Map<String, dynamic> json) =>
      _$PaymentModelDtoFromJson(json);

  PaymentModel toDomain() {
    return PaymentModel(
        id: id ?? 0,
        xendit_id: xendit_id ?? '',
        external_id: external_id ?? '',
        amount: amount ?? 0,
        qr_string: qr_string ?? '',
        callback_url: callback_url ?? '',
        status: status ?? '');
  }
}
