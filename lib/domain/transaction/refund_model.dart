import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:standart_project/domain/core/value_objects.dart';

import 'game_model.dart';

part 'refund_model.freezed.dart';

@freezed
class RefundModel with _$RefundModel {
  const RefundModel._();

  const factory RefundModel(
      {bool? status,
      StringSingleLine? message,
      StringSingleLine? qrString,
      bool? inGame,
      GameModel? gameModel}) = _RefundModel;

  factory RefundModel.empty() => RefundModel(
      status: false,
      message: StringSingleLine(''),
      qrString: StringSingleLine(''),
      inGame: false,
      gameModel: GameModel.empty());
}
