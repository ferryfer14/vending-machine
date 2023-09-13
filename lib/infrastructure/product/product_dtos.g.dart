// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModelDto _$$_ProductModelDtoFromJson(Map<String, dynamic> json) =>
    _$_ProductModelDto(
      id: json['id'] as int?,
      name: json['name'] as String?,
      price: json['price'] as int?,
      description: json['description'] as String?,
      image: json['image_url'] as String?,
      stock: json['stock'] as int?,
      amount: json['amount'] as int?,
    );

Map<String, dynamic> _$$_ProductModelDtoToJson(_$_ProductModelDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'description': instance.description,
      'image_url': instance.image,
      'stock': instance.stock,
      'amount': instance.amount,
    };
