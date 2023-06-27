// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drop_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DropModel {
  int? get slot_number => throw _privateConstructorUsedError;
  int? get slot => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;
  int? get quantity_success => throw _privateConstructorUsedError;
  int? get quantity_error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DropModelCopyWith<DropModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DropModelCopyWith<$Res> {
  factory $DropModelCopyWith(DropModel value, $Res Function(DropModel) then) =
      _$DropModelCopyWithImpl<$Res, DropModel>;
  @useResult
  $Res call(
      {int? slot_number,
      int? slot,
      int? amount,
      int? quantity_success,
      int? quantity_error});
}

/// @nodoc
class _$DropModelCopyWithImpl<$Res, $Val extends DropModel>
    implements $DropModelCopyWith<$Res> {
  _$DropModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot_number = freezed,
    Object? slot = freezed,
    Object? amount = freezed,
    Object? quantity_success = freezed,
    Object? quantity_error = freezed,
  }) {
    return _then(_value.copyWith(
      slot_number: freezed == slot_number
          ? _value.slot_number
          : slot_number // ignore: cast_nullable_to_non_nullable
              as int?,
      slot: freezed == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity_success: freezed == quantity_success
          ? _value.quantity_success
          : quantity_success // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity_error: freezed == quantity_error
          ? _value.quantity_error
          : quantity_error // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DropModelCopyWith<$Res> implements $DropModelCopyWith<$Res> {
  factory _$$_DropModelCopyWith(
          _$_DropModel value, $Res Function(_$_DropModel) then) =
      __$$_DropModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? slot_number,
      int? slot,
      int? amount,
      int? quantity_success,
      int? quantity_error});
}

/// @nodoc
class __$$_DropModelCopyWithImpl<$Res>
    extends _$DropModelCopyWithImpl<$Res, _$_DropModel>
    implements _$$_DropModelCopyWith<$Res> {
  __$$_DropModelCopyWithImpl(
      _$_DropModel _value, $Res Function(_$_DropModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot_number = freezed,
    Object? slot = freezed,
    Object? amount = freezed,
    Object? quantity_success = freezed,
    Object? quantity_error = freezed,
  }) {
    return _then(_$_DropModel(
      slot_number: freezed == slot_number
          ? _value.slot_number
          : slot_number // ignore: cast_nullable_to_non_nullable
              as int?,
      slot: freezed == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity_success: freezed == quantity_success
          ? _value.quantity_success
          : quantity_success // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity_error: freezed == quantity_error
          ? _value.quantity_error
          : quantity_error // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_DropModel extends _DropModel {
  const _$_DropModel(
      {this.slot_number,
      this.slot,
      this.amount,
      this.quantity_success,
      this.quantity_error})
      : super._();

  @override
  final int? slot_number;
  @override
  final int? slot;
  @override
  final int? amount;
  @override
  final int? quantity_success;
  @override
  final int? quantity_error;

  @override
  String toString() {
    return 'DropModel(slot_number: $slot_number, slot: $slot, amount: $amount, quantity_success: $quantity_success, quantity_error: $quantity_error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DropModel &&
            (identical(other.slot_number, slot_number) ||
                other.slot_number == slot_number) &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.quantity_success, quantity_success) ||
                other.quantity_success == quantity_success) &&
            (identical(other.quantity_error, quantity_error) ||
                other.quantity_error == quantity_error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, slot_number, slot, amount, quantity_success, quantity_error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DropModelCopyWith<_$_DropModel> get copyWith =>
      __$$_DropModelCopyWithImpl<_$_DropModel>(this, _$identity);
}

abstract class _DropModel extends DropModel {
  const factory _DropModel(
      {final int? slot_number,
      final int? slot,
      final int? amount,
      final int? quantity_success,
      final int? quantity_error}) = _$_DropModel;
  const _DropModel._() : super._();

  @override
  int? get slot_number;
  @override
  int? get slot;
  @override
  int? get amount;
  @override
  int? get quantity_success;
  @override
  int? get quantity_error;
  @override
  @JsonKey(ignore: true)
  _$$_DropModelCopyWith<_$_DropModel> get copyWith =>
      throw _privateConstructorUsedError;
}
