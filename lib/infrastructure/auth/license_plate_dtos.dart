// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:standart_project/domain/auth/auth_model.dart';
import 'package:standart_project/domain/auth/license_plate_model.dart';
import 'package:standart_project/domain/auth/merchant_model.dart';
import 'package:standart_project/domain/auth/profile_model.dart';
import 'package:standart_project/infrastructure/auth/merchant_dtos.dart';
import '../../common/functions/app_functions.dart';

part 'license_plate_dtos.freezed.dart';
part 'license_plate_dtos.g.dart';

@freezed
class LicensePlateModelDto with _$LicensePlateModelDto {
  const LicensePlateModelDto._();

  const factory LicensePlateModelDto(
          {@JsonKey(name: 'id') int? id,
          @JsonKey(name: 'plate_number') String? plate_number,
          @JsonKey(name: 'barcode') String? barcode,
          @JsonKey(name: 'battery_type') String? battery_type,
          @JsonKey(name: 'merchant') MerchantModelDto? merchant}) =
      _LicensePlateModelDto;

  factory LicensePlateModelDto.fromJson(Map<String, dynamic> json) =>
      _$LicensePlateModelDtoFromJson(json);

  LicensePlateModel toDomain() {
    return LicensePlateModel(
        id: id ?? 0,
        barcode: barcode ?? "",
        plate_number: plate_number ?? "",
        battery_type: battery_type ?? "",
        merchant: merchant?.toDomain() ?? MerchantModel.empty());
  }
}
