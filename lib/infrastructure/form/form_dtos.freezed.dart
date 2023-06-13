// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FormModelDto _$FormModelDtoFromJson(Map<String, dynamic> json) {
  return _FormModelDto.fromJson(json);
}

/// @nodoc
mixin _$FormModelDto {
  @JsonKey(name: 'created_at')
  String? get created_at => throw _privateConstructorUsedError;
  @JsonKey(name: 'fullname')
  String? get fullname => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String? get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FormModelDtoCopyWith<FormModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormModelDtoCopyWith<$Res> {
  factory $FormModelDtoCopyWith(
          FormModelDto value, $Res Function(FormModelDto) then) =
      _$FormModelDtoCopyWithImpl<$Res, FormModelDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'created_at') String? created_at,
      @JsonKey(name: 'fullname') String? fullname,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'phone') String? phone});
}

/// @nodoc
class _$FormModelDtoCopyWithImpl<$Res, $Val extends FormModelDto>
    implements $FormModelDtoCopyWith<$Res> {
  _$FormModelDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? created_at = freezed,
    Object? fullname = freezed,
    Object? email = freezed,
    Object? phone = freezed,
  }) {
    return _then(_value.copyWith(
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FormModelDtoCopyWith<$Res>
    implements $FormModelDtoCopyWith<$Res> {
  factory _$$_FormModelDtoCopyWith(
          _$_FormModelDto value, $Res Function(_$_FormModelDto) then) =
      __$$_FormModelDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'created_at') String? created_at,
      @JsonKey(name: 'fullname') String? fullname,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'phone') String? phone});
}

/// @nodoc
class __$$_FormModelDtoCopyWithImpl<$Res>
    extends _$FormModelDtoCopyWithImpl<$Res, _$_FormModelDto>
    implements _$$_FormModelDtoCopyWith<$Res> {
  __$$_FormModelDtoCopyWithImpl(
      _$_FormModelDto _value, $Res Function(_$_FormModelDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? created_at = freezed,
    Object? fullname = freezed,
    Object? email = freezed,
    Object? phone = freezed,
  }) {
    return _then(_$_FormModelDto(
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FormModelDto extends _FormModelDto {
  const _$_FormModelDto(
      {@JsonKey(name: 'created_at') this.created_at,
      @JsonKey(name: 'fullname') this.fullname,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'phone') this.phone})
      : super._();

  factory _$_FormModelDto.fromJson(Map<String, dynamic> json) =>
      _$$_FormModelDtoFromJson(json);

  @override
  @JsonKey(name: 'created_at')
  final String? created_at;
  @override
  @JsonKey(name: 'fullname')
  final String? fullname;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'phone')
  final String? phone;

  @override
  String toString() {
    return 'FormModelDto(created_at: $created_at, fullname: $fullname, email: $email, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FormModelDto &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, created_at, fullname, email, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FormModelDtoCopyWith<_$_FormModelDto> get copyWith =>
      __$$_FormModelDtoCopyWithImpl<_$_FormModelDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FormModelDtoToJson(
      this,
    );
  }
}

abstract class _FormModelDto extends FormModelDto {
  const factory _FormModelDto(
      {@JsonKey(name: 'created_at') final String? created_at,
      @JsonKey(name: 'fullname') final String? fullname,
      @JsonKey(name: 'email') final String? email,
      @JsonKey(name: 'phone') final String? phone}) = _$_FormModelDto;
  const _FormModelDto._() : super._();

  factory _FormModelDto.fromJson(Map<String, dynamic> json) =
      _$_FormModelDto.fromJson;

  @override
  @JsonKey(name: 'created_at')
  String? get created_at;
  @override
  @JsonKey(name: 'fullname')
  String? get fullname;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'phone')
  String? get phone;
  @override
  @JsonKey(ignore: true)
  _$$_FormModelDtoCopyWith<_$_FormModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}
