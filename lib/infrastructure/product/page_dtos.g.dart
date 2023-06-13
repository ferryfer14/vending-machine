// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PageModelDto _$$_PageModelDtoFromJson(Map<String, dynamic> json) =>
    _$_PageModelDto(
      slotDto: (json['content'] as List<dynamic>?)
          ?.map((e) => SlotModelDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      total_pages: json['total_pages'] as int?,
      last: json['last'] as bool?,
    );

Map<String, dynamic> _$$_PageModelDtoToJson(_$_PageModelDto instance) =>
    <String, dynamic>{
      'content': instance.slotDto,
      'total_pages': instance.total_pages,
      'last': instance.last,
    };
