// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vending_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VendingModelDto _$VendingModelDtoFromJson(Map<String, dynamic> json) {
  return _VendingModelDto.fromJson(json);
}

/// @nodoc
mixin _$VendingModelDto {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'vending_id')
  String? get vending_id => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'row_slot')
  int? get row_slot => throw _privateConstructorUsedError;
  @JsonKey(name: 'col_slot')
  int? get col_slot => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VendingModelDtoCopyWith<VendingModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendingModelDtoCopyWith<$Res> {
  factory $VendingModelDtoCopyWith(
          VendingModelDto value, $Res Function(VendingModelDto) then) =
      _$VendingModelDtoCopyWithImpl<$Res, VendingModelDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'vending_id') String? vending_id,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'row_slot') int? row_slot,
      @JsonKey(name: 'col_slot') int? col_slot,
      @JsonKey(name: 'status') String? status});
}

/// @nodoc
class _$VendingModelDtoCopyWithImpl<$Res, $Val extends VendingModelDto>
    implements $VendingModelDtoCopyWith<$Res> {
  _$VendingModelDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? vending_id = freezed,
    Object? address = freezed,
    Object? row_slot = freezed,
    Object? col_slot = freezed,
    Object? status = freezed,
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
      vending_id: freezed == vending_id
          ? _value.vending_id
          : vending_id // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      row_slot: freezed == row_slot
          ? _value.row_slot
          : row_slot // ignore: cast_nullable_to_non_nullable
              as int?,
      col_slot: freezed == col_slot
          ? _value.col_slot
          : col_slot // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VendingModelDtoCopyWith<$Res>
    implements $VendingModelDtoCopyWith<$Res> {
  factory _$$_VendingModelDtoCopyWith(
          _$_VendingModelDto value, $Res Function(_$_VendingModelDto) then) =
      __$$_VendingModelDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'vending_id') String? vending_id,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'row_slot') int? row_slot,
      @JsonKey(name: 'col_slot') int? col_slot,
      @JsonKey(name: 'status') String? status});
}

/// @nodoc
class __$$_VendingModelDtoCopyWithImpl<$Res>
    extends _$VendingModelDtoCopyWithImpl<$Res, _$_VendingModelDto>
    implements _$$_VendingModelDtoCopyWith<$Res> {
  __$$_VendingModelDtoCopyWithImpl(
      _$_VendingModelDto _value, $Res Function(_$_VendingModelDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? vending_id = freezed,
    Object? address = freezed,
    Object? row_slot = freezed,
    Object? col_slot = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_VendingModelDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      vending_id: freezed == vending_id
          ? _value.vending_id
          : vending_id // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      row_slot: freezed == row_slot
          ? _value.row_slot
          : row_slot // ignore: cast_nullable_to_non_nullable
              as int?,
      col_slot: freezed == col_slot
          ? _value.col_slot
          : col_slot // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VendingModelDto extends _VendingModelDto {
  const _$_VendingModelDto(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'vending_id') this.vending_id,
      @JsonKey(name: 'address') this.address,
      @JsonKey(name: 'row_slot') this.row_slot,
      @JsonKey(name: 'col_slot') this.col_slot,
      @JsonKey(name: 'status') this.status})
      : super._();

  factory _$_VendingModelDto.fromJson(Map<String, dynamic> json) =>
      _$$_VendingModelDtoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'vending_id')
  final String? vending_id;
  @override
  @JsonKey(name: 'address')
  final String? address;
  @override
  @JsonKey(name: 'row_slot')
  final int? row_slot;
  @override
  @JsonKey(name: 'col_slot')
  final int? col_slot;
  @override
  @JsonKey(name: 'status')
  final String? status;

  @override
  String toString() {
    return 'VendingModelDto(id: $id, name: $name, vending_id: $vending_id, address: $address, row_slot: $row_slot, col_slot: $col_slot, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VendingModelDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.vending_id, vending_id) ||
                other.vending_id == vending_id) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.row_slot, row_slot) ||
                other.row_slot == row_slot) &&
            (identical(other.col_slot, col_slot) ||
                other.col_slot == col_slot) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, vending_id, address, row_slot, col_slot, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VendingModelDtoCopyWith<_$_VendingModelDto> get copyWith =>
      __$$_VendingModelDtoCopyWithImpl<_$_VendingModelDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VendingModelDtoToJson(
      this,
    );
  }
}

abstract class _VendingModelDto extends VendingModelDto {
  const factory _VendingModelDto(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'vending_id') final String? vending_id,
      @JsonKey(name: 'address') final String? address,
      @JsonKey(name: 'row_slot') final int? row_slot,
      @JsonKey(name: 'col_slot') final int? col_slot,
      @JsonKey(name: 'status') final String? status}) = _$_VendingModelDto;
  const _VendingModelDto._() : super._();

  factory _VendingModelDto.fromJson(Map<String, dynamic> json) =
      _$_VendingModelDto.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'vending_id')
  String? get vending_id;
  @override
  @JsonKey(name: 'address')
  String? get address;
  @override
  @JsonKey(name: 'row_slot')
  int? get row_slot;
  @override
  @JsonKey(name: 'col_slot')
  int? get col_slot;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$_VendingModelDtoCopyWith<_$_VendingModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}
