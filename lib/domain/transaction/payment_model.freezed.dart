// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentModel {
  int? get id => throw _privateConstructorUsedError;
  String? get xendit_id => throw _privateConstructorUsedError;
  String? get external_id => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;
  String? get qr_string => throw _privateConstructorUsedError;
  String? get callback_url => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentModelCopyWith<PaymentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentModelCopyWith<$Res> {
  factory $PaymentModelCopyWith(
          PaymentModel value, $Res Function(PaymentModel) then) =
      _$PaymentModelCopyWithImpl<$Res, PaymentModel>;
  @useResult
  $Res call(
      {int? id,
      String? xendit_id,
      String? external_id,
      int? amount,
      String? qr_string,
      String? callback_url,
      String? status});
}

/// @nodoc
class _$PaymentModelCopyWithImpl<$Res, $Val extends PaymentModel>
    implements $PaymentModelCopyWith<$Res> {
  _$PaymentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? xendit_id = freezed,
    Object? external_id = freezed,
    Object? amount = freezed,
    Object? qr_string = freezed,
    Object? callback_url = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      xendit_id: freezed == xendit_id
          ? _value.xendit_id
          : xendit_id // ignore: cast_nullable_to_non_nullable
              as String?,
      external_id: freezed == external_id
          ? _value.external_id
          : external_id // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      qr_string: freezed == qr_string
          ? _value.qr_string
          : qr_string // ignore: cast_nullable_to_non_nullable
              as String?,
      callback_url: freezed == callback_url
          ? _value.callback_url
          : callback_url // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentModelCopyWith<$Res>
    implements $PaymentModelCopyWith<$Res> {
  factory _$$_PaymentModelCopyWith(
          _$_PaymentModel value, $Res Function(_$_PaymentModel) then) =
      __$$_PaymentModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? xendit_id,
      String? external_id,
      int? amount,
      String? qr_string,
      String? callback_url,
      String? status});
}

/// @nodoc
class __$$_PaymentModelCopyWithImpl<$Res>
    extends _$PaymentModelCopyWithImpl<$Res, _$_PaymentModel>
    implements _$$_PaymentModelCopyWith<$Res> {
  __$$_PaymentModelCopyWithImpl(
      _$_PaymentModel _value, $Res Function(_$_PaymentModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? xendit_id = freezed,
    Object? external_id = freezed,
    Object? amount = freezed,
    Object? qr_string = freezed,
    Object? callback_url = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_PaymentModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      xendit_id: freezed == xendit_id
          ? _value.xendit_id
          : xendit_id // ignore: cast_nullable_to_non_nullable
              as String?,
      external_id: freezed == external_id
          ? _value.external_id
          : external_id // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      qr_string: freezed == qr_string
          ? _value.qr_string
          : qr_string // ignore: cast_nullable_to_non_nullable
              as String?,
      callback_url: freezed == callback_url
          ? _value.callback_url
          : callback_url // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PaymentModel extends _PaymentModel {
  const _$_PaymentModel(
      {this.id,
      this.xendit_id,
      this.external_id,
      this.amount,
      this.qr_string,
      this.callback_url,
      this.status})
      : super._();

  @override
  final int? id;
  @override
  final String? xendit_id;
  @override
  final String? external_id;
  @override
  final int? amount;
  @override
  final String? qr_string;
  @override
  final String? callback_url;
  @override
  final String? status;

  @override
  String toString() {
    return 'PaymentModel(id: $id, xendit_id: $xendit_id, external_id: $external_id, amount: $amount, qr_string: $qr_string, callback_url: $callback_url, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.xendit_id, xendit_id) ||
                other.xendit_id == xendit_id) &&
            (identical(other.external_id, external_id) ||
                other.external_id == external_id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.qr_string, qr_string) ||
                other.qr_string == qr_string) &&
            (identical(other.callback_url, callback_url) ||
                other.callback_url == callback_url) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, xendit_id, external_id,
      amount, qr_string, callback_url, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentModelCopyWith<_$_PaymentModel> get copyWith =>
      __$$_PaymentModelCopyWithImpl<_$_PaymentModel>(this, _$identity);
}

abstract class _PaymentModel extends PaymentModel {
  const factory _PaymentModel(
      {final int? id,
      final String? xendit_id,
      final String? external_id,
      final int? amount,
      final String? qr_string,
      final String? callback_url,
      final String? status}) = _$_PaymentModel;
  const _PaymentModel._() : super._();

  @override
  int? get id;
  @override
  String? get xendit_id;
  @override
  String? get external_id;
  @override
  int? get amount;
  @override
  String? get qr_string;
  @override
  String? get callback_url;
  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentModelCopyWith<_$_PaymentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
