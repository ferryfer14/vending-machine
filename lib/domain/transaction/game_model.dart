import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/value_objects.dart';

part 'game_model.freezed.dart';

@freezed
class GameModel with _$GameModel {
  const GameModel._();

  const factory GameModel(
      {NumericId? id,
      StringSingleLine? gameTitle,
      StringUrl? gameUrl,
      bool? status}) = _GameModel;

  factory GameModel.empty() => GameModel(
      id: NumericId(0),
      gameTitle: StringSingleLine(''),
      gameUrl: StringUrl(''),
      status: false);
}
