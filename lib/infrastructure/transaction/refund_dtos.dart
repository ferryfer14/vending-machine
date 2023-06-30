// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/transaction/refund_model.dart';

part 'refund_dtos.freezed.dart';
part 'refund_dtos.g.dart';

@freezed
class RefundModelDto with _$RefundModelDto {
  const RefundModelDto._();

  const factory RefundModelDto({
    @JsonKey(name: 'status') bool? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'qr_string') String? qr_string,
  }) = _RefundModelDto;

  factory RefundModelDto.fromJson(Map<String, dynamic> json) =>
      _$RefundModelDtoFromJson(json);

  RefundModel toDomain() {
    return RefundModel(
        status: status ?? false,
        message: message ?? '',
        qr_string: qr_string ?? '');
  }
}
