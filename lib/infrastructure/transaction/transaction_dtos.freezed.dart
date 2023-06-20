// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionModelDto _$TransactionModelDtoFromJson(Map<String, dynamic> json) {
  return _TransactionModelDto.fromJson(json);
}

/// @nodoc
mixin _$TransactionModelDto {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_code')
  String? get transaction_code => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment')
  PaymentModelDto? get paymentModelDto => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_amount')
  int? get total_amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_cost')
  int? get total_cost => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionModelDtoCopyWith<TransactionModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionModelDtoCopyWith<$Res> {
  factory $TransactionModelDtoCopyWith(
          TransactionModelDto value, $Res Function(TransactionModelDto) then) =
      _$TransactionModelDtoCopyWithImpl<$Res, TransactionModelDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'transaction_code') String? transaction_code,
      @JsonKey(name: 'payment') PaymentModelDto? paymentModelDto,
      @JsonKey(name: 'total_amount') int? total_amount,
      @JsonKey(name: 'total_cost') int? total_cost,
      @JsonKey(name: 'status') String? status});

  $PaymentModelDtoCopyWith<$Res>? get paymentModelDto;
}

/// @nodoc
class _$TransactionModelDtoCopyWithImpl<$Res, $Val extends TransactionModelDto>
    implements $TransactionModelDtoCopyWith<$Res> {
  _$TransactionModelDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? transaction_code = freezed,
    Object? paymentModelDto = freezed,
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
      paymentModelDto: freezed == paymentModelDto
          ? _value.paymentModelDto
          : paymentModelDto // ignore: cast_nullable_to_non_nullable
              as PaymentModelDto?,
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
  $PaymentModelDtoCopyWith<$Res>? get paymentModelDto {
    if (_value.paymentModelDto == null) {
      return null;
    }

    return $PaymentModelDtoCopyWith<$Res>(_value.paymentModelDto!, (value) {
      return _then(_value.copyWith(paymentModelDto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TransactionModelDtoCopyWith<$Res>
    implements $TransactionModelDtoCopyWith<$Res> {
  factory _$$_TransactionModelDtoCopyWith(_$_TransactionModelDto value,
          $Res Function(_$_TransactionModelDto) then) =
      __$$_TransactionModelDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'transaction_code') String? transaction_code,
      @JsonKey(name: 'payment') PaymentModelDto? paymentModelDto,
      @JsonKey(name: 'total_amount') int? total_amount,
      @JsonKey(name: 'total_cost') int? total_cost,
      @JsonKey(name: 'status') String? status});

  @override
  $PaymentModelDtoCopyWith<$Res>? get paymentModelDto;
}

/// @nodoc
class __$$_TransactionModelDtoCopyWithImpl<$Res>
    extends _$TransactionModelDtoCopyWithImpl<$Res, _$_TransactionModelDto>
    implements _$$_TransactionModelDtoCopyWith<$Res> {
  __$$_TransactionModelDtoCopyWithImpl(_$_TransactionModelDto _value,
      $Res Function(_$_TransactionModelDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? transaction_code = freezed,
    Object? paymentModelDto = freezed,
    Object? total_amount = freezed,
    Object? total_cost = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_TransactionModelDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      transaction_code: freezed == transaction_code
          ? _value.transaction_code
          : transaction_code // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentModelDto: freezed == paymentModelDto
          ? _value.paymentModelDto
          : paymentModelDto // ignore: cast_nullable_to_non_nullable
              as PaymentModelDto?,
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
@JsonSerializable()
class _$_TransactionModelDto extends _TransactionModelDto {
  const _$_TransactionModelDto(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'transaction_code') this.transaction_code,
      @JsonKey(name: 'payment') this.paymentModelDto,
      @JsonKey(name: 'total_amount') this.total_amount,
      @JsonKey(name: 'total_cost') this.total_cost,
      @JsonKey(name: 'status') this.status})
      : super._();

  factory _$_TransactionModelDto.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionModelDtoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'transaction_code')
  final String? transaction_code;
  @override
  @JsonKey(name: 'payment')
  final PaymentModelDto? paymentModelDto;
  @override
  @JsonKey(name: 'total_amount')
  final int? total_amount;
  @override
  @JsonKey(name: 'total_cost')
  final int? total_cost;
  @override
  @JsonKey(name: 'status')
  final String? status;

  @override
  String toString() {
    return 'TransactionModelDto(id: $id, transaction_code: $transaction_code, paymentModelDto: $paymentModelDto, total_amount: $total_amount, total_cost: $total_cost, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionModelDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.transaction_code, transaction_code) ||
                other.transaction_code == transaction_code) &&
            (identical(other.paymentModelDto, paymentModelDto) ||
                other.paymentModelDto == paymentModelDto) &&
            (identical(other.total_amount, total_amount) ||
                other.total_amount == total_amount) &&
            (identical(other.total_cost, total_cost) ||
                other.total_cost == total_cost) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, transaction_code,
      paymentModelDto, total_amount, total_cost, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionModelDtoCopyWith<_$_TransactionModelDto> get copyWith =>
      __$$_TransactionModelDtoCopyWithImpl<_$_TransactionModelDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionModelDtoToJson(
      this,
    );
  }
}

abstract class _TransactionModelDto extends TransactionModelDto {
  const factory _TransactionModelDto(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'transaction_code') final String? transaction_code,
      @JsonKey(name: 'payment') final PaymentModelDto? paymentModelDto,
      @JsonKey(name: 'total_amount') final int? total_amount,
      @JsonKey(name: 'total_cost') final int? total_cost,
      @JsonKey(name: 'status') final String? status}) = _$_TransactionModelDto;
  const _TransactionModelDto._() : super._();

  factory _TransactionModelDto.fromJson(Map<String, dynamic> json) =
      _$_TransactionModelDto.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'transaction_code')
  String? get transaction_code;
  @override
  @JsonKey(name: 'payment')
  PaymentModelDto? get paymentModelDto;
  @override
  @JsonKey(name: 'total_amount')
  int? get total_amount;
  @override
  @JsonKey(name: 'total_cost')
  int? get total_cost;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionModelDtoCopyWith<_$_TransactionModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}
