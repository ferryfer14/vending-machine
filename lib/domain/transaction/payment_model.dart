import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:standart_project/domain/product/product_model.dart';
import 'package:standart_project/domain/product/vending_model.dart';

part 'payment_model.freezed.dart';

@freezed
class PaymentModel with _$PaymentModel {
  const PaymentModel._();

  const factory PaymentModel(
      {int? id,
      String? xendit_id,
      String? external_id,
      int? amount,
      String? qr_string,
      String? callback_url,
      String? status}) = _PaymentModel;

  factory PaymentModel.empty() => PaymentModel(
      id: 0,
      xendit_id: '',
      external_id: '',
      amount: 0,
      qr_string: '',
      callback_url: '',
      status: '');
}
