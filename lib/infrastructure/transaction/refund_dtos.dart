// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:standart_project/domain/transaction/game_model.dart';
import '../../domain/core/value_objects.dart';
import '../../domain/transaction/refund_model.dart';
import 'game_dtos.dart';

part 'refund_dtos.freezed.dart';
part 'refund_dtos.g.dart';

@freezed
class RefundModelDto with _$RefundModelDto {
  const RefundModelDto._();

  const factory RefundModelDto(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'qr_string') String? qrString,
      @JsonKey(name: 'in_game') bool? inGame,
      @JsonKey(name: 'game') GameModelDto? gameModelDto}) = _RefundModelDto;

  factory RefundModelDto.fromJson(Map<String, dynamic> json) =>
      _$RefundModelDtoFromJson(json);

  RefundModel toDomain() {
    return RefundModel(
        status: status ?? false,
        message: StringSingleLine(message ?? ''),
        qrString: StringSingleLine(qrString ?? ''),
        inGame: inGame ?? false,
        gameModel: gameModelDto == null
            ? GameModel.empty()
            : gameModelDto!.toDomain());
  }
}
