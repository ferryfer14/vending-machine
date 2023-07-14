// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refund_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RefundModelDto _$$_RefundModelDtoFromJson(Map<String, dynamic> json) =>
    _$_RefundModelDto(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      qrString: json['qr_string'] as String?,
      inGame: json['in_game'] as bool?,
      gameModelDto: json['game'] == null
          ? null
          : GameModelDto.fromJson(json['game'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RefundModelDtoToJson(_$_RefundModelDto instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'qr_string': instance.qrString,
      'in_game': instance.inGame,
      'game': instance.gameModelDto,
    };
