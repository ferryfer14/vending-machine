// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:standart_project/domain/product/product_model.dart';
import 'package:standart_project/domain/product/vending_model.dart';
import 'package:standart_project/domain/transaction/payment_model.dart';
import 'package:standart_project/infrastructure/product/product_dtos.dart';
import 'package:standart_project/infrastructure/product/vending_dtos.dart';
import 'package:standart_project/infrastructure/transaction/payment_dtos.dart';
import '../../common/functions/app_functions.dart';
import '../../domain/product/slot_model.dart';
import '../../domain/transaction/transaction_model.dart';

part 'transaction_dtos.freezed.dart';
part 'transaction_dtos.g.dart';

@freezed
class TransactionModelDto with _$TransactionModelDto {
  const TransactionModelDto._();

  const factory TransactionModelDto({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'transaction_code') String? transaction_code,
    @JsonKey(name: 'payment') PaymentModelDto? paymentModelDto,
    @JsonKey(name: 'total_amount') int? total_amount,
    @JsonKey(name: 'total_cost') int? total_cost,
    @JsonKey(name: 'status') String? status,
  }) = _TransactionModelDto;

  factory TransactionModelDto.fromJson(Map<String, dynamic> json) =>
      _$TransactionModelDtoFromJson(json);

  factory TransactionModelDto.fromDomain(TransactionModel data) => TransactionModelDto(
        id: data.id,
        transaction_code: data.transaction_code,
        total_amount: data.total_amount,
        total_cost: data.total_cost,
        status: data.status,
      );

  TransactionModel toDomain() {
    return TransactionModel(
        id: id ?? 0,
        transaction_code: transaction_code ?? '',
        payment: paymentModelDto?.toDomain() ?? PaymentModel.empty(),
        total_amount: total_amount ?? 0,
        total_cost: total_cost ?? 0,
        status: status ?? '');
  }
}
