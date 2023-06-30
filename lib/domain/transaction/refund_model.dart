import 'package:freezed_annotation/freezed_annotation.dart';

part 'refund_model.freezed.dart';

@freezed
class RefundModel with _$RefundModel {
  const RefundModel._();

  const factory RefundModel(
      {bool? status, String? message, String? qr_string}) = _RefundModel;

  factory RefundModel.empty() =>
      const RefundModel(status: false, message: '', qr_string: '');
}
