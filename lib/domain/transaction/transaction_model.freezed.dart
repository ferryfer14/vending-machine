// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransactionModel {
  int? get id => throw _privateConstructorUsedError;
  String? get transaction_code => throw _privateConstructorUsedError;
  PaymentModel? get payment => throw _privateConstructorUsedError;
  int? get total_amount => throw _privateConstructorUsedError;
  int? get total_cost => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionModelCopyWith<TransactionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionModelCopyWith<$Res> {
  factory $TransactionModelCopyWith(
          TransactionModel value, $Res Function(TransactionModel) then) =
      _$TransactionModelCopyWithImpl<$Res, TransactionModel>;
  @useResult
  $Res call(
      {int? id,
      String? transaction_code,
      PaymentModel? payment,
      int? total_amount,
      int? total_cost,
      String? status});

  $PaymentModelCopyWith<$Res>? get payment;
}

/// @nodoc
class _$TransactionModelCopyWithImpl<$Res, $Val extends TransactionModel>
    implements $TransactionModelCopyWith<$Res> {
  _$TransactionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? transaction_code = freezed,
    Object? payment = freezed,
    Object? total_amount = freezed,
    Object? total_cost = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      transaction_code: freezed == transaction_code
          ? _value.transaction_code
          : transaction_code // ignore: cast_nullable_to_non_nullable
              as String?,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as PaymentModel?,
      total_amount: freezed == total_amount
          ? _value.total_amount
          : total_amount // ignore: cast_nullable_to_non_nullable
              as int?,
      total_cost: freezed == total_cost
          ? _value.total_cost
          : total_cost // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentModelCopyWith<$Res>? get payment {
    if (_value.payment == null) {
      return null;
    }

    return $PaymentModelCopyWith<$Res>(_value.payment!, (value) {
      return _then(_value.copyWith(payment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TransactionModelCopyWith<$Res>
    implements $TransactionModelCopyWith<$Res> {
  factory _$$_TransactionModelCopyWith(
          _$_TransactionModel value, $Res Function(_$_TransactionModel) then) =
      __$$_TransactionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? transaction_code,
      PaymentModel? payment,
      int? total_amount,
      int? total_cost,
      String? status});

  @override
  $PaymentModelCopyWith<$Res>? get payment;
}

/// @nodoc
class __$$_TransactionModelCopyWithImpl<$Res>
    extends _$TransactionModelCopyWithImpl<$Res, _$_TransactionModel>
    implements _$$_TransactionModelCopyWith<$Res> {
  __$$_TransactionModelCopyWithImpl(
      _$_TransactionModel _value, $Res Function(_$_TransactionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? transaction_code = freezed,
    Object? payment = freezed,
    Object? total_amount = freezed,
    Object? total_cost = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_TransactionModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      transaction_code: freezed == transaction_code
          ? _value.transaction_code
          : transaction_code // ignore: cast_nullable_to_non_nullable
              as String?,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as PaymentModel?,
      total_amount: freezed == total_amount
          ? _value.total_amount
          : total_amount // ignore: cast_nullable_to_non_nullable
              as int?,
      total_cost: freezed == total_cost
          ? _value.total_cost
          : total_cost // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TransactionModel extends _TransactionModel {
  const _$_TransactionModel(
      {this.id,
      this.transaction_code,
      this.payment,
      this.total_amount,
      this.total_cost,
      this.status})
      : super._();

  @override
  final int? id;
  @override
  final String? transaction_code;
  @override
  final PaymentModel? payment;
  @override
  final int? total_amount;
  @override
  final int? total_cost;
  @override
  final String? status;

  @override
  String toString() {
    return 'TransactionModel(id: $id, transaction_code: $transaction_code, payment: $payment, total_amount: $total_amount, total_cost: $total_cost, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.transaction_code, transaction_code) ||
                other.transaction_code == transaction_code) &&
            (identical(other.payment, payment) || other.payment == payment) &&
            (identical(other.total_amount, total_amount) ||
                other.total_amount == total_amount) &&
            (identical(other.total_cost, total_cost) ||
                other.total_cost == total_cost) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, transaction_code, payment,
      total_amount, total_cost, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionModelCopyWith<_$_TransactionModel> get copyWith =>
      __$$_TransactionModelCopyWithImpl<_$_TransactionModel>(this, _$identity);
}

abstract class _TransactionModel extends TransactionModel {
  const factory _TransactionModel(
      {final int? id,
      final String? transaction_code,
      final PaymentModel? payment,
      final int? total_amount,
      final int? total_cost,
      final String? status}) = _$_TransactionModel;
  const _TransactionModel._() : super._();

  @override
  int? get id;
  @override
  String? get transaction_code;
  @override
  PaymentModel? get payment;
  @override
  int? get total_amount;
  @override
  int? get total_cost;
  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionModelCopyWith<_$_TransactionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
