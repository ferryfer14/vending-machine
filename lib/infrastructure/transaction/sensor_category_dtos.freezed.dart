// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sensor_category_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SensorCategoryDto _$SensorCategoryDtoFromJson(Map<String, dynamic> json) {
  return _SensorCategoryDto.fromJson(json);
}

/// @nodoc
mixin _$SensorCategoryDto {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SensorCategoryDtoCopyWith<SensorCategoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SensorCategoryDtoCopyWith<$Res> {
  factory $SensorCategoryDtoCopyWith(
          SensorCategoryDto value, $Res Function(SensorCategoryDto) then) =
      _$SensorCategoryDtoCopyWithImpl<$Res, SensorCategoryDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$SensorCategoryDtoCopyWithImpl<$Res, $Val extends SensorCategoryDto>
    implements $SensorCategoryDtoCopyWith<$Res> {
  _$SensorCategoryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SensorCategoryDtoCopyWith<$Res>
    implements $SensorCategoryDtoCopyWith<$Res> {
  factory _$$_SensorCategoryDtoCopyWith(_$_SensorCategoryDto value,
          $Res Function(_$_SensorCategoryDto) then) =
      __$$_SensorCategoryDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$_SensorCategoryDtoCopyWithImpl<$Res>
    extends _$SensorCategoryDtoCopyWithImpl<$Res, _$_SensorCategoryDto>
    implements _$$_SensorCategoryDtoCopyWith<$Res> {
  __$$_SensorCategoryDtoCopyWithImpl(
      _$_SensorCategoryDto _value, $Res Function(_$_SensorCategoryDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_SensorCategoryDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SensorCategoryDto extends _SensorCategoryDto {
  const _$_SensorCategoryDto(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name})
      : super._();

  factory _$_SensorCategoryDto.fromJson(Map<String, dynamic> json) =>
      _$$_SensorCategoryDtoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString() {
    return 'SensorCategoryDto(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SensorCategoryDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SensorCategoryDtoCopyWith<_$_SensorCategoryDto> get copyWith =>
      __$$_SensorCategoryDtoCopyWithImpl<_$_SensorCategoryDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SensorCategoryDtoToJson(
      this,
    );
  }
}

abstract class _SensorCategoryDto extends SensorCategoryDto {
  const factory _SensorCategoryDto(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'name') final String? name}) = _$_SensorCategoryDto;
  const _SensorCategoryDto._() : super._();

  factory _SensorCategoryDto.fromJson(Map<String, dynamic> json) =
      _$_SensorCategoryDto.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_SensorCategoryDtoCopyWith<_$_SensorCategoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}
