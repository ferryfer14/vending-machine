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
  @JsonKey(name: 'price')
  int? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'stock')
  int? get stock => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'price') int? price,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'image_url') String? image,
      @JsonKey(name: 'stock') int? stock});
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
    Object? price = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? stock = freezed,
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
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
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
      @JsonKey(name: 'price') int? price,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'image_url') String? image,
      @JsonKey(name: 'stock') int? stock});
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
    Object? price = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? stock = freezed,
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
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductModelDto extends _ProductModelDto {
  const _$_ProductModelDto(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'image_url') this.image,
      @JsonKey(name: 'stock') this.stock})
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
  @JsonKey(name: 'price')
  final int? price;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'image_url')
  final String? image;
  @override
  @JsonKey(name: 'stock')
  final int? stock;

  @override
  String toString() {
    return 'ProductModelDto(id: $id, name: $name, price: $price, description: $description, image: $image, stock: $stock)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductModelDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.stock, stock) || other.stock == stock));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, price, description, image, stock);

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
      @JsonKey(name: 'price') final int? price,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'image_url') final String? image,
      @JsonKey(name: 'stock') final int? stock}) = _$_ProductModelDto;
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
  @JsonKey(name: 'price')
  int? get price;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'image_url')
  String? get image;
  @override
  @JsonKey(name: 'stock')
  int? get stock;
  @override
  @JsonKey(ignore: true)
  _$$_ProductModelDtoCopyWith<_$_ProductModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}
