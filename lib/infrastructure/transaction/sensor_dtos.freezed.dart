// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sensor_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SensorModelDto _$SensorModelDtoFromJson(Map<String, dynamic> json) {
  return _SensorModelDto.fromJson(json);
}

/// @nodoc
mixin _$SensorModelDto {
  @JsonKey(name: 'code')
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'value')
  bool? get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'slot_name')
  int? get slotName => throw _privateConstructorUsedError;
  @JsonKey(name: 'slot')
  int? get slot => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SensorModelDtoCopyWith<SensorModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SensorModelDtoCopyWith<$Res> {
  factory $SensorModelDtoCopyWith(
          SensorModelDto value, $Res Function(SensorModelDto) then) =
      _$SensorModelDtoCopyWithImpl<$Res, SensorModelDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'code') String? code,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'value') bool? value,
      @JsonKey(name: 'slot_name') int? slotName,
      @JsonKey(name: 'slot') int? slot});
}

/// @nodoc
class _$SensorModelDtoCopyWithImpl<$Res, $Val extends SensorModelDto>
    implements $SensorModelDtoCopyWith<$Res> {
  _$SensorModelDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? description = freezed,
    Object? value = freezed,
    Object? slotName = freezed,
    Object? slot = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool?,
      slotName: freezed == slotName
          ? _value.slotName
          : slotName // ignore: cast_nullable_to_non_nullable
              as int?,
      slot: freezed == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SensorModelDtoCopyWith<$Res>
    implements $SensorModelDtoCopyWith<$Res> {
  factory _$$_SensorModelDtoCopyWith(
          _$_SensorModelDto value, $Res Function(_$_SensorModelDto) then) =
      __$$_SensorModelDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code') String? code,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'value') bool? value,
      @JsonKey(name: 'slot_name') int? slotName,
      @JsonKey(name: 'slot') int? slot});
}

/// @nodoc
class __$$_SensorModelDtoCopyWithImpl<$Res>
    extends _$SensorModelDtoCopyWithImpl<$Res, _$_SensorModelDto>
    implements _$$_SensorModelDtoCopyWith<$Res> {
  __$$_SensorModelDtoCopyWithImpl(
      _$_SensorModelDto _value, $Res Function(_$_SensorModelDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? description = freezed,
    Object? value = freezed,
    Object? slotName = freezed,
    Object? slot = freezed,
  }) {
    return _then(_$_SensorModelDto(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool?,
      slotName: freezed == slotName
          ? _value.slotName
          : slotName // ignore: cast_nullable_to_non_nullable
              as int?,
      slot: freezed == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SensorModelDto extends _SensorModelDto {
  const _$_SensorModelDto(
      {@JsonKey(name: 'code') this.code,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'value') this.value,
      @JsonKey(name: 'slot_name') this.slotName,
      @JsonKey(name: 'slot') this.slot})
      : super._();

  factory _$_SensorModelDto.fromJson(Map<String, dynamic> json) =>
      _$$_SensorModelDtoFromJson(json);

  @override
  @JsonKey(name: 'code')
  final String? code;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'value')
  final bool? value;
  @override
  @JsonKey(name: 'slot_name')
  final int? slotName;
  @override
  @JsonKey(name: 'slot')
  final int? slot;

  @override
  String toString() {
    return 'SensorModelDto(code: $code, description: $description, value: $value, slotName: $slotName, slot: $slot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SensorModelDto &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.slotName, slotName) ||
                other.slotName == slotName) &&
            (identical(other.slot, slot) || other.slot == slot));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, code, description, value, slotName, slot);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SensorModelDtoCopyWith<_$_SensorModelDto> get copyWith =>
      __$$_SensorModelDtoCopyWithImpl<_$_SensorModelDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SensorModelDtoToJson(
      this,
    );
  }
}

abstract class _SensorModelDto extends SensorModelDto {
  const factory _SensorModelDto(
      {@JsonKey(name: 'code') final String? code,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'value') final bool? value,
      @JsonKey(name: 'slot_name') final int? slotName,
      @JsonKey(name: 'slot') final int? slot}) = _$_SensorModelDto;
  const _SensorModelDto._() : super._();

  factory _SensorModelDto.fromJson(Map<String, dynamic> json) =
      _$_SensorModelDto.fromJson;

  @override
  @JsonKey(name: 'code')
  String? get code;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'value')
  bool? get value;
  @override
  @JsonKey(name: 'slot_name')
  int? get slotName;
  @override
  @JsonKey(name: 'slot')
  int? get slot;
  @override
  @JsonKey(ignore: true)
  _$$_SensorModelDtoCopyWith<_$_SensorModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}
