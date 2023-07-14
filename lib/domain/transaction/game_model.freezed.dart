// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GameModel {
  NumericId? get id => throw _privateConstructorUsedError;
  StringSingleLine? get gameTitle => throw _privateConstructorUsedError;
  StringUrl? get gameUrl => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameModelCopyWith<GameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameModelCopyWith<$Res> {
  factory $GameModelCopyWith(GameModel value, $Res Function(GameModel) then) =
      _$GameModelCopyWithImpl<$Res, GameModel>;
  @useResult
  $Res call(
      {NumericId? id,
      StringSingleLine? gameTitle,
      StringUrl? gameUrl,
      bool? status});
}

/// @nodoc
class _$GameModelCopyWithImpl<$Res, $Val extends GameModel>
    implements $GameModelCopyWith<$Res> {
  _$GameModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? gameTitle = freezed,
    Object? gameUrl = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as NumericId?,
      gameTitle: freezed == gameTitle
          ? _value.gameTitle
          : gameTitle // ignore: cast_nullable_to_non_nullable
              as StringSingleLine?,
      gameUrl: freezed == gameUrl
          ? _value.gameUrl
          : gameUrl // ignore: cast_nullable_to_non_nullable
              as StringUrl?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GameModelCopyWith<$Res> implements $GameModelCopyWith<$Res> {
  factory _$$_GameModelCopyWith(
          _$_GameModel value, $Res Function(_$_GameModel) then) =
      __$$_GameModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NumericId? id,
      StringSingleLine? gameTitle,
      StringUrl? gameUrl,
      bool? status});
}

/// @nodoc
class __$$_GameModelCopyWithImpl<$Res>
    extends _$GameModelCopyWithImpl<$Res, _$_GameModel>
    implements _$$_GameModelCopyWith<$Res> {
  __$$_GameModelCopyWithImpl(
      _$_GameModel _value, $Res Function(_$_GameModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? gameTitle = freezed,
    Object? gameUrl = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_GameModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as NumericId?,
      gameTitle: freezed == gameTitle
          ? _value.gameTitle
          : gameTitle // ignore: cast_nullable_to_non_nullable
              as StringSingleLine?,
      gameUrl: freezed == gameUrl
          ? _value.gameUrl
          : gameUrl // ignore: cast_nullable_to_non_nullable
              as StringUrl?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_GameModel extends _GameModel {
  const _$_GameModel({this.id, this.gameTitle, this.gameUrl, this.status})
      : super._();

  @override
  final NumericId? id;
  @override
  final StringSingleLine? gameTitle;
  @override
  final StringUrl? gameUrl;
  @override
  final bool? status;

  @override
  String toString() {
    return 'GameModel(id: $id, gameTitle: $gameTitle, gameUrl: $gameUrl, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.gameTitle, gameTitle) ||
                other.gameTitle == gameTitle) &&
            (identical(other.gameUrl, gameUrl) || other.gameUrl == gameUrl) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, gameTitle, gameUrl, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GameModelCopyWith<_$_GameModel> get copyWith =>
      __$$_GameModelCopyWithImpl<_$_GameModel>(this, _$identity);
}

abstract class _GameModel extends GameModel {
  const factory _GameModel(
      {final NumericId? id,
      final StringSingleLine? gameTitle,
      final StringUrl? gameUrl,
      final bool? status}) = _$_GameModel;
  const _GameModel._() : super._();

  @override
  NumericId? get id;
  @override
  StringSingleLine? get gameTitle;
  @override
  StringUrl? get gameUrl;
  @override
  bool? get status;
  @override
  @JsonKey(ignore: true)
  _$$_GameModelCopyWith<_$_GameModel> get copyWith =>
      throw _privateConstructorUsedError;
}
