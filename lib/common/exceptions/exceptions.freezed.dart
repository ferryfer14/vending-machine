// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) serverException,
    required TResult Function(String? errorMessage) unexpectedException,
    required TResult Function(String? errorMessage) locationIsNotAllowed,
    required TResult Function() badNetworkException,
    required TResult Function() internalServerException,
    required TResult Function(String? errorMessage) unauthenticatedException,
    required TResult Function(String? errorMessage) empty,
    required TResult Function(String? errorMessage) invalid,
    required TResult Function(String? errorMessage) countingException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? errorMessage)? serverException,
    TResult? Function(String? errorMessage)? unexpectedException,
    TResult? Function(String? errorMessage)? locationIsNotAllowed,
    TResult? Function()? badNetworkException,
    TResult? Function()? internalServerException,
    TResult? Function(String? errorMessage)? unauthenticatedException,
    TResult? Function(String? errorMessage)? empty,
    TResult? Function(String? errorMessage)? invalid,
    TResult? Function(String? errorMessage)? countingException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? serverException,
    TResult Function(String? errorMessage)? unexpectedException,
    TResult Function(String? errorMessage)? locationIsNotAllowed,
    TResult Function()? badNetworkException,
    TResult Function()? internalServerException,
    TResult Function(String? errorMessage)? unauthenticatedException,
    TResult Function(String? errorMessage)? empty,
    TResult Function(String? errorMessage)? invalid,
    TResult Function(String? errorMessage)? countingException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerException value) serverException,
    required TResult Function(_UnexpectedException value) unexpectedException,
    required TResult Function(_LocationIsNotAllowed value) locationIsNotAllowed,
    required TResult Function(_BadNetworkException value) badNetworkException,
    required TResult Function(_InternalServerException value)
        internalServerException,
    required TResult Function(_UnauthenticatedException value)
        unauthenticatedException,
    required TResult Function(_EmptyException value) empty,
    required TResult Function(_InvalidException value) invalid,
    required TResult Function(_CountingException value) countingException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerException value)? serverException,
    TResult? Function(_UnexpectedException value)? unexpectedException,
    TResult? Function(_LocationIsNotAllowed value)? locationIsNotAllowed,
    TResult? Function(_BadNetworkException value)? badNetworkException,
    TResult? Function(_InternalServerException value)? internalServerException,
    TResult? Function(_UnauthenticatedException value)?
        unauthenticatedException,
    TResult? Function(_EmptyException value)? empty,
    TResult? Function(_InvalidException value)? invalid,
    TResult? Function(_CountingException value)? countingException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_UnexpectedException value)? unexpectedException,
    TResult Function(_LocationIsNotAllowed value)? locationIsNotAllowed,
    TResult Function(_BadNetworkException value)? badNetworkException,
    TResult Function(_InternalServerException value)? internalServerException,
    TResult Function(_UnauthenticatedException value)? unauthenticatedException,
    TResult Function(_EmptyException value)? empty,
    TResult Function(_InvalidException value)? invalid,
    TResult Function(_CountingException value)? countingException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppExceptionCopyWith<$Res> {
  factory $AppExceptionCopyWith(
          AppException value, $Res Function(AppException) then) =
      _$AppExceptionCopyWithImpl<$Res, AppException>;
}

/// @nodoc
class _$AppExceptionCopyWithImpl<$Res, $Val extends AppException>
    implements $AppExceptionCopyWith<$Res> {
  _$AppExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ServerExceptionCopyWith<$Res> {
  factory _$$_ServerExceptionCopyWith(
          _$_ServerException value, $Res Function(_$_ServerException) then) =
      __$$_ServerExceptionCopyWithImpl<$Res>;
  @useResult
  $Res call({String? errorMessage});
}

/// @nodoc
class __$$_ServerExceptionCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$_ServerException>
    implements _$$_ServerExceptionCopyWith<$Res> {
  __$$_ServerExceptionCopyWithImpl(
      _$_ServerException _value, $Res Function(_$_ServerException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$_ServerException(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ServerException implements _ServerException {
  const _$_ServerException({this.errorMessage});

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AppException.serverException(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerException &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServerExceptionCopyWith<_$_ServerException> get copyWith =>
      __$$_ServerExceptionCopyWithImpl<_$_ServerException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) serverException,
    required TResult Function(String? errorMessage) unexpectedException,
    required TResult Function(String? errorMessage) locationIsNotAllowed,
    required TResult Function() badNetworkException,
    required TResult Function() internalServerException,
    required TResult Function(String? errorMessage) unauthenticatedException,
    required TResult Function(String? errorMessage) empty,
    required TResult Function(String? errorMessage) invalid,
    required TResult Function(String? errorMessage) countingException,
  }) {
    return serverException(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? errorMessage)? serverException,
    TResult? Function(String? errorMessage)? unexpectedException,
    TResult? Function(String? errorMessage)? locationIsNotAllowed,
    TResult? Function()? badNetworkException,
    TResult? Function()? internalServerException,
    TResult? Function(String? errorMessage)? unauthenticatedException,
    TResult? Function(String? errorMessage)? empty,
    TResult? Function(String? errorMessage)? invalid,
    TResult? Function(String? errorMessage)? countingException,
  }) {
    return serverException?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? serverException,
    TResult Function(String? errorMessage)? unexpectedException,
    TResult Function(String? errorMessage)? locationIsNotAllowed,
    TResult Function()? badNetworkException,
    TResult Function()? internalServerException,
    TResult Function(String? errorMessage)? unauthenticatedException,
    TResult Function(String? errorMessage)? empty,
    TResult Function(String? errorMessage)? invalid,
    TResult Function(String? errorMessage)? countingException,
    required TResult orElse(),
  }) {
    if (serverException != null) {
      return serverException(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerException value) serverException,
    required TResult Function(_UnexpectedException value) unexpectedException,
    required TResult Function(_LocationIsNotAllowed value) locationIsNotAllowed,
    required TResult Function(_BadNetworkException value) badNetworkException,
    required TResult Function(_InternalServerException value)
        internalServerException,
    required TResult Function(_UnauthenticatedException value)
        unauthenticatedException,
    required TResult Function(_EmptyException value) empty,
    required TResult Function(_InvalidException value) invalid,
    required TResult Function(_CountingException value) countingException,
  }) {
    return serverException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerException value)? serverException,
    TResult? Function(_UnexpectedException value)? unexpectedException,
    TResult? Function(_LocationIsNotAllowed value)? locationIsNotAllowed,
    TResult? Function(_BadNetworkException value)? badNetworkException,
    TResult? Function(_InternalServerException value)? internalServerException,
    TResult? Function(_UnauthenticatedException value)?
        unauthenticatedException,
    TResult? Function(_EmptyException value)? empty,
    TResult? Function(_InvalidException value)? invalid,
    TResult? Function(_CountingException value)? countingException,
  }) {
    return serverException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_UnexpectedException value)? unexpectedException,
    TResult Function(_LocationIsNotAllowed value)? locationIsNotAllowed,
    TResult Function(_BadNetworkException value)? badNetworkException,
    TResult Function(_InternalServerException value)? internalServerException,
    TResult Function(_UnauthenticatedException value)? unauthenticatedException,
    TResult Function(_EmptyException value)? empty,
    TResult Function(_InvalidException value)? invalid,
    TResult Function(_CountingException value)? countingException,
    required TResult orElse(),
  }) {
    if (serverException != null) {
      return serverException(this);
    }
    return orElse();
  }
}

abstract class _ServerException implements AppException, Exception {
  const factory _ServerException({final String? errorMessage}) =
      _$_ServerException;

  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$_ServerExceptionCopyWith<_$_ServerException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnexpectedExceptionCopyWith<$Res> {
  factory _$$_UnexpectedExceptionCopyWith(_$_UnexpectedException value,
          $Res Function(_$_UnexpectedException) then) =
      __$$_UnexpectedExceptionCopyWithImpl<$Res>;
  @useResult
  $Res call({String? errorMessage});
}

/// @nodoc
class __$$_UnexpectedExceptionCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$_UnexpectedException>
    implements _$$_UnexpectedExceptionCopyWith<$Res> {
  __$$_UnexpectedExceptionCopyWithImpl(_$_UnexpectedException _value,
      $Res Function(_$_UnexpectedException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$_UnexpectedException(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_UnexpectedException implements _UnexpectedException {
  const _$_UnexpectedException({this.errorMessage});

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AppException.unexpectedException(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnexpectedException &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnexpectedExceptionCopyWith<_$_UnexpectedException> get copyWith =>
      __$$_UnexpectedExceptionCopyWithImpl<_$_UnexpectedException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) serverException,
    required TResult Function(String? errorMessage) unexpectedException,
    required TResult Function(String? errorMessage) locationIsNotAllowed,
    required TResult Function() badNetworkException,
    required TResult Function() internalServerException,
    required TResult Function(String? errorMessage) unauthenticatedException,
    required TResult Function(String? errorMessage) empty,
    required TResult Function(String? errorMessage) invalid,
    required TResult Function(String? errorMessage) countingException,
  }) {
    return unexpectedException(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? errorMessage)? serverException,
    TResult? Function(String? errorMessage)? unexpectedException,
    TResult? Function(String? errorMessage)? locationIsNotAllowed,
    TResult? Function()? badNetworkException,
    TResult? Function()? internalServerException,
    TResult? Function(String? errorMessage)? unauthenticatedException,
    TResult? Function(String? errorMessage)? empty,
    TResult? Function(String? errorMessage)? invalid,
    TResult? Function(String? errorMessage)? countingException,
  }) {
    return unexpectedException?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? serverException,
    TResult Function(String? errorMessage)? unexpectedException,
    TResult Function(String? errorMessage)? locationIsNotAllowed,
    TResult Function()? badNetworkException,
    TResult Function()? internalServerException,
    TResult Function(String? errorMessage)? unauthenticatedException,
    TResult Function(String? errorMessage)? empty,
    TResult Function(String? errorMessage)? invalid,
    TResult Function(String? errorMessage)? countingException,
    required TResult orElse(),
  }) {
    if (unexpectedException != null) {
      return unexpectedException(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerException value) serverException,
    required TResult Function(_UnexpectedException value) unexpectedException,
    required TResult Function(_LocationIsNotAllowed value) locationIsNotAllowed,
    required TResult Function(_BadNetworkException value) badNetworkException,
    required TResult Function(_InternalServerException value)
        internalServerException,
    required TResult Function(_UnauthenticatedException value)
        unauthenticatedException,
    required TResult Function(_EmptyException value) empty,
    required TResult Function(_InvalidException value) invalid,
    required TResult Function(_CountingException value) countingException,
  }) {
    return unexpectedException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerException value)? serverException,
    TResult? Function(_UnexpectedException value)? unexpectedException,
    TResult? Function(_LocationIsNotAllowed value)? locationIsNotAllowed,
    TResult? Function(_BadNetworkException value)? badNetworkException,
    TResult? Function(_InternalServerException value)? internalServerException,
    TResult? Function(_UnauthenticatedException value)?
        unauthenticatedException,
    TResult? Function(_EmptyException value)? empty,
    TResult? Function(_InvalidException value)? invalid,
    TResult? Function(_CountingException value)? countingException,
  }) {
    return unexpectedException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_UnexpectedException value)? unexpectedException,
    TResult Function(_LocationIsNotAllowed value)? locationIsNotAllowed,
    TResult Function(_BadNetworkException value)? badNetworkException,
    TResult Function(_InternalServerException value)? internalServerException,
    TResult Function(_UnauthenticatedException value)? unauthenticatedException,
    TResult Function(_EmptyException value)? empty,
    TResult Function(_InvalidException value)? invalid,
    TResult Function(_CountingException value)? countingException,
    required TResult orElse(),
  }) {
    if (unexpectedException != null) {
      return unexpectedException(this);
    }
    return orElse();
  }
}

abstract class _UnexpectedException implements AppException, Exception {
  const factory _UnexpectedException({final String? errorMessage}) =
      _$_UnexpectedException;

  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$_UnexpectedExceptionCopyWith<_$_UnexpectedException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LocationIsNotAllowedCopyWith<$Res> {
  factory _$$_LocationIsNotAllowedCopyWith(_$_LocationIsNotAllowed value,
          $Res Function(_$_LocationIsNotAllowed) then) =
      __$$_LocationIsNotAllowedCopyWithImpl<$Res>;
  @useResult
  $Res call({String? errorMessage});
}

/// @nodoc
class __$$_LocationIsNotAllowedCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$_LocationIsNotAllowed>
    implements _$$_LocationIsNotAllowedCopyWith<$Res> {
  __$$_LocationIsNotAllowedCopyWithImpl(_$_LocationIsNotAllowed _value,
      $Res Function(_$_LocationIsNotAllowed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$_LocationIsNotAllowed(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_LocationIsNotAllowed implements _LocationIsNotAllowed {
  const _$_LocationIsNotAllowed({this.errorMessage});

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AppException.locationIsNotAllowed(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationIsNotAllowed &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationIsNotAllowedCopyWith<_$_LocationIsNotAllowed> get copyWith =>
      __$$_LocationIsNotAllowedCopyWithImpl<_$_LocationIsNotAllowed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) serverException,
    required TResult Function(String? errorMessage) unexpectedException,
    required TResult Function(String? errorMessage) locationIsNotAllowed,
    required TResult Function() badNetworkException,
    required TResult Function() internalServerException,
    required TResult Function(String? errorMessage) unauthenticatedException,
    required TResult Function(String? errorMessage) empty,
    required TResult Function(String? errorMessage) invalid,
    required TResult Function(String? errorMessage) countingException,
  }) {
    return locationIsNotAllowed(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? errorMessage)? serverException,
    TResult? Function(String? errorMessage)? unexpectedException,
    TResult? Function(String? errorMessage)? locationIsNotAllowed,
    TResult? Function()? badNetworkException,
    TResult? Function()? internalServerException,
    TResult? Function(String? errorMessage)? unauthenticatedException,
    TResult? Function(String? errorMessage)? empty,
    TResult? Function(String? errorMessage)? invalid,
    TResult? Function(String? errorMessage)? countingException,
  }) {
    return locationIsNotAllowed?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? serverException,
    TResult Function(String? errorMessage)? unexpectedException,
    TResult Function(String? errorMessage)? locationIsNotAllowed,
    TResult Function()? badNetworkException,
    TResult Function()? internalServerException,
    TResult Function(String? errorMessage)? unauthenticatedException,
    TResult Function(String? errorMessage)? empty,
    TResult Function(String? errorMessage)? invalid,
    TResult Function(String? errorMessage)? countingException,
    required TResult orElse(),
  }) {
    if (locationIsNotAllowed != null) {
      return locationIsNotAllowed(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerException value) serverException,
    required TResult Function(_UnexpectedException value) unexpectedException,
    required TResult Function(_LocationIsNotAllowed value) locationIsNotAllowed,
    required TResult Function(_BadNetworkException value) badNetworkException,
    required TResult Function(_InternalServerException value)
        internalServerException,
    required TResult Function(_UnauthenticatedException value)
        unauthenticatedException,
    required TResult Function(_EmptyException value) empty,
    required TResult Function(_InvalidException value) invalid,
    required TResult Function(_CountingException value) countingException,
  }) {
    return locationIsNotAllowed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerException value)? serverException,
    TResult? Function(_UnexpectedException value)? unexpectedException,
    TResult? Function(_LocationIsNotAllowed value)? locationIsNotAllowed,
    TResult? Function(_BadNetworkException value)? badNetworkException,
    TResult? Function(_InternalServerException value)? internalServerException,
    TResult? Function(_UnauthenticatedException value)?
        unauthenticatedException,
    TResult? Function(_EmptyException value)? empty,
    TResult? Function(_InvalidException value)? invalid,
    TResult? Function(_CountingException value)? countingException,
  }) {
    return locationIsNotAllowed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_UnexpectedException value)? unexpectedException,
    TResult Function(_LocationIsNotAllowed value)? locationIsNotAllowed,
    TResult Function(_BadNetworkException value)? badNetworkException,
    TResult Function(_InternalServerException value)? internalServerException,
    TResult Function(_UnauthenticatedException value)? unauthenticatedException,
    TResult Function(_EmptyException value)? empty,
    TResult Function(_InvalidException value)? invalid,
    TResult Function(_CountingException value)? countingException,
    required TResult orElse(),
  }) {
    if (locationIsNotAllowed != null) {
      return locationIsNotAllowed(this);
    }
    return orElse();
  }
}

abstract class _LocationIsNotAllowed implements AppException, Exception {
  const factory _LocationIsNotAllowed({final String? errorMessage}) =
      _$_LocationIsNotAllowed;

  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$_LocationIsNotAllowedCopyWith<_$_LocationIsNotAllowed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BadNetworkExceptionCopyWith<$Res> {
  factory _$$_BadNetworkExceptionCopyWith(_$_BadNetworkException value,
          $Res Function(_$_BadNetworkException) then) =
      __$$_BadNetworkExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_BadNetworkExceptionCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$_BadNetworkException>
    implements _$$_BadNetworkExceptionCopyWith<$Res> {
  __$$_BadNetworkExceptionCopyWithImpl(_$_BadNetworkException _value,
      $Res Function(_$_BadNetworkException) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_BadNetworkException implements _BadNetworkException {
  const _$_BadNetworkException();

  @override
  String toString() {
    return 'AppException.badNetworkException()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_BadNetworkException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) serverException,
    required TResult Function(String? errorMessage) unexpectedException,
    required TResult Function(String? errorMessage) locationIsNotAllowed,
    required TResult Function() badNetworkException,
    required TResult Function() internalServerException,
    required TResult Function(String? errorMessage) unauthenticatedException,
    required TResult Function(String? errorMessage) empty,
    required TResult Function(String? errorMessage) invalid,
    required TResult Function(String? errorMessage) countingException,
  }) {
    return badNetworkException();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? errorMessage)? serverException,
    TResult? Function(String? errorMessage)? unexpectedException,
    TResult? Function(String? errorMessage)? locationIsNotAllowed,
    TResult? Function()? badNetworkException,
    TResult? Function()? internalServerException,
    TResult? Function(String? errorMessage)? unauthenticatedException,
    TResult? Function(String? errorMessage)? empty,
    TResult? Function(String? errorMessage)? invalid,
    TResult? Function(String? errorMessage)? countingException,
  }) {
    return badNetworkException?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? serverException,
    TResult Function(String? errorMessage)? unexpectedException,
    TResult Function(String? errorMessage)? locationIsNotAllowed,
    TResult Function()? badNetworkException,
    TResult Function()? internalServerException,
    TResult Function(String? errorMessage)? unauthenticatedException,
    TResult Function(String? errorMessage)? empty,
    TResult Function(String? errorMessage)? invalid,
    TResult Function(String? errorMessage)? countingException,
    required TResult orElse(),
  }) {
    if (badNetworkException != null) {
      return badNetworkException();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerException value) serverException,
    required TResult Function(_UnexpectedException value) unexpectedException,
    required TResult Function(_LocationIsNotAllowed value) locationIsNotAllowed,
    required TResult Function(_BadNetworkException value) badNetworkException,
    required TResult Function(_InternalServerException value)
        internalServerException,
    required TResult Function(_UnauthenticatedException value)
        unauthenticatedException,
    required TResult Function(_EmptyException value) empty,
    required TResult Function(_InvalidException value) invalid,
    required TResult Function(_CountingException value) countingException,
  }) {
    return badNetworkException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerException value)? serverException,
    TResult? Function(_UnexpectedException value)? unexpectedException,
    TResult? Function(_LocationIsNotAllowed value)? locationIsNotAllowed,
    TResult? Function(_BadNetworkException value)? badNetworkException,
    TResult? Function(_InternalServerException value)? internalServerException,
    TResult? Function(_UnauthenticatedException value)?
        unauthenticatedException,
    TResult? Function(_EmptyException value)? empty,
    TResult? Function(_InvalidException value)? invalid,
    TResult? Function(_CountingException value)? countingException,
  }) {
    return badNetworkException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_UnexpectedException value)? unexpectedException,
    TResult Function(_LocationIsNotAllowed value)? locationIsNotAllowed,
    TResult Function(_BadNetworkException value)? badNetworkException,
    TResult Function(_InternalServerException value)? internalServerException,
    TResult Function(_UnauthenticatedException value)? unauthenticatedException,
    TResult Function(_EmptyException value)? empty,
    TResult Function(_InvalidException value)? invalid,
    TResult Function(_CountingException value)? countingException,
    required TResult orElse(),
  }) {
    if (badNetworkException != null) {
      return badNetworkException(this);
    }
    return orElse();
  }
}

abstract class _BadNetworkException implements AppException, Exception {
  const factory _BadNetworkException() = _$_BadNetworkException;
}

/// @nodoc
abstract class _$$_InternalServerExceptionCopyWith<$Res> {
  factory _$$_InternalServerExceptionCopyWith(_$_InternalServerException value,
          $Res Function(_$_InternalServerException) then) =
      __$$_InternalServerExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InternalServerExceptionCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$_InternalServerException>
    implements _$$_InternalServerExceptionCopyWith<$Res> {
  __$$_InternalServerExceptionCopyWithImpl(_$_InternalServerException _value,
      $Res Function(_$_InternalServerException) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InternalServerException implements _InternalServerException {
  const _$_InternalServerException();

  @override
  String toString() {
    return 'AppException.internalServerException()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InternalServerException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) serverException,
    required TResult Function(String? errorMessage) unexpectedException,
    required TResult Function(String? errorMessage) locationIsNotAllowed,
    required TResult Function() badNetworkException,
    required TResult Function() internalServerException,
    required TResult Function(String? errorMessage) unauthenticatedException,
    required TResult Function(String? errorMessage) empty,
    required TResult Function(String? errorMessage) invalid,
    required TResult Function(String? errorMessage) countingException,
  }) {
    return internalServerException();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? errorMessage)? serverException,
    TResult? Function(String? errorMessage)? unexpectedException,
    TResult? Function(String? errorMessage)? locationIsNotAllowed,
    TResult? Function()? badNetworkException,
    TResult? Function()? internalServerException,
    TResult? Function(String? errorMessage)? unauthenticatedException,
    TResult? Function(String? errorMessage)? empty,
    TResult? Function(String? errorMessage)? invalid,
    TResult? Function(String? errorMessage)? countingException,
  }) {
    return internalServerException?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? serverException,
    TResult Function(String? errorMessage)? unexpectedException,
    TResult Function(String? errorMessage)? locationIsNotAllowed,
    TResult Function()? badNetworkException,
    TResult Function()? internalServerException,
    TResult Function(String? errorMessage)? unauthenticatedException,
    TResult Function(String? errorMessage)? empty,
    TResult Function(String? errorMessage)? invalid,
    TResult Function(String? errorMessage)? countingException,
    required TResult orElse(),
  }) {
    if (internalServerException != null) {
      return internalServerException();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerException value) serverException,
    required TResult Function(_UnexpectedException value) unexpectedException,
    required TResult Function(_LocationIsNotAllowed value) locationIsNotAllowed,
    required TResult Function(_BadNetworkException value) badNetworkException,
    required TResult Function(_InternalServerException value)
        internalServerException,
    required TResult Function(_UnauthenticatedException value)
        unauthenticatedException,
    required TResult Function(_EmptyException value) empty,
    required TResult Function(_InvalidException value) invalid,
    required TResult Function(_CountingException value) countingException,
  }) {
    return internalServerException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerException value)? serverException,
    TResult? Function(_UnexpectedException value)? unexpectedException,
    TResult? Function(_LocationIsNotAllowed value)? locationIsNotAllowed,
    TResult? Function(_BadNetworkException value)? badNetworkException,
    TResult? Function(_InternalServerException value)? internalServerException,
    TResult? Function(_UnauthenticatedException value)?
        unauthenticatedException,
    TResult? Function(_EmptyException value)? empty,
    TResult? Function(_InvalidException value)? invalid,
    TResult? Function(_CountingException value)? countingException,
  }) {
    return internalServerException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_UnexpectedException value)? unexpectedException,
    TResult Function(_LocationIsNotAllowed value)? locationIsNotAllowed,
    TResult Function(_BadNetworkException value)? badNetworkException,
    TResult Function(_InternalServerException value)? internalServerException,
    TResult Function(_UnauthenticatedException value)? unauthenticatedException,
    TResult Function(_EmptyException value)? empty,
    TResult Function(_InvalidException value)? invalid,
    TResult Function(_CountingException value)? countingException,
    required TResult orElse(),
  }) {
    if (internalServerException != null) {
      return internalServerException(this);
    }
    return orElse();
  }
}

abstract class _InternalServerException implements AppException, Exception {
  const factory _InternalServerException() = _$_InternalServerException;
}

/// @nodoc
abstract class _$$_UnauthenticatedExceptionCopyWith<$Res> {
  factory _$$_UnauthenticatedExceptionCopyWith(
          _$_UnauthenticatedException value,
          $Res Function(_$_UnauthenticatedException) then) =
      __$$_UnauthenticatedExceptionCopyWithImpl<$Res>;
  @useResult
  $Res call({String? errorMessage});
}

/// @nodoc
class __$$_UnauthenticatedExceptionCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$_UnauthenticatedException>
    implements _$$_UnauthenticatedExceptionCopyWith<$Res> {
  __$$_UnauthenticatedExceptionCopyWithImpl(_$_UnauthenticatedException _value,
      $Res Function(_$_UnauthenticatedException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$_UnauthenticatedException(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_UnauthenticatedException implements _UnauthenticatedException {
  const _$_UnauthenticatedException({this.errorMessage});

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AppException.unauthenticatedException(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnauthenticatedException &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnauthenticatedExceptionCopyWith<_$_UnauthenticatedException>
      get copyWith => __$$_UnauthenticatedExceptionCopyWithImpl<
          _$_UnauthenticatedException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) serverException,
    required TResult Function(String? errorMessage) unexpectedException,
    required TResult Function(String? errorMessage) locationIsNotAllowed,
    required TResult Function() badNetworkException,
    required TResult Function() internalServerException,
    required TResult Function(String? errorMessage) unauthenticatedException,
    required TResult Function(String? errorMessage) empty,
    required TResult Function(String? errorMessage) invalid,
    required TResult Function(String? errorMessage) countingException,
  }) {
    return unauthenticatedException(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? errorMessage)? serverException,
    TResult? Function(String? errorMessage)? unexpectedException,
    TResult? Function(String? errorMessage)? locationIsNotAllowed,
    TResult? Function()? badNetworkException,
    TResult? Function()? internalServerException,
    TResult? Function(String? errorMessage)? unauthenticatedException,
    TResult? Function(String? errorMessage)? empty,
    TResult? Function(String? errorMessage)? invalid,
    TResult? Function(String? errorMessage)? countingException,
  }) {
    return unauthenticatedException?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? serverException,
    TResult Function(String? errorMessage)? unexpectedException,
    TResult Function(String? errorMessage)? locationIsNotAllowed,
    TResult Function()? badNetworkException,
    TResult Function()? internalServerException,
    TResult Function(String? errorMessage)? unauthenticatedException,
    TResult Function(String? errorMessage)? empty,
    TResult Function(String? errorMessage)? invalid,
    TResult Function(String? errorMessage)? countingException,
    required TResult orElse(),
  }) {
    if (unauthenticatedException != null) {
      return unauthenticatedException(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerException value) serverException,
    required TResult Function(_UnexpectedException value) unexpectedException,
    required TResult Function(_LocationIsNotAllowed value) locationIsNotAllowed,
    required TResult Function(_BadNetworkException value) badNetworkException,
    required TResult Function(_InternalServerException value)
        internalServerException,
    required TResult Function(_UnauthenticatedException value)
        unauthenticatedException,
    required TResult Function(_EmptyException value) empty,
    required TResult Function(_InvalidException value) invalid,
    required TResult Function(_CountingException value) countingException,
  }) {
    return unauthenticatedException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerException value)? serverException,
    TResult? Function(_UnexpectedException value)? unexpectedException,
    TResult? Function(_LocationIsNotAllowed value)? locationIsNotAllowed,
    TResult? Function(_BadNetworkException value)? badNetworkException,
    TResult? Function(_InternalServerException value)? internalServerException,
    TResult? Function(_UnauthenticatedException value)?
        unauthenticatedException,
    TResult? Function(_EmptyException value)? empty,
    TResult? Function(_InvalidException value)? invalid,
    TResult? Function(_CountingException value)? countingException,
  }) {
    return unauthenticatedException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_UnexpectedException value)? unexpectedException,
    TResult Function(_LocationIsNotAllowed value)? locationIsNotAllowed,
    TResult Function(_BadNetworkException value)? badNetworkException,
    TResult Function(_InternalServerException value)? internalServerException,
    TResult Function(_UnauthenticatedException value)? unauthenticatedException,
    TResult Function(_EmptyException value)? empty,
    TResult Function(_InvalidException value)? invalid,
    TResult Function(_CountingException value)? countingException,
    required TResult orElse(),
  }) {
    if (unauthenticatedException != null) {
      return unauthenticatedException(this);
    }
    return orElse();
  }
}

abstract class _UnauthenticatedException implements AppException, Exception {
  const factory _UnauthenticatedException({final String? errorMessage}) =
      _$_UnauthenticatedException;

  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$_UnauthenticatedExceptionCopyWith<_$_UnauthenticatedException>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EmptyExceptionCopyWith<$Res> {
  factory _$$_EmptyExceptionCopyWith(
          _$_EmptyException value, $Res Function(_$_EmptyException) then) =
      __$$_EmptyExceptionCopyWithImpl<$Res>;
  @useResult
  $Res call({String? errorMessage});
}

/// @nodoc
class __$$_EmptyExceptionCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$_EmptyException>
    implements _$$_EmptyExceptionCopyWith<$Res> {
  __$$_EmptyExceptionCopyWithImpl(
      _$_EmptyException _value, $Res Function(_$_EmptyException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$_EmptyException(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_EmptyException implements _EmptyException {
  const _$_EmptyException({this.errorMessage});

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AppException.empty(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmptyException &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmptyExceptionCopyWith<_$_EmptyException> get copyWith =>
      __$$_EmptyExceptionCopyWithImpl<_$_EmptyException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) serverException,
    required TResult Function(String? errorMessage) unexpectedException,
    required TResult Function(String? errorMessage) locationIsNotAllowed,
    required TResult Function() badNetworkException,
    required TResult Function() internalServerException,
    required TResult Function(String? errorMessage) unauthenticatedException,
    required TResult Function(String? errorMessage) empty,
    required TResult Function(String? errorMessage) invalid,
    required TResult Function(String? errorMessage) countingException,
  }) {
    return empty(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? errorMessage)? serverException,
    TResult? Function(String? errorMessage)? unexpectedException,
    TResult? Function(String? errorMessage)? locationIsNotAllowed,
    TResult? Function()? badNetworkException,
    TResult? Function()? internalServerException,
    TResult? Function(String? errorMessage)? unauthenticatedException,
    TResult? Function(String? errorMessage)? empty,
    TResult? Function(String? errorMessage)? invalid,
    TResult? Function(String? errorMessage)? countingException,
  }) {
    return empty?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? serverException,
    TResult Function(String? errorMessage)? unexpectedException,
    TResult Function(String? errorMessage)? locationIsNotAllowed,
    TResult Function()? badNetworkException,
    TResult Function()? internalServerException,
    TResult Function(String? errorMessage)? unauthenticatedException,
    TResult Function(String? errorMessage)? empty,
    TResult Function(String? errorMessage)? invalid,
    TResult Function(String? errorMessage)? countingException,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerException value) serverException,
    required TResult Function(_UnexpectedException value) unexpectedException,
    required TResult Function(_LocationIsNotAllowed value) locationIsNotAllowed,
    required TResult Function(_BadNetworkException value) badNetworkException,
    required TResult Function(_InternalServerException value)
        internalServerException,
    required TResult Function(_UnauthenticatedException value)
        unauthenticatedException,
    required TResult Function(_EmptyException value) empty,
    required TResult Function(_InvalidException value) invalid,
    required TResult Function(_CountingException value) countingException,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerException value)? serverException,
    TResult? Function(_UnexpectedException value)? unexpectedException,
    TResult? Function(_LocationIsNotAllowed value)? locationIsNotAllowed,
    TResult? Function(_BadNetworkException value)? badNetworkException,
    TResult? Function(_InternalServerException value)? internalServerException,
    TResult? Function(_UnauthenticatedException value)?
        unauthenticatedException,
    TResult? Function(_EmptyException value)? empty,
    TResult? Function(_InvalidException value)? invalid,
    TResult? Function(_CountingException value)? countingException,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_UnexpectedException value)? unexpectedException,
    TResult Function(_LocationIsNotAllowed value)? locationIsNotAllowed,
    TResult Function(_BadNetworkException value)? badNetworkException,
    TResult Function(_InternalServerException value)? internalServerException,
    TResult Function(_UnauthenticatedException value)? unauthenticatedException,
    TResult Function(_EmptyException value)? empty,
    TResult Function(_InvalidException value)? invalid,
    TResult Function(_CountingException value)? countingException,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _EmptyException implements AppException, Exception {
  const factory _EmptyException({final String? errorMessage}) =
      _$_EmptyException;

  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$_EmptyExceptionCopyWith<_$_EmptyException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InvalidExceptionCopyWith<$Res> {
  factory _$$_InvalidExceptionCopyWith(
          _$_InvalidException value, $Res Function(_$_InvalidException) then) =
      __$$_InvalidExceptionCopyWithImpl<$Res>;
  @useResult
  $Res call({String? errorMessage});
}

/// @nodoc
class __$$_InvalidExceptionCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$_InvalidException>
    implements _$$_InvalidExceptionCopyWith<$Res> {
  __$$_InvalidExceptionCopyWithImpl(
      _$_InvalidException _value, $Res Function(_$_InvalidException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$_InvalidException(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_InvalidException implements _InvalidException {
  const _$_InvalidException({this.errorMessage});

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AppException.invalid(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvalidException &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvalidExceptionCopyWith<_$_InvalidException> get copyWith =>
      __$$_InvalidExceptionCopyWithImpl<_$_InvalidException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) serverException,
    required TResult Function(String? errorMessage) unexpectedException,
    required TResult Function(String? errorMessage) locationIsNotAllowed,
    required TResult Function() badNetworkException,
    required TResult Function() internalServerException,
    required TResult Function(String? errorMessage) unauthenticatedException,
    required TResult Function(String? errorMessage) empty,
    required TResult Function(String? errorMessage) invalid,
    required TResult Function(String? errorMessage) countingException,
  }) {
    return invalid(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? errorMessage)? serverException,
    TResult? Function(String? errorMessage)? unexpectedException,
    TResult? Function(String? errorMessage)? locationIsNotAllowed,
    TResult? Function()? badNetworkException,
    TResult? Function()? internalServerException,
    TResult? Function(String? errorMessage)? unauthenticatedException,
    TResult? Function(String? errorMessage)? empty,
    TResult? Function(String? errorMessage)? invalid,
    TResult? Function(String? errorMessage)? countingException,
  }) {
    return invalid?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? serverException,
    TResult Function(String? errorMessage)? unexpectedException,
    TResult Function(String? errorMessage)? locationIsNotAllowed,
    TResult Function()? badNetworkException,
    TResult Function()? internalServerException,
    TResult Function(String? errorMessage)? unauthenticatedException,
    TResult Function(String? errorMessage)? empty,
    TResult Function(String? errorMessage)? invalid,
    TResult Function(String? errorMessage)? countingException,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerException value) serverException,
    required TResult Function(_UnexpectedException value) unexpectedException,
    required TResult Function(_LocationIsNotAllowed value) locationIsNotAllowed,
    required TResult Function(_BadNetworkException value) badNetworkException,
    required TResult Function(_InternalServerException value)
        internalServerException,
    required TResult Function(_UnauthenticatedException value)
        unauthenticatedException,
    required TResult Function(_EmptyException value) empty,
    required TResult Function(_InvalidException value) invalid,
    required TResult Function(_CountingException value) countingException,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerException value)? serverException,
    TResult? Function(_UnexpectedException value)? unexpectedException,
    TResult? Function(_LocationIsNotAllowed value)? locationIsNotAllowed,
    TResult? Function(_BadNetworkException value)? badNetworkException,
    TResult? Function(_InternalServerException value)? internalServerException,
    TResult? Function(_UnauthenticatedException value)?
        unauthenticatedException,
    TResult? Function(_EmptyException value)? empty,
    TResult? Function(_InvalidException value)? invalid,
    TResult? Function(_CountingException value)? countingException,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_UnexpectedException value)? unexpectedException,
    TResult Function(_LocationIsNotAllowed value)? locationIsNotAllowed,
    TResult Function(_BadNetworkException value)? badNetworkException,
    TResult Function(_InternalServerException value)? internalServerException,
    TResult Function(_UnauthenticatedException value)? unauthenticatedException,
    TResult Function(_EmptyException value)? empty,
    TResult Function(_InvalidException value)? invalid,
    TResult Function(_CountingException value)? countingException,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class _InvalidException implements AppException, Exception {
  const factory _InvalidException({final String? errorMessage}) =
      _$_InvalidException;

  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$_InvalidExceptionCopyWith<_$_InvalidException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CountingExceptionCopyWith<$Res> {
  factory _$$_CountingExceptionCopyWith(_$_CountingException value,
          $Res Function(_$_CountingException) then) =
      __$$_CountingExceptionCopyWithImpl<$Res>;
  @useResult
  $Res call({String? errorMessage});
}

/// @nodoc
class __$$_CountingExceptionCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$_CountingException>
    implements _$$_CountingExceptionCopyWith<$Res> {
  __$$_CountingExceptionCopyWithImpl(
      _$_CountingException _value, $Res Function(_$_CountingException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$_CountingException(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_CountingException implements _CountingException {
  const _$_CountingException({this.errorMessage});

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AppException.countingException(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CountingException &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CountingExceptionCopyWith<_$_CountingException> get copyWith =>
      __$$_CountingExceptionCopyWithImpl<_$_CountingException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) serverException,
    required TResult Function(String? errorMessage) unexpectedException,
    required TResult Function(String? errorMessage) locationIsNotAllowed,
    required TResult Function() badNetworkException,
    required TResult Function() internalServerException,
    required TResult Function(String? errorMessage) unauthenticatedException,
    required TResult Function(String? errorMessage) empty,
    required TResult Function(String? errorMessage) invalid,
    required TResult Function(String? errorMessage) countingException,
  }) {
    return countingException(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? errorMessage)? serverException,
    TResult? Function(String? errorMessage)? unexpectedException,
    TResult? Function(String? errorMessage)? locationIsNotAllowed,
    TResult? Function()? badNetworkException,
    TResult? Function()? internalServerException,
    TResult? Function(String? errorMessage)? unauthenticatedException,
    TResult? Function(String? errorMessage)? empty,
    TResult? Function(String? errorMessage)? invalid,
    TResult? Function(String? errorMessage)? countingException,
  }) {
    return countingException?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? serverException,
    TResult Function(String? errorMessage)? unexpectedException,
    TResult Function(String? errorMessage)? locationIsNotAllowed,
    TResult Function()? badNetworkException,
    TResult Function()? internalServerException,
    TResult Function(String? errorMessage)? unauthenticatedException,
    TResult Function(String? errorMessage)? empty,
    TResult Function(String? errorMessage)? invalid,
    TResult Function(String? errorMessage)? countingException,
    required TResult orElse(),
  }) {
    if (countingException != null) {
      return countingException(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerException value) serverException,
    required TResult Function(_UnexpectedException value) unexpectedException,
    required TResult Function(_LocationIsNotAllowed value) locationIsNotAllowed,
    required TResult Function(_BadNetworkException value) badNetworkException,
    required TResult Function(_InternalServerException value)
        internalServerException,
    required TResult Function(_UnauthenticatedException value)
        unauthenticatedException,
    required TResult Function(_EmptyException value) empty,
    required TResult Function(_InvalidException value) invalid,
    required TResult Function(_CountingException value) countingException,
  }) {
    return countingException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerException value)? serverException,
    TResult? Function(_UnexpectedException value)? unexpectedException,
    TResult? Function(_LocationIsNotAllowed value)? locationIsNotAllowed,
    TResult? Function(_BadNetworkException value)? badNetworkException,
    TResult? Function(_InternalServerException value)? internalServerException,
    TResult? Function(_UnauthenticatedException value)?
        unauthenticatedException,
    TResult? Function(_EmptyException value)? empty,
    TResult? Function(_InvalidException value)? invalid,
    TResult? Function(_CountingException value)? countingException,
  }) {
    return countingException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_UnexpectedException value)? unexpectedException,
    TResult Function(_LocationIsNotAllowed value)? locationIsNotAllowed,
    TResult Function(_BadNetworkException value)? badNetworkException,
    TResult Function(_InternalServerException value)? internalServerException,
    TResult Function(_UnauthenticatedException value)? unauthenticatedException,
    TResult Function(_EmptyException value)? empty,
    TResult Function(_InvalidException value)? invalid,
    TResult Function(_CountingException value)? countingException,
    required TResult orElse(),
  }) {
    if (countingException != null) {
      return countingException(this);
    }
    return orElse();
  }
}

abstract class _CountingException implements AppException, Exception {
  const factory _CountingException({final String? errorMessage}) =
      _$_CountingException;

  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$_CountingExceptionCopyWith<_$_CountingException> get copyWith =>
      throw _privateConstructorUsedError;
}
