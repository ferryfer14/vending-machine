// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthModel {
  String get access_token => throw _privateConstructorUsedError;
  String get token_type => throw _privateConstructorUsedError;
  String get refresh_token => throw _privateConstructorUsedError;
  int get expires_in => throw _privateConstructorUsedError;
  String get scope => throw _privateConstructorUsedError;
  String get jti => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthModelCopyWith<AuthModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthModelCopyWith<$Res> {
  factory $AuthModelCopyWith(AuthModel value, $Res Function(AuthModel) then) =
      _$AuthModelCopyWithImpl<$Res, AuthModel>;
  @useResult
  $Res call(
      {String access_token,
      String token_type,
      String refresh_token,
      int expires_in,
      String scope,
      String jti});
}

/// @nodoc
class _$AuthModelCopyWithImpl<$Res, $Val extends AuthModel>
    implements $AuthModelCopyWith<$Res> {
  _$AuthModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access_token = null,
    Object? token_type = null,
    Object? refresh_token = null,
    Object? expires_in = null,
    Object? scope = null,
    Object? jti = null,
  }) {
    return _then(_value.copyWith(
      access_token: null == access_token
          ? _value.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as String,
      token_type: null == token_type
          ? _value.token_type
          : token_type // ignore: cast_nullable_to_non_nullable
              as String,
      refresh_token: null == refresh_token
          ? _value.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as String,
      expires_in: null == expires_in
          ? _value.expires_in
          : expires_in // ignore: cast_nullable_to_non_nullable
              as int,
      scope: null == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
      jti: null == jti
          ? _value.jti
          : jti // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthModelCopyWith<$Res> implements $AuthModelCopyWith<$Res> {
  factory _$$_AuthModelCopyWith(
          _$_AuthModel value, $Res Function(_$_AuthModel) then) =
      __$$_AuthModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String access_token,
      String token_type,
      String refresh_token,
      int expires_in,
      String scope,
      String jti});
}

/// @nodoc
class __$$_AuthModelCopyWithImpl<$Res>
    extends _$AuthModelCopyWithImpl<$Res, _$_AuthModel>
    implements _$$_AuthModelCopyWith<$Res> {
  __$$_AuthModelCopyWithImpl(
      _$_AuthModel _value, $Res Function(_$_AuthModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access_token = null,
    Object? token_type = null,
    Object? refresh_token = null,
    Object? expires_in = null,
    Object? scope = null,
    Object? jti = null,
  }) {
    return _then(_$_AuthModel(
      access_token: null == access_token
          ? _value.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as String,
      token_type: null == token_type
          ? _value.token_type
          : token_type // ignore: cast_nullable_to_non_nullable
              as String,
      refresh_token: null == refresh_token
          ? _value.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as String,
      expires_in: null == expires_in
          ? _value.expires_in
          : expires_in // ignore: cast_nullable_to_non_nullable
              as int,
      scope: null == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
      jti: null == jti
          ? _value.jti
          : jti // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthModel extends _AuthModel {
  const _$_AuthModel(
      {required this.access_token,
      required this.token_type,
      required this.refresh_token,
      required this.expires_in,
      required this.scope,
      required this.jti})
      : super._();

  @override
  final String access_token;
  @override
  final String token_type;
  @override
  final String refresh_token;
  @override
  final int expires_in;
  @override
  final String scope;
  @override
  final String jti;

  @override
  String toString() {
    return 'AuthModel(access_token: $access_token, token_type: $token_type, refresh_token: $refresh_token, expires_in: $expires_in, scope: $scope, jti: $jti)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthModel &&
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

  @override
  int get hashCode => Object.hash(runtimeType, access_token, token_type,
      refresh_token, expires_in, scope, jti);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthModelCopyWith<_$_AuthModel> get copyWith =>
      __$$_AuthModelCopyWithImpl<_$_AuthModel>(this, _$identity);
}

abstract class _AuthModel extends AuthModel {
  const factory _AuthModel(
      {required final String access_token,
      required final String token_type,
      required final String refresh_token,
      required final int expires_in,
      required final String scope,
      required final String jti}) = _$_AuthModel;
  const _AuthModel._() : super._();

  @override
  String get access_token;
  @override
  String get token_type;
  @override
  String get refresh_token;
  @override
  int get expires_in;
  @override
  String get scope;
  @override
  String get jti;
  @override
  @JsonKey(ignore: true)
  _$$_AuthModelCopyWith<_$_AuthModel> get copyWith =>
      throw _privateConstructorUsedError;
}
