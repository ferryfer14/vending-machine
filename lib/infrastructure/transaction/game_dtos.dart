// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/core/value_objects.dart';
import '../../domain/transaction/game_model.dart';
import '../../domain/transaction/refund_model.dart';

part 'game_dtos.freezed.dart';
part 'game_dtos.g.dart';

@freezed
class GameModelDto with _$GameModelDto {
  const GameModelDto._();

  const factory GameModelDto(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'game_title') String? gameTitle,
      @JsonKey(name: 'game_url') String? gameUrl,
      @JsonKey(name: 'status') bool? status}) = _GameModelDto;

  factory GameModelDto.fromJson(Map<String, dynamic> json) =>
      _$GameModelDtoFromJson(json);

  GameModel toDomain() {
    return GameModel(
        id: NumericId(id ?? 0),
        gameTitle: StringSingleLine(gameTitle ?? ''),
        gameUrl: StringUrl(gameUrl ?? ''),
        status: status ?? false);
  }
}
