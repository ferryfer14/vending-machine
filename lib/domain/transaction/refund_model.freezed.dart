// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refund_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RefundModel {
  bool? get status => throw _privateConstructorUsedError;
  StringSingleLine? get message => throw _privateConstructorUsedError;
  StringSingleLine? get qrString => throw _privateConstructorUsedError;
  bool? get inGame => throw _privateConstructorUsedError;
  GameModel? get gameModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RefundModelCopyWith<RefundModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefundModelCopyWith<$Res> {
  factory $RefundModelCopyWith(
          RefundModel value, $Res Function(RefundModel) then) =
      _$RefundModelCopyWithImpl<$Res, RefundModel>;
  @useResult
  $Res call(
      {bool? status,
      StringSingleLine? message,
      StringSingleLine? qrString,
      bool? inGame,
      GameModel? gameModel});

  $GameModelCopyWith<$Res>? get gameModel;
}

/// @nodoc
class _$RefundModelCopyWithImpl<$Res, $Val extends RefundModel>
    implements $RefundModelCopyWith<$Res> {
  _$RefundModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? qrString = freezed,
    Object? inGame = freezed,
    Object? gameModel = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as StringSingleLine?,
      qrString: freezed == qrString
          ? _value.qrString
          : qrString // ignore: cast_nullable_to_non_nullable
              as StringSingleLine?,
      inGame: freezed == inGame
          ? _value.inGame
          : inGame // ignore: cast_nullable_to_non_nullable
              as bool?,
      gameModel: freezed == gameModel
          ? _value.gameModel
          : gameModel // ignore: cast_nullable_to_non_nullable
              as GameModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GameModelCopyWith<$Res>? get gameModel {
    if (_value.gameModel == null) {
      return null;
    }

    return $GameModelCopyWith<$Res>(_value.gameModel!, (value) {
      return _then(_value.copyWith(gameModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RefundModelCopyWith<$Res>
    implements $RefundModelCopyWith<$Res> {
  factory _$$_RefundModelCopyWith(
          _$_RefundModel value, $Res Function(_$_RefundModel) then) =
      __$$_RefundModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? status,
      StringSingleLine? message,
      StringSingleLine? qrString,
      bool? inGame,
      GameModel? gameModel});

  @override
  $GameModelCopyWith<$Res>? get gameModel;
}

/// @nodoc
class __$$_RefundModelCopyWithImpl<$Res>
    extends _$RefundModelCopyWithImpl<$Res, _$_RefundModel>
    implements _$$_RefundModelCopyWith<$Res> {
  __$$_RefundModelCopyWithImpl(
      _$_RefundModel _value, $Res Function(_$_RefundModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? qrString = freezed,
    Object? inGame = freezed,
    Object? gameModel = freezed,
  }) {
    return _then(_$_RefundModel(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as StringSingleLine?,
      qrString: freezed == qrString
          ? _value.qrString
          : qrString // ignore: cast_nullable_to_non_nullable
              as StringSingleLine?,
      inGame: freezed == inGame
          ? _value.inGame
          : inGame // ignore: cast_nullable_to_non_nullable
              as bool?,
      gameModel: freezed == gameModel
          ? _value.gameModel
          : gameModel // ignore: cast_nullable_to_non_nullable
              as GameModel?,
    ));
  }
}

/// @nodoc

class _$_RefundModel extends _RefundModel {
  const _$_RefundModel(
      {this.status, this.message, this.qrString, this.inGame, this.gameModel})
      : super._();

  @override
  final bool? status;
  @override
  final StringSingleLine? message;
  @override
  final StringSingleLine? qrString;
  @override
  final bool? inGame;
  @override
  final GameModel? gameModel;

  @override
  String toString() {
    return 'RefundModel(status: $status, message: $message, qrString: $qrString, inGame: $inGame, gameModel: $gameModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RefundModel &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.qrString, qrString) ||
                other.qrString == qrString) &&
            (identical(other.inGame, inGame) || other.inGame == inGame) &&
            (identical(other.gameModel, gameModel) ||
                other.gameModel == gameModel));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, message, qrString, inGame, gameModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RefundModelCopyWith<_$_RefundModel> get copyWith =>
      __$$_RefundModelCopyWithImpl<_$_RefundModel>(this, _$identity);
}

abstract class _RefundModel extends RefundModel {
  const factory _RefundModel(
      {final bool? status,
      final StringSingleLine? message,
      final StringSingleLine? qrString,
      final bool? inGame,
      final GameModel? gameModel}) = _$_RefundModel;
  const _RefundModel._() : super._();

  @override
  bool? get status;
  @override
  StringSingleLine? get message;
  @override
  StringSingleLine? get qrString;
  @override
  bool? get inGame;
  @override
  GameModel? get gameModel;
  @override
  @JsonKey(ignore: true)
  _$$_RefundModelCopyWith<_$_RefundModel> get copyWith =>
      throw _privateConstructorUsedError;
}
