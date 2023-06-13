// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'license_plate_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LicensePlateModelDto _$LicensePlateModelDtoFromJson(Map<String, dynamic> json) {
  return _LicensePlateModelDto.fromJson(json);
}

/// @nodoc
mixin _$LicensePlateModelDto {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'plate_number')
  String? get plate_number => throw _privateConstructorUsedError;
  @JsonKey(name: 'barcode')
  String? get barcode => throw _privateConstructorUsedError;
  @JsonKey(name: 'battery_type')
  String? get battery_type => throw _privateConstructorUsedError;
  @JsonKey(name: 'merchant')
  MerchantModelDto? get merchant => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LicensePlateModelDtoCopyWith<LicensePlateModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LicensePlateModelDtoCopyWith<$Res> {
  factory $LicensePlateModelDtoCopyWith(LicensePlateModelDto value,
          $Res Function(LicensePlateModelDto) then) =
      _$LicensePlateModelDtoCopyWithImpl<$Res, LicensePlateModelDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'plate_number') String? plate_number,
      @JsonKey(name: 'barcode') String? barcode,
      @JsonKey(name: 'battery_type') String? battery_type,
      @JsonKey(name: 'merchant') MerchantModelDto? merchant});

  $MerchantModelDtoCopyWith<$Res>? get merchant;
}

/// @nodoc
class _$LicensePlateModelDtoCopyWithImpl<$Res,
        $Val extends LicensePlateModelDto>
    implements $LicensePlateModelDtoCopyWith<$Res> {
  _$LicensePlateModelDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? plate_number = freezed,
    Object? barcode = freezed,
    Object? battery_type = freezed,
    Object? merchant = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      plate_number: freezed == plate_number
          ? _value.plate_number
          : plate_number // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      battery_type: freezed == battery_type
          ? _value.battery_type
          : battery_type // ignore: cast_nullable_to_non_nullable
              as String?,
      merchant: freezed == merchant
          ? _value.merchant
          : merchant // ignore: cast_nullable_to_non_nullable
              as MerchantModelDto?,
    ) as $Val);
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
abstract class _$$_LicensePlateModelDtoCopyWith<$Res>
    implements $LicensePlateModelDtoCopyWith<$Res> {
  factory _$$_LicensePlateModelDtoCopyWith(_$_LicensePlateModelDto value,
          $Res Function(_$_LicensePlateModelDto) then) =
      __$$_LicensePlateModelDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'plate_number') String? plate_number,
      @JsonKey(name: 'barcode') String? barcode,
      @JsonKey(name: 'battery_type') String? battery_type,
      @JsonKey(name: 'merchant') MerchantModelDto? merchant});

  @override
  $MerchantModelDtoCopyWith<$Res>? get merchant;
}

/// @nodoc
class __$$_LicensePlateModelDtoCopyWithImpl<$Res>
    extends _$LicensePlateModelDtoCopyWithImpl<$Res, _$_LicensePlateModelDto>
    implements _$$_LicensePlateModelDtoCopyWith<$Res> {
  __$$_LicensePlateModelDtoCopyWithImpl(_$_LicensePlateModelDto _value,
      $Res Function(_$_LicensePlateModelDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? plate_number = freezed,
    Object? barcode = freezed,
    Object? battery_type = freezed,
    Object? merchant = freezed,
  }) {
    return _then(_$_LicensePlateModelDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      plate_number: freezed == plate_number
          ? _value.plate_number
          : plate_number // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      battery_type: freezed == battery_type
          ? _value.battery_type
          : battery_type // ignore: cast_nullable_to_non_nullable
              as String?,
      merchant: freezed == merchant
          ? _value.merchant
          : merchant // ignore: cast_nullable_to_non_nullable
              as MerchantModelDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LicensePlateModelDto extends _LicensePlateModelDto {
  const _$_LicensePlateModelDto(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'plate_number') this.plate_number,
      @JsonKey(name: 'barcode') this.barcode,
      @JsonKey(name: 'battery_type') this.battery_type,
      @JsonKey(name: 'merchant') this.merchant})
      : super._();

  factory _$_LicensePlateModelDto.fromJson(Map<String, dynamic> json) =>
      _$$_LicensePlateModelDtoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'plate_number')
  final String? plate_number;
  @override
  @JsonKey(name: 'barcode')
  final String? barcode;
  @override
  @JsonKey(name: 'battery_type')
  final String? battery_type;
  @override
  @JsonKey(name: 'merchant')
  final MerchantModelDto? merchant;

  @override
  String toString() {
    return 'LicensePlateModelDto(id: $id, plate_number: $plate_number, barcode: $barcode, battery_type: $battery_type, merchant: $merchant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LicensePlateModelDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.plate_number, plate_number) ||
                other.plate_number == plate_number) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.battery_type, battery_type) ||
                other.battery_type == battery_type) &&
            (identical(other.merchant, merchant) ||
                other.merchant == merchant));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, plate_number, barcode, battery_type, merchant);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LicensePlateModelDtoCopyWith<_$_LicensePlateModelDto> get copyWith =>
      __$$_LicensePlateModelDtoCopyWithImpl<_$_LicensePlateModelDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LicensePlateModelDtoToJson(
      this,
    );
  }
}

abstract class _LicensePlateModelDto extends LicensePlateModelDto {
  const factory _LicensePlateModelDto(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'plate_number') final String? plate_number,
          @JsonKey(name: 'barcode') final String? barcode,
          @JsonKey(name: 'battery_type') final String? battery_type,
          @JsonKey(name: 'merchant') final MerchantModelDto? merchant}) =
      _$_LicensePlateModelDto;
  const _LicensePlateModelDto._() : super._();

  factory _LicensePlateModelDto.fromJson(Map<String, dynamic> json) =
      _$_LicensePlateModelDto.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'plate_number')
  String? get plate_number;
  @override
  @JsonKey(name: 'barcode')
  String? get barcode;
  @override
  @JsonKey(name: 'battery_type')
  String? get battery_type;
  @override
  @JsonKey(name: 'merchant')
  MerchantModelDto? get merchant;
  @override
  @JsonKey(ignore: true)
  _$$_LicensePlateModelDtoCopyWith<_$_LicensePlateModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}
