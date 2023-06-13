// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileModel {
  int get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  LicensePlateModel get license_plate => throw _privateConstructorUsedError;
  MerchantModel get merchant => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileModelCopyWith<ProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileModelCopyWith<$Res> {
  factory $ProfileModelCopyWith(
          ProfileModel value, $Res Function(ProfileModel) then) =
      _$ProfileModelCopyWithImpl<$Res, ProfileModel>;
  @useResult
  $Res call(
      {int id,
      String username,
      LicensePlateModel license_plate,
      MerchantModel merchant});

  $LicensePlateModelCopyWith<$Res> get license_plate;
  $MerchantModelCopyWith<$Res> get merchant;
}

/// @nodoc
class _$ProfileModelCopyWithImpl<$Res, $Val extends ProfileModel>
    implements $ProfileModelCopyWith<$Res> {
  _$ProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? license_plate = null,
    Object? merchant = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      license_plate: null == license_plate
          ? _value.license_plate
          : license_plate // ignore: cast_nullable_to_non_nullable
              as LicensePlateModel,
      merchant: null == merchant
          ? _value.merchant
          : merchant // ignore: cast_nullable_to_non_nullable
              as MerchantModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LicensePlateModelCopyWith<$Res> get license_plate {
    return $LicensePlateModelCopyWith<$Res>(_value.license_plate, (value) {
      return _then(_value.copyWith(license_plate: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MerchantModelCopyWith<$Res> get merchant {
    return $MerchantModelCopyWith<$Res>(_value.merchant, (value) {
      return _then(_value.copyWith(merchant: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProfileModelCopyWith<$Res>
    implements $ProfileModelCopyWith<$Res> {
  factory _$$_ProfileModelCopyWith(
          _$_ProfileModel value, $Res Function(_$_ProfileModel) then) =
      __$$_ProfileModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String username,
      LicensePlateModel license_plate,
      MerchantModel merchant});

  @override
  $LicensePlateModelCopyWith<$Res> get license_plate;
  @override
  $MerchantModelCopyWith<$Res> get merchant;
}

/// @nodoc
class __$$_ProfileModelCopyWithImpl<$Res>
    extends _$ProfileModelCopyWithImpl<$Res, _$_ProfileModel>
    implements _$$_ProfileModelCopyWith<$Res> {
  __$$_ProfileModelCopyWithImpl(
      _$_ProfileModel _value, $Res Function(_$_ProfileModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? license_plate = null,
    Object? merchant = null,
  }) {
    return _then(_$_ProfileModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      license_plate: null == license_plate
          ? _value.license_plate
          : license_plate // ignore: cast_nullable_to_non_nullable
              as LicensePlateModel,
      merchant: null == merchant
          ? _value.merchant
          : merchant // ignore: cast_nullable_to_non_nullable
              as MerchantModel,
    ));
  }
}

/// @nodoc

class _$_ProfileModel extends _ProfileModel {
  const _$_ProfileModel(
      {required this.id,
      required this.username,
      required this.license_plate,
      required this.merchant})
      : super._();

  @override
  final int id;
  @override
  final String username;
  @override
  final LicensePlateModel license_plate;
  @override
  final MerchantModel merchant;

  @override
  String toString() {
    return 'ProfileModel(id: $id, username: $username, license_plate: $license_plate, merchant: $merchant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.license_plate, license_plate) ||
                other.license_plate == license_plate) &&
            (identical(other.merchant, merchant) ||
                other.merchant == merchant));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, username, license_plate, merchant);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileModelCopyWith<_$_ProfileModel> get copyWith =>
      __$$_ProfileModelCopyWithImpl<_$_ProfileModel>(this, _$identity);
}

abstract class _ProfileModel extends ProfileModel {
  const factory _ProfileModel(
      {required final int id,
      required final String username,
      required final LicensePlateModel license_plate,
      required final MerchantModel merchant}) = _$_ProfileModel;
  const _ProfileModel._() : super._();

  @override
  int get id;
  @override
  String get username;
  @override
  LicensePlateModel get license_plate;
  @override
  MerchantModel get merchant;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileModelCopyWith<_$_ProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}
