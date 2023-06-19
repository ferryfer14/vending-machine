// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slot_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SlotModelDto _$$_SlotModelDtoFromJson(Map<String, dynamic> json) =>
    _$_SlotModelDto(
      id: json['id'] as int?,
      name: json['name'] as String?,
      product: json['product'] == null
          ? null
          : ProductModelDto.fromJson(json['product'] as Map<String, dynamic>),
      vending: json['vending'] == null
          ? null
          : VendingModelDto.fromJson(json['vending'] as Map<String, dynamic>),
      price: json['price'] as int?,
      stock: json['stock'] as int?,
      amount: json['amount'] as int?,
    );

Map<String, dynamic> _$$_SlotModelDtoToJson(_$_SlotModelDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'product': instance.product,
      'vending': instance.vending,
      'price': instance.price,
      'stock': instance.stock,
      'amount': instance.amount,
    };
