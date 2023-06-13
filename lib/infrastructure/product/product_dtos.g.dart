// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModelDto _$$_ProductModelDtoFromJson(Map<String, dynamic> json) =>
    _$_ProductModelDto(
      id: json['id'] as int?,
      name: json['name'] as String?,
      sku: json['sku'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$_ProductModelDtoToJson(_$_ProductModelDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sku': instance.sku,
      'description': instance.description,
      'image': instance.image,
    };
