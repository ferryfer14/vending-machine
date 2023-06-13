// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:standart_project/domain/auth/auth_model.dart';
import 'package:standart_project/domain/auth/license_plate_model.dart';
import 'package:standart_project/domain/auth/merchant_model.dart';
import 'package:standart_project/domain/auth/profile_model.dart';
import '../../common/functions/app_functions.dart';

part 'merchant_dtos.freezed.dart';
part 'merchant_dtos.g.dart';

@freezed
class MerchantModelDto with _$MerchantModelDto {
  const MerchantModelDto._();

  const factory MerchantModelDto(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'merchant_id') String? merchant_id,
      @JsonKey(name: 'merchant_name') String? merchant_name,
      @JsonKey(name: 'status') bool? status}) = _MerchantModelDto;

  factory MerchantModelDto.fromJson(Map<String, dynamic> json) =>
      _$MerchantModelDtoFromJson(json);

  MerchantModel toDomain() {
    return MerchantModel(
        id: id ?? 0,
        merchant_id: merchant_id ?? "",
        merchant_name: merchant_name ?? "",
        status: status ?? false);
  }
}
