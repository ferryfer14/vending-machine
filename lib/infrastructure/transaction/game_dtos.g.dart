// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GameModelDto _$$_GameModelDtoFromJson(Map<String, dynamic> json) =>
    _$_GameModelDto(
      id: json['id'] as int?,
      gameTitle: json['game_title'] as String?,
      gameUrl: json['game_url'] as String?,
      status: json['status'] as bool?,
    );

Map<String, dynamic> _$$_GameModelDtoToJson(_$_GameModelDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'game_title': instance.gameTitle,
      'game_url': instance.gameUrl,
      'status': instance.status,
    };
