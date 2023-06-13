// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'license_plate_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LicensePlateModel {
  int get id => throw _privateConstructorUsedError;
  String get plate_number => throw _privateConstructorUsedError;
  String get barcode => throw _privateConstructorUsedError;
  String get battery_type => throw _privateConstructorUsedError;
  MerchantModel get merchant => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LicensePlateModelCopyWith<LicensePlateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LicensePlateModelCopyWith<$Res> {
  factory $LicensePlateModelCopyWith(
          LicensePlateModel value, $Res Function(LicensePlateModel) then) =
      _$LicensePlateModelCopyWithImpl<$Res, LicensePlateModel>;
  @useResult
  $Res call(
      {int id,
      String plate_number,
      String barcode,
      String battery_type,
      MerchantModel merchant});

  $MerchantModelCopyWith<$Res> get merchant;
}

/// @nodoc
class _$LicensePlateModelCopyWithImpl<$Res, $Val extends LicensePlateModel>
    implements $LicensePlateModelCopyWith<$Res> {
  _$LicensePlateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? plate_number = null,
    Object? barcode = null,
    Object? battery_type = null,
    Object? merchant = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      plate_number: null == plate_number
          ? _value.plate_number
          : plate_number // ignore: cast_nullable_to_non_nullable
              as String,
      barcode: null == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
      battery_type: null == battery_type
          ? _value.battery_type
          : battery_type // ignore: cast_nullable_to_non_nullable
              as String,
      merchant: null == merchant
          ? _value.merchant
          : merchant // ignore: cast_nullable_to_non_nullable
              as MerchantModel,
    ) as $Val);
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
abstract class _$$_LicensePlateModelCopyWith<$Res>
    implements $LicensePlateModelCopyWith<$Res> {
  factory _$$_LicensePlateModelCopyWith(_$_LicensePlateModel value,
          $Res Function(_$_LicensePlateModel) then) =
      __$$_LicensePlateModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String plate_number,
      String barcode,
      String battery_type,
      MerchantModel merchant});

  @override
  $MerchantModelCopyWith<$Res> get merchant;
}

/// @nodoc
class __$$_LicensePlateModelCopyWithImpl<$Res>
    extends _$LicensePlateModelCopyWithImpl<$Res, _$_LicensePlateModel>
    implements _$$_LicensePlateModelCopyWith<$Res> {
  __$$_LicensePlateModelCopyWithImpl(
      _$_LicensePlateModel _value, $Res Function(_$_LicensePlateModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? plate_number = null,
    Object? barcode = null,
    Object? battery_type = null,
    Object? merchant = null,
  }) {
    return _then(_$_LicensePlateModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      plate_number: null == plate_number
          ? _value.plate_number
          : plate_number // ignore: cast_nullable_to_non_nullable
              as String,
      barcode: null == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
      battery_type: null == battery_type
          ? _value.battery_type
          : battery_type // ignore: cast_nullable_to_non_nullable
              as String,
      merchant: null == merchant
          ? _value.merchant
          : merchant // ignore: cast_nullable_to_non_nullable
              as MerchantModel,
    ));
  }
}

/// @nodoc

class _$_LicensePlateModel extends _LicensePlateModel {
  const _$_LicensePlateModel(
      {required this.id,
      required this.plate_number,
      required this.barcode,
      required this.battery_type,
      required this.merchant})
      : super._();

  @override
  final int id;
  @override
  final String plate_number;
  @override
  final String barcode;
  @override
  final String battery_type;
  @override
  final MerchantModel merchant;

  @override
  String toString() {
    return 'LicensePlateModel(id: $id, plate_number: $plate_number, barcode: $barcode, battery_type: $battery_type, merchant: $merchant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LicensePlateModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.plate_number, plate_number) ||
                other.plate_number == plate_number) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.battery_type, battery_type) ||
                other.battery_type == battery_type) &&
            (identical(other.merchant, merchant) ||
                other.merchant == merchant));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, plate_number, barcode, battery_type, merchant);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LicensePlateModelCopyWith<_$_LicensePlateModel> get copyWith =>
      __$$_LicensePlateModelCopyWithImpl<_$_LicensePlateModel>(
          this, _$identity);
}

abstract class _LicensePlateModel extends LicensePlateModel {
  const factory _LicensePlateModel(
      {required final int id,
      required final String plate_number,
      required final String barcode,
      required final String battery_type,
      required final MerchantModel merchant}) = _$_LicensePlateModel;
  const _LicensePlateModel._() : super._();

  @override
  int get id;
  @override
  String get plate_number;
  @override
  String get barcode;
  @override
  String get battery_type;
  @override
  MerchantModel get merchant;
  @override
  @JsonKey(ignore: true)
  _$$_LicensePlateModelCopyWith<_$_LicensePlateModel> get copyWith =>
      throw _privateConstructorUsedError;
}
