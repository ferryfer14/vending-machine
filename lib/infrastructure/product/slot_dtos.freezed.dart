// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'slot_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SlotModelDto _$SlotModelDtoFromJson(Map<String, dynamic> json) {
  return _SlotModelDto.fromJson(json);
}

/// @nodoc
mixin _$SlotModelDto {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'product')
  ProductModelDto? get product => throw _privateConstructorUsedError;
  @JsonKey(name: 'vending')
  VendingModelDto? get vending => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  int? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'stock')
  int? get stock => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  int? get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SlotModelDtoCopyWith<SlotModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlotModelDtoCopyWith<$Res> {
  factory $SlotModelDtoCopyWith(
          SlotModelDto value, $Res Function(SlotModelDto) then) =
      _$SlotModelDtoCopyWithImpl<$Res, SlotModelDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'product') ProductModelDto? product,
      @JsonKey(name: 'vending') VendingModelDto? vending,
      @JsonKey(name: 'price') int? price,
      @JsonKey(name: 'stock') int? stock,
      @JsonKey(name: 'amount') int? amount});

  $ProductModelDtoCopyWith<$Res>? get product;
  $VendingModelDtoCopyWith<$Res>? get vending;
}

/// @nodoc
class _$SlotModelDtoCopyWithImpl<$Res, $Val extends SlotModelDto>
    implements $SlotModelDtoCopyWith<$Res> {
  _$SlotModelDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? product = freezed,
    Object? vending = freezed,
    Object? price = freezed,
    Object? stock = freezed,
    Object? amount = freezed,
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
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModelDto?,
      vending: freezed == vending
          ? _value.vending
          : vending // ignore: cast_nullable_to_non_nullable
              as VendingModelDto?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductModelDtoCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductModelDtoCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VendingModelDtoCopyWith<$Res>? get vending {
    if (_value.vending == null) {
      return null;
    }

    return $VendingModelDtoCopyWith<$Res>(_value.vending!, (value) {
      return _then(_value.copyWith(vending: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SlotModelDtoCopyWith<$Res>
    implements $SlotModelDtoCopyWith<$Res> {
  factory _$$_SlotModelDtoCopyWith(
          _$_SlotModelDto value, $Res Function(_$_SlotModelDto) then) =
      __$$_SlotModelDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'product') ProductModelDto? product,
      @JsonKey(name: 'vending') VendingModelDto? vending,
      @JsonKey(name: 'price') int? price,
      @JsonKey(name: 'stock') int? stock,
      @JsonKey(name: 'amount') int? amount});

  @override
  $ProductModelDtoCopyWith<$Res>? get product;
  @override
  $VendingModelDtoCopyWith<$Res>? get vending;
}

/// @nodoc
class __$$_SlotModelDtoCopyWithImpl<$Res>
    extends _$SlotModelDtoCopyWithImpl<$Res, _$_SlotModelDto>
    implements _$$_SlotModelDtoCopyWith<$Res> {
  __$$_SlotModelDtoCopyWithImpl(
      _$_SlotModelDto _value, $Res Function(_$_SlotModelDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? product = freezed,
    Object? vending = freezed,
    Object? price = freezed,
    Object? stock = freezed,
    Object? amount = freezed,
  }) {
    return _then(_$_SlotModelDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModelDto?,
      vending: freezed == vending
          ? _value.vending
          : vending // ignore: cast_nullable_to_non_nullable
              as VendingModelDto?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SlotModelDto extends _SlotModelDto {
  const _$_SlotModelDto(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'product') this.product,
      @JsonKey(name: 'vending') this.vending,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'stock') this.stock,
      @JsonKey(name: 'amount') this.amount})
      : super._();

  factory _$_SlotModelDto.fromJson(Map<String, dynamic> json) =>
      _$$_SlotModelDtoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'product')
  final ProductModelDto? product;
  @override
  @JsonKey(name: 'vending')
  final VendingModelDto? vending;
  @override
  @JsonKey(name: 'price')
  final int? price;
  @override
  @JsonKey(name: 'stock')
  final int? stock;
  @override
  @JsonKey(name: 'amount')
  final int? amount;

  @override
  String toString() {
    return 'SlotModelDto(id: $id, name: $name, product: $product, vending: $vending, price: $price, stock: $stock, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SlotModelDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.vending, vending) || other.vending == vending) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, product, vending, price, stock, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SlotModelDtoCopyWith<_$_SlotModelDto> get copyWith =>
      __$$_SlotModelDtoCopyWithImpl<_$_SlotModelDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SlotModelDtoToJson(
      this,
    );
  }
}

abstract class _SlotModelDto extends SlotModelDto {
  const factory _SlotModelDto(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'product') final ProductModelDto? product,
      @JsonKey(name: 'vending') final VendingModelDto? vending,
      @JsonKey(name: 'price') final int? price,
      @JsonKey(name: 'stock') final int? stock,
      @JsonKey(name: 'amount') final int? amount}) = _$_SlotModelDto;
  const _SlotModelDto._() : super._();

  factory _SlotModelDto.fromJson(Map<String, dynamic> json) =
      _$_SlotModelDto.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'product')
  ProductModelDto? get product;
  @override
  @JsonKey(name: 'vending')
  VendingModelDto? get vending;
  @override
  @JsonKey(name: 'price')
  int? get price;
  @override
  @JsonKey(name: 'stock')
  int? get stock;
  @override
  @JsonKey(name: 'amount')
  int? get amount;
  @override
  @JsonKey(ignore: true)
  _$$_SlotModelDtoCopyWith<_$_SlotModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}
