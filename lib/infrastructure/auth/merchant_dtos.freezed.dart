// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merchant_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MerchantModelDto _$MerchantModelDtoFromJson(Map<String, dynamic> json) {
  return _MerchantModelDto.fromJson(json);
}

/// @nodoc
mixin _$MerchantModelDto {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'merchant_id')
  String? get merchant_id => throw _privateConstructorUsedError;
  @JsonKey(name: 'merchant_name')
  String? get merchant_name => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  bool? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MerchantModelDtoCopyWith<MerchantModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchantModelDtoCopyWith<$Res> {
  factory $MerchantModelDtoCopyWith(
          MerchantModelDto value, $Res Function(MerchantModelDto) then) =
      _$MerchantModelDtoCopyWithImpl<$Res, MerchantModelDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'merchant_id') String? merchant_id,
      @JsonKey(name: 'merchant_name') String? merchant_name,
      @JsonKey(name: 'status') bool? status});
}

/// @nodoc
class _$MerchantModelDtoCopyWithImpl<$Res, $Val extends MerchantModelDto>
    implements $MerchantModelDtoCopyWith<$Res> {
  _$MerchantModelDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? merchant_id = freezed,
    Object? merchant_name = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      merchant_id: freezed == merchant_id
          ? _value.merchant_id
          : merchant_id // ignore: cast_nullable_to_non_nullable
              as String?,
      merchant_name: freezed == merchant_name
          ? _value.merchant_name
          : merchant_name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MerchantModelDtoCopyWith<$Res>
    implements $MerchantModelDtoCopyWith<$Res> {
  factory _$$_MerchantModelDtoCopyWith(
          _$_MerchantModelDto value, $Res Function(_$_MerchantModelDto) then) =
      __$$_MerchantModelDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'merchant_id') String? merchant_id,
      @JsonKey(name: 'merchant_name') String? merchant_name,
      @JsonKey(name: 'status') bool? status});
}

/// @nodoc
class __$$_MerchantModelDtoCopyWithImpl<$Res>
    extends _$MerchantModelDtoCopyWithImpl<$Res, _$_MerchantModelDto>
    implements _$$_MerchantModelDtoCopyWith<$Res> {
  __$$_MerchantModelDtoCopyWithImpl(
      _$_MerchantModelDto _value, $Res Function(_$_MerchantModelDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? merchant_id = freezed,
    Object? merchant_name = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_MerchantModelDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      merchant_id: freezed == merchant_id
          ? _value.merchant_id
          : merchant_id // ignore: cast_nullable_to_non_nullable
              as String?,
      merchant_name: freezed == merchant_name
          ? _value.merchant_name
          : merchant_name // ignore: cast_nullable_to_non_nullable
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
class _$_MerchantModelDto extends _MerchantModelDto {
  const _$_MerchantModelDto(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'merchant_id') this.merchant_id,
      @JsonKey(name: 'merchant_name') this.merchant_name,
      @JsonKey(name: 'status') this.status})
      : super._();

  factory _$_MerchantModelDto.fromJson(Map<String, dynamic> json) =>
      _$$_MerchantModelDtoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'merchant_id')
  final String? merchant_id;
  @override
  @JsonKey(name: 'merchant_name')
  final String? merchant_name;
  @override
  @JsonKey(name: 'status')
  final bool? status;

  @override
  String toString() {
    return 'MerchantModelDto(id: $id, merchant_id: $merchant_id, merchant_name: $merchant_name, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MerchantModelDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.merchant_id, merchant_id) ||
                other.merchant_id == merchant_id) &&
            (identical(other.merchant_name, merchant_name) ||
                other.merchant_name == merchant_name) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, merchant_id, merchant_name, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MerchantModelDtoCopyWith<_$_MerchantModelDto> get copyWith =>
      __$$_MerchantModelDtoCopyWithImpl<_$_MerchantModelDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MerchantModelDtoToJson(
      this,
    );
  }
}

abstract class _MerchantModelDto extends MerchantModelDto {
  const factory _MerchantModelDto(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'merchant_id') final String? merchant_id,
      @JsonKey(name: 'merchant_name') final String? merchant_name,
      @JsonKey(name: 'status') final bool? status}) = _$_MerchantModelDto;
  const _MerchantModelDto._() : super._();

  factory _MerchantModelDto.fromJson(Map<String, dynamic> json) =
      _$_MerchantModelDto.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'merchant_id')
  String? get merchant_id;
  @override
  @JsonKey(name: 'merchant_name')
  String? get merchant_name;
  @override
  @JsonKey(name: 'status')
  bool? get status;
  @override
  @JsonKey(ignore: true)
  _$$_MerchantModelDtoCopyWith<_$_MerchantModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}
