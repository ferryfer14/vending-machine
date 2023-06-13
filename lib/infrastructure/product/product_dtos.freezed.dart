// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductModelDto _$ProductModelDtoFromJson(Map<String, dynamic> json) {
  return _ProductModelDto.fromJson(json);
}

/// @nodoc
mixin _$ProductModelDto {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'sku')
  String? get sku => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelDtoCopyWith<ProductModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelDtoCopyWith<$Res> {
  factory $ProductModelDtoCopyWith(
          ProductModelDto value, $Res Function(ProductModelDto) then) =
      _$ProductModelDtoCopyWithImpl<$Res, ProductModelDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'sku') String? sku,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'image') String? image});
}

/// @nodoc
class _$ProductModelDtoCopyWithImpl<$Res, $Val extends ProductModelDto>
    implements $ProductModelDtoCopyWith<$Res> {
  _$ProductModelDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? sku = freezed,
    Object? description = freezed,
    Object? image = freezed,
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
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductModelDtoCopyWith<$Res>
    implements $ProductModelDtoCopyWith<$Res> {
  factory _$$_ProductModelDtoCopyWith(
          _$_ProductModelDto value, $Res Function(_$_ProductModelDto) then) =
      __$$_ProductModelDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'sku') String? sku,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'image') String? image});
}

/// @nodoc
class __$$_ProductModelDtoCopyWithImpl<$Res>
    extends _$ProductModelDtoCopyWithImpl<$Res, _$_ProductModelDto>
    implements _$$_ProductModelDtoCopyWith<$Res> {
  __$$_ProductModelDtoCopyWithImpl(
      _$_ProductModelDto _value, $Res Function(_$_ProductModelDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? sku = freezed,
    Object? description = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_ProductModelDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductModelDto extends _ProductModelDto {
  const _$_ProductModelDto(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'sku') this.sku,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'image') this.image})
      : super._();

  factory _$_ProductModelDto.fromJson(Map<String, dynamic> json) =>
      _$$_ProductModelDtoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'sku')
  final String? sku;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'image')
  final String? image;

  @override
  String toString() {
    return 'ProductModelDto(id: $id, name: $name, sku: $sku, description: $description, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductModelDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, sku, description, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductModelDtoCopyWith<_$_ProductModelDto> get copyWith =>
      __$$_ProductModelDtoCopyWithImpl<_$_ProductModelDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductModelDtoToJson(
      this,
    );
  }
}

abstract class _ProductModelDto extends ProductModelDto {
  const factory _ProductModelDto(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'sku') final String? sku,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'image') final String? image}) = _$_ProductModelDto;
  const _ProductModelDto._() : super._();

  factory _ProductModelDto.fromJson(Map<String, dynamic> json) =
      _$_ProductModelDto.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'sku')
  String? get sku;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$_ProductModelDtoCopyWith<_$_ProductModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}
