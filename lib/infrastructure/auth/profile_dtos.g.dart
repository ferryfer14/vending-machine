// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileModelDto _$$_ProfileModelDtoFromJson(Map<String, dynamic> json) =>
    _$_ProfileModelDto(
      id: json['id'] as int?,
      username: json['username'] as String?,
      license_plate: json['license_plate'] == null
          ? null
          : LicensePlateModelDto.fromJson(
              json['license_plate'] as Map<String, dynamic>),
      merchant: json['merchant'] == null
          ? null
          : MerchantModelDto.fromJson(json['merchant'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProfileModelDtoToJson(_$_ProfileModelDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'license_plate': instance.license_plate,
      'merchant': instance.merchant,
    };
