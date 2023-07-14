// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GameModelDto _$GameModelDtoFromJson(Map<String, dynamic> json) {
  return _GameModelDto.fromJson(json);
}

/// @nodoc
mixin _$GameModelDto {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'game_title')
  String? get gameTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'game_url')
  String? get gameUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  bool? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameModelDtoCopyWith<GameModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameModelDtoCopyWith<$Res> {
  factory $GameModelDtoCopyWith(
          GameModelDto value, $Res Function(GameModelDto) then) =
      _$GameModelDtoCopyWithImpl<$Res, GameModelDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'game_title') String? gameTitle,
      @JsonKey(name: 'game_url') String? gameUrl,
      @JsonKey(name: 'status') bool? status});
}

/// @nodoc
class _$GameModelDtoCopyWithImpl<$Res, $Val extends GameModelDto>
    implements $GameModelDtoCopyWith<$Res> {
  _$GameModelDtoCopyWithImpl(this._value, this._then);

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
              as int?,
      gameTitle: freezed == gameTitle
          ? _value.gameTitle
          : gameTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      gameUrl: freezed == gameUrl
          ? _value.gameUrl
          : gameUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GameModelDtoCopyWith<$Res>
    implements $GameModelDtoCopyWith<$Res> {
  factory _$$_GameModelDtoCopyWith(
          _$_GameModelDto value, $Res Function(_$_GameModelDto) then) =
      __$$_GameModelDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'game_title') String? gameTitle,
      @JsonKey(name: 'game_url') String? gameUrl,
      @JsonKey(name: 'status') bool? status});
}

/// @nodoc
class __$$_GameModelDtoCopyWithImpl<$Res>
    extends _$GameModelDtoCopyWithImpl<$Res, _$_GameModelDto>
    implements _$$_GameModelDtoCopyWith<$Res> {
  __$$_GameModelDtoCopyWithImpl(
      _$_GameModelDto _value, $Res Function(_$_GameModelDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? gameTitle = freezed,
    Object? gameUrl = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_GameModelDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      gameTitle: freezed == gameTitle
          ? _value.gameTitle
          : gameTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      gameUrl: freezed == gameUrl
          ? _value.gameUrl
          : gameUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GameModelDto extends _GameModelDto {
  const _$_GameModelDto(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'game_title') this.gameTitle,
      @JsonKey(name: 'game_url') this.gameUrl,
      @JsonKey(name: 'status') this.status})
      : super._();

  factory _$_GameModelDto.fromJson(Map<String, dynamic> json) =>
      _$$_GameModelDtoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'game_title')
  final String? gameTitle;
  @override
  @JsonKey(name: 'game_url')
  final String? gameUrl;
  @override
  @JsonKey(name: 'status')
  final bool? status;

  @override
  String toString() {
    return 'GameModelDto(id: $id, gameTitle: $gameTitle, gameUrl: $gameUrl, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameModelDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.gameTitle, gameTitle) ||
                other.gameTitle == gameTitle) &&
            (identical(other.gameUrl, gameUrl) || other.gameUrl == gameUrl) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, gameTitle, gameUrl, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GameModelDtoCopyWith<_$_GameModelDto> get copyWith =>
      __$$_GameModelDtoCopyWithImpl<_$_GameModelDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GameModelDtoToJson(
      this,
    );
  }
}

abstract class _GameModelDto extends GameModelDto {
  const factory _GameModelDto(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'game_title') final String? gameTitle,
      @JsonKey(name: 'game_url') final String? gameUrl,
      @JsonKey(name: 'status') final bool? status}) = _$_GameModelDto;
  const _GameModelDto._() : super._();

  factory _GameModelDto.fromJson(Map<String, dynamic> json) =
      _$_GameModelDto.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'game_title')
  String? get gameTitle;
  @override
  @JsonKey(name: 'game_url')
  String? get gameUrl;
  @override
  @JsonKey(name: 'status')
  bool? get status;
  @override
  @JsonKey(ignore: true)
  _$$_GameModelDtoCopyWith<_$_GameModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}
