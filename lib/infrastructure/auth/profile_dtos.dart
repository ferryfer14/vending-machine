// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:standart_project/domain/auth/auth_model.dart';
import 'package:standart_project/domain/auth/license_plate_model.dart';
import 'package:standart_project/domain/auth/merchant_model.dart';
import 'package:standart_project/domain/auth/profile_model.dart';
import 'package:standart_project/infrastructure/auth/license_plate_dtos.dart';
import 'package:standart_project/infrastructure/auth/merchant_dtos.dart';
import '../../common/functions/app_functions.dart';

part 'profile_dtos.freezed.dart';
part 'profile_dtos.g.dart';

@freezed
class ProfileModelDto with _$ProfileModelDto {
  const ProfileModelDto._();

  const factory ProfileModelDto(
          {@JsonKey(name: 'id') int? id,
          @JsonKey(name: 'username') String? username,
          @JsonKey(name: 'license_plate') LicensePlateModelDto? license_plate,
          @JsonKey(name: 'merchant') MerchantModelDto? merchant}) =
      _ProfileModelDto;

  factory ProfileModelDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelDtoFromJson(json);

  ProfileModel toDomain() {
    return ProfileModel(
        id: id ?? 0,
        username: username ?? "",
        license_plate: license_plate?.toDomain() ?? LicensePlateModel.empty(),
        merchant: merchant?.toDomain() ?? MerchantModel.empty());
  }
}
