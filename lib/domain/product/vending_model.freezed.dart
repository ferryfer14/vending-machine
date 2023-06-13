// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vending_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VendingModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get vending_id => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  int? get row_slot => throw _privateConstructorUsedError;
  int? get col_slot => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VendingModelCopyWith<VendingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendingModelCopyWith<$Res> {
  factory $VendingModelCopyWith(
          VendingModel value, $Res Function(VendingModel) then) =
      _$VendingModelCopyWithImpl<$Res, VendingModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? vending_id,
      String? address,
      int? row_slot,
      int? col_slot,
      String? status});
}

/// @nodoc
class _$VendingModelCopyWithImpl<$Res, $Val extends VendingModel>
    implements $VendingModelCopyWith<$Res> {
  _$VendingModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_VendingModelCopyWith<$Res>
    implements $VendingModelCopyWith<$Res> {
  factory _$$_VendingModelCopyWith(
          _$_VendingModel value, $Res Function(_$_VendingModel) then) =
      __$$_VendingModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? vending_id,
      String? address,
      int? row_slot,
      int? col_slot,
      String? status});
}

/// @nodoc
class __$$_VendingModelCopyWithImpl<$Res>
    extends _$VendingModelCopyWithImpl<$Res, _$_VendingModel>
    implements _$$_VendingModelCopyWith<$Res> {
  __$$_VendingModelCopyWithImpl(
      _$_VendingModel _value, $Res Function(_$_VendingModel) _then)
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
    return _then(_$_VendingModel(
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

class _$_VendingModel extends _VendingModel {
  const _$_VendingModel(
      {this.id,
      this.name,
      this.vending_id,
      this.address,
      this.row_slot,
      this.col_slot,
      this.status})
      : super._();

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? vending_id;
  @override
  final String? address;
  @override
  final int? row_slot;
  @override
  final int? col_slot;
  @override
  final String? status;

  @override
  String toString() {
    return 'VendingModel(id: $id, name: $name, vending_id: $vending_id, address: $address, row_slot: $row_slot, col_slot: $col_slot, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VendingModel &&
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

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, vending_id, address, row_slot, col_slot, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VendingModelCopyWith<_$_VendingModel> get copyWith =>
      __$$_VendingModelCopyWithImpl<_$_VendingModel>(this, _$identity);
}

abstract class _VendingModel extends VendingModel {
  const factory _VendingModel(
      {final int? id,
      final String? name,
      final String? vending_id,
      final String? address,
      final int? row_slot,
      final int? col_slot,
      final String? status}) = _$_VendingModel;
  const _VendingModel._() : super._();

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get vending_id;
  @override
  String? get address;
  @override
  int? get row_slot;
  @override
  int? get col_slot;
  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$_VendingModelCopyWith<_$_VendingModel> get copyWith =>
      throw _privateConstructorUsedError;
}
