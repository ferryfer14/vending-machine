// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthModelDto _$AuthModelDtoFromJson(Map<String, dynamic> json) {
  return _AuthModelDto.fromJson(json);
}

/// @nodoc
mixin _$AuthModelDto {
  @JsonKey(name: 'access_token')
  String? get access_token => throw _privateConstructorUsedError;
  @JsonKey(name: 'token_type')
  String? get token_type => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh_token')
  String? get refresh_token => throw _privateConstructorUsedError;
  @JsonKey(name: 'expires_in')
  int? get expires_in => throw _privateConstructorUsedError;
  @JsonKey(name: 'scope')
  String? get scope => throw _privateConstructorUsedError;
  @JsonKey(name: 'jti')
  String? get jti => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthModelDtoCopyWith<AuthModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthModelDtoCopyWith<$Res> {
  factory $AuthModelDtoCopyWith(
          AuthModelDto value, $Res Function(AuthModelDto) then) =
      _$AuthModelDtoCopyWithImpl<$Res, AuthModelDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String? access_token,
      @JsonKey(name: 'token_type') String? token_type,
      @JsonKey(name: 'refresh_token') String? refresh_token,
      @JsonKey(name: 'expires_in') int? expires_in,
      @JsonKey(name: 'scope') String? scope,
      @JsonKey(name: 'jti') String? jti});
}

/// @nodoc
class _$AuthModelDtoCopyWithImpl<$Res, $Val extends AuthModelDto>
    implements $AuthModelDtoCopyWith<$Res> {
  _$AuthModelDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access_token = freezed,
    Object? token_type = freezed,
    Object? refresh_token = freezed,
    Object? expires_in = freezed,
    Object? scope = freezed,
    Object? jti = freezed,
  }) {
    return _then(_value.copyWith(
      access_token: freezed == access_token
          ? _value.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as String?,
      token_type: freezed == token_type
          ? _value.token_type
          : token_type // ignore: cast_nullable_to_non_nullable
              as String?,
      refresh_token: freezed == refresh_token
          ? _value.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as String?,
      expires_in: freezed == expires_in
          ? _value.expires_in
          : expires_in // ignore: cast_nullable_to_non_nullable
              as int?,
      scope: freezed == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String?,
      jti: freezed == jti
          ? _value.jti
          : jti // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthModelDtoCopyWith<$Res>
    implements $AuthModelDtoCopyWith<$Res> {
  factory _$$_AuthModelDtoCopyWith(
          _$_AuthModelDto value, $Res Function(_$_AuthModelDto) then) =
      __$$_AuthModelDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String? access_token,
      @JsonKey(name: 'token_type') String? token_type,
      @JsonKey(name: 'refresh_token') String? refresh_token,
      @JsonKey(name: 'expires_in') int? expires_in,
      @JsonKey(name: 'scope') String? scope,
      @JsonKey(name: 'jti') String? jti});
}

/// @nodoc
class __$$_AuthModelDtoCopyWithImpl<$Res>
    extends _$AuthModelDtoCopyWithImpl<$Res, _$_AuthModelDto>
    implements _$$_AuthModelDtoCopyWith<$Res> {
  __$$_AuthModelDtoCopyWithImpl(
      _$_AuthModelDto _value, $Res Function(_$_AuthModelDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access_token = freezed,
    Object? token_type = freezed,
    Object? refresh_token = freezed,
    Object? expires_in = freezed,
    Object? scope = freezed,
    Object? jti = freezed,
  }) {
    return _then(_$_AuthModelDto(
      access_token: freezed == access_token
          ? _value.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as String?,
      token_type: freezed == token_type
          ? _value.token_type
          : token_type // ignore: cast_nullable_to_non_nullable
              as String?,
      refresh_token: freezed == refresh_token
          ? _value.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as String?,
      expires_in: freezed == expires_in
          ? _value.expires_in
          : expires_in // ignore: cast_nullable_to_non_nullable
              as int?,
      scope: freezed == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String?,
      jti: freezed == jti
          ? _value.jti
          : jti // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthModelDto extends _AuthModelDto {
  const _$_AuthModelDto(
      {@JsonKey(name: 'access_token') this.access_token,
      @JsonKey(name: 'token_type') this.token_type,
      @JsonKey(name: 'refresh_token') this.refresh_token,
      @JsonKey(name: 'expires_in') this.expires_in,
      @JsonKey(name: 'scope') this.scope,
      @JsonKey(name: 'jti') this.jti})
      : super._();

  factory _$_AuthModelDto.fromJson(Map<String, dynamic> json) =>
      _$$_AuthModelDtoFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String? access_token;
  @override
  @JsonKey(name: 'token_type')
  final String? token_type;
  @override
  @JsonKey(name: 'refresh_token')
  final String? refresh_token;
  @override
  @JsonKey(name: 'expires_in')
  final int? expires_in;
  @override
  @JsonKey(name: 'scope')
  final String? scope;
  @override
  @JsonKey(name: 'jti')
  final String? jti;

  @override
  String toString() {
    return 'AuthModelDto(access_token: $access_token, token_type: $token_type, refresh_token: $refresh_token, expires_in: $expires_in, scope: $scope, jti: $jti)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthModelDto &&
            (identical(other.access_token, access_token) ||
                other.access_token == access_token) &&
            (identical(other.token_type, token_type) ||
                other.token_type == token_type) &&
            (identical(other.refresh_token, refresh_token) ||
                other.refresh_token == refresh_token) &&
            (identical(other.expires_in, expires_in) ||
                other.expires_in == expires_in) &&
            (identical(other.scope, scope) || other.scope == scope) &&
            (identical(other.jti, jti) || other.jti == jti));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, access_token, token_type,
      refresh_token, expires_in, scope, jti);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthModelDtoCopyWith<_$_AuthModelDto> get copyWith =>
      __$$_AuthModelDtoCopyWithImpl<_$_AuthModelDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthModelDtoToJson(
      this,
    );
  }
}

abstract class _AuthModelDto extends AuthModelDto {
  const factory _AuthModelDto(
      {@JsonKey(name: 'access_token') final String? access_token,
      @JsonKey(name: 'token_type') final String? token_type,
      @JsonKey(name: 'refresh_token') final String? refresh_token,
      @JsonKey(name: 'expires_in') final int? expires_in,
      @JsonKey(name: 'scope') final String? scope,
      @JsonKey(name: 'jti') final String? jti}) = _$_AuthModelDto;
  const _AuthModelDto._() : super._();

  factory _AuthModelDto.fromJson(Map<String, dynamic> json) =
      _$_AuthModelDto.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String? get access_token;
  @override
  @JsonKey(name: 'token_type')
  String? get token_type;
  @override
  @JsonKey(name: 'refresh_token')
  String? get refresh_token;
  @override
  @JsonKey(name: 'expires_in')
  int? get expires_in;
  @override
  @JsonKey(name: 'scope')
  String? get scope;
  @override
  @JsonKey(name: 'jti')
  String? get jti;
  @override
  @JsonKey(ignore: true)
  _$$_AuthModelDtoCopyWith<_$_AuthModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}
