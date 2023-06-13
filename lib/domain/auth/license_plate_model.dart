import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:standart_project/domain/auth/merchant_model.dart';
import 'package:standart_project/domain/core/failures.dart';

part 'license_plate_model.freezed.dart';

@freezed
class LicensePlateModel with _$LicensePlateModel {
  const LicensePlateModel._();

  const factory LicensePlateModel(
      {required int id,
      required String plate_number,
      required String barcode,
      required String battery_type,
      required MerchantModel merchant}) = _LicensePlateModel;

  factory LicensePlateModel.empty() => LicensePlateModel(
      id: 0,
      plate_number: '',
      barcode: '',
      battery_type: '',
      merchant: MerchantModel.empty());
}
