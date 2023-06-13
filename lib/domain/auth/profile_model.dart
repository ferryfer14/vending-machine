import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:standart_project/domain/auth/license_plate_model.dart';
import 'package:standart_project/domain/auth/merchant_model.dart';
import 'package:standart_project/domain/core/failures.dart';

part 'profile_model.freezed.dart';

@freezed
class ProfileModel with _$ProfileModel {
  const ProfileModel._();

  const factory ProfileModel(
      {required int id,
      required String username,
      required LicensePlateModel license_plate,
      required MerchantModel merchant}) = _ProfileModel;

  factory ProfileModel.empty() => ProfileModel(
      id: 0,
      username: '',
      license_plate: LicensePlateModel.empty(),
      merchant: MerchantModel.empty());
}
