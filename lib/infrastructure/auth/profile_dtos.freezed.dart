// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileModelDto _$ProfileModelDtoFromJson(Map<String, dynamic> json) {
  return _ProfileModelDto.fromJson(json);
}

/// @nodoc
mixin _$ProfileModelDto {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'license_plate')
  LicensePlateModelDto? get license_plate => throw _privateConstructorUsedError;
  @JsonKey(name: 'merchant')
  MerchantModelDto? get merchant => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileModelDtoCopyWith<ProfileModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileModelDtoCopyWith<$Res> {
  factory $ProfileModelDtoCopyWith(
          ProfileModelDto value, $Res Function(ProfileModelDto) then) =
      _$ProfileModelDtoCopyWithImpl<$Res, ProfileModelDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'license_plate') LicensePlateModelDto? license_plate,
      @JsonKey(name: 'merchant') MerchantModelDto? merchant});

  $LicensePlateModelDtoCopyWith<$Res>? get license_plate;
  $MerchantModelDtoCopyWith<$Res>? get merchant;
}

/// @nodoc
class _$ProfileModelDtoCopyWithImpl<$Res, $Val extends ProfileModelDto>
    implements $ProfileModelDtoCopyWith<$Res> {
  _$ProfileModelDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? license_plate = freezed,
    Object? merchant = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      license_plate: freezed == license_plate
          ? _value.license_plate
          : license_plate // ignore: cast_nullable_to_non_nullable
              as LicensePlateModelDto?,
      merchant: freezed == merchant
          ? _value.merchant
          : merchant // ignore: cast_nullable_to_non_nullable
              as MerchantModelDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LicensePlateModelDtoCopyWith<$Res>? get license_plate {
    if (_value.license_plate == null) {
      return null;
    }

    return $LicensePlateModelDtoCopyWith<$Res>(_value.license_plate!, (value) {
      return _then(_value.copyWith(license_plate: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MerchantModelDtoCopyWith<$Res>? get merchant {
    if (_value.merchant == null) {
      return null;
    }

    return $MerchantModelDtoCopyWith<$Res>(_value.merchant!, (value) {
      return _then(_value.copyWith(merchant: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProfileModelDtoCopyWith<$Res>
    implements $ProfileModelDtoCopyWith<$Res> {
  factory _$$_ProfileModelDtoCopyWith(
          _$_ProfileModelDto value, $Res Function(_$_ProfileModelDto) then) =
      __$$_ProfileModelDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'license_plate') LicensePlateModelDto? license_plate,
      @JsonKey(name: 'merchant') MerchantModelDto? merchant});

  @override
  $LicensePlateModelDtoCopyWith<$Res>? get license_plate;
  @override
  $MerchantModelDtoCopyWith<$Res>? get merchant;
}

/// @nodoc
class __$$_ProfileModelDtoCopyWithImpl<$Res>
    extends _$ProfileModelDtoCopyWithImpl<$Res, _$_ProfileModelDto>
    implements _$$_ProfileModelDtoCopyWith<$Res> {
  __$$_ProfileModelDtoCopyWithImpl(
      _$_ProfileModelDto _value, $Res Function(_$_ProfileModelDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? license_plate = freezed,
    Object? merchant = freezed,
  }) {
    return _then(_$_ProfileModelDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      license_plate: freezed == license_plate
          ? _value.license_plate
          : license_plate // ignore: cast_nullable_to_non_nullable
              as LicensePlateModelDto?,
      merchant: freezed == merchant
          ? _value.merchant
          : merchant // ignore: cast_nullable_to_non_nullable
              as MerchantModelDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileModelDto extends _ProfileModelDto {
  const _$_ProfileModelDto(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'username') this.username,
      @JsonKey(name: 'license_plate') this.license_plate,
      @JsonKey(name: 'merchant') this.merchant})
      : super._();

  factory _$_ProfileModelDto.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileModelDtoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'username')
  final String? username;
  @override
  @JsonKey(name: 'license_plate')
  final LicensePlateModelDto? license_plate;
  @override
  @JsonKey(name: 'merchant')
  final MerchantModelDto? merchant;

  @override
  String toString() {
    return 'ProfileModelDto(id: $id, username: $username, license_plate: $license_plate, merchant: $merchant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileModelDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.license_plate, license_plate) ||
                other.license_plate == license_plate) &&
            (identical(other.merchant, merchant) ||
                other.merchant == merchant));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, username, license_plate, merchant);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileModelDtoCopyWith<_$_ProfileModelDto> get copyWith =>
      __$$_ProfileModelDtoCopyWithImpl<_$_ProfileModelDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileModelDtoToJson(
      this,
    );
  }
}

abstract class _ProfileModelDto extends ProfileModelDto {
  const factory _ProfileModelDto(
      {@JsonKey(name: 'id')
          final int? id,
      @JsonKey(name: 'username')
          final String? username,
      @JsonKey(name: 'license_plate')
          final LicensePlateModelDto? license_plate,
      @JsonKey(name: 'merchant')
          final MerchantModelDto? merchant}) = _$_ProfileModelDto;
  const _ProfileModelDto._() : super._();

  factory _ProfileModelDto.fromJson(Map<String, dynamic> json) =
      _$_ProfileModelDto.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'username')
  String? get username;
  @override
  @JsonKey(name: 'license_plate')
  LicensePlateModelDto? get license_plate;
  @override
  @JsonKey(name: 'merchant')
  MerchantModelDto? get merchant;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileModelDtoCopyWith<_$_ProfileModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}
