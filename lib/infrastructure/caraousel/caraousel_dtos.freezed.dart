// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'caraousel_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CaraouselModelDto _$CaraouselModelDtoFromJson(Map<String, dynamic> json) {
  return _CaraouselModelDto.fromJson(json);
}

/// @nodoc
mixin _$CaraouselModelDto {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  String? get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CaraouselModelDtoCopyWith<CaraouselModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CaraouselModelDtoCopyWith<$Res> {
  factory $CaraouselModelDtoCopyWith(
          CaraouselModelDto value, $Res Function(CaraouselModelDto) then) =
      _$CaraouselModelDtoCopyWithImpl<$Res, CaraouselModelDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'images') String? images});
}

/// @nodoc
class _$CaraouselModelDtoCopyWithImpl<$Res, $Val extends CaraouselModelDto>
    implements $CaraouselModelDtoCopyWith<$Res> {
  _$CaraouselModelDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CaraouselModelDtoCopyWith<$Res>
    implements $CaraouselModelDtoCopyWith<$Res> {
  factory _$$_CaraouselModelDtoCopyWith(_$_CaraouselModelDto value,
          $Res Function(_$_CaraouselModelDto) then) =
      __$$_CaraouselModelDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'images') String? images});
}

/// @nodoc
class __$$_CaraouselModelDtoCopyWithImpl<$Res>
    extends _$CaraouselModelDtoCopyWithImpl<$Res, _$_CaraouselModelDto>
    implements _$$_CaraouselModelDtoCopyWith<$Res> {
  __$$_CaraouselModelDtoCopyWithImpl(
      _$_CaraouselModelDto _value, $Res Function(_$_CaraouselModelDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? images = freezed,
  }) {
    return _then(_$_CaraouselModelDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CaraouselModelDto extends _CaraouselModelDto {
  const _$_CaraouselModelDto(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'images') this.images})
      : super._();

  factory _$_CaraouselModelDto.fromJson(Map<String, dynamic> json) =>
      _$$_CaraouselModelDtoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'images')
  final String? images;

  @override
  String toString() {
    return 'CaraouselModelDto(id: $id, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CaraouselModelDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.images, images) || other.images == images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, images);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CaraouselModelDtoCopyWith<_$_CaraouselModelDto> get copyWith =>
      __$$_CaraouselModelDtoCopyWithImpl<_$_CaraouselModelDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CaraouselModelDtoToJson(
      this,
    );
  }
}

abstract class _CaraouselModelDto extends CaraouselModelDto {
  const factory _CaraouselModelDto(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'images') final String? images}) = _$_CaraouselModelDto;
  const _CaraouselModelDto._() : super._();

  factory _CaraouselModelDto.fromJson(Map<String, dynamic> json) =
      _$_CaraouselModelDto.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'images')
  String? get images;
  @override
  @JsonKey(ignore: true)
  _$$_CaraouselModelDtoCopyWith<_$_CaraouselModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}
