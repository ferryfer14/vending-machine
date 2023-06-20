import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:standart_project/domain/product/product_model.dart';
import 'package:standart_project/domain/product/vending_model.dart';
import 'package:standart_project/domain/transaction/payment_model.dart';

part 'transaction_model.freezed.dart';

@freezed
class TransactionModel with _$TransactionModel {
  const TransactionModel._();

  const factory TransactionModel(
      {int? id,
      String? transaction_code,
      PaymentModel? payment,
      int? total_amount,
      int? total_cost,
      String? status}) = _TransactionModel;

  factory TransactionModel.empty() => TransactionModel(
      id: 0,
      transaction_code: '',
      payment: PaymentModel.empty(),
      total_amount: 0,
      total_cost: 0,
      status: '');
}
