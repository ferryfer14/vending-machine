import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:standart_project/domain/auth/license_plate_model.dart';
import 'package:standart_project/domain/core/failures.dart';

part 'merchant_model.freezed.dart';

@freezed
class MerchantModel with _$MerchantModel {
  const MerchantModel._();

  const factory MerchantModel(
      {required int id,
      required String merchant_id,
      required String merchant_name,
      required bool status}) = _MerchantModel;

  factory MerchantModel.empty() => const MerchantModel(
      id: 0, merchant_id: '', merchant_name: '', status: false);
}
