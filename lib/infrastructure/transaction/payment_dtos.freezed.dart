// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentModelDto _$PaymentModelDtoFromJson(Map<String, dynamic> json) {
  return _PaymentModelDto.fromJson(json);
}

/// @nodoc
mixin _$PaymentModelDto {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'xendit_id')
  String? get xendit_id => throw _privateConstructorUsedError;
  @JsonKey(name: 'external_id')
  String? get external_id => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  int? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'qr_string')
  String? get qr_string => throw _privateConstructorUsedError;
  @JsonKey(name: 'callback_url')
  String? get callback_url => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentModelDtoCopyWith<PaymentModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentModelDtoCopyWith<$Res> {
  factory $PaymentModelDtoCopyWith(
          PaymentModelDto value, $Res Function(PaymentModelDto) then) =
      _$PaymentModelDtoCopyWithImpl<$Res, PaymentModelDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'xendit_id') String? xendit_id,
      @JsonKey(name: 'external_id') String? external_id,
      @JsonKey(name: 'amount') int? amount,
      @JsonKey(name: 'qr_string') String? qr_string,
      @JsonKey(name: 'callback_url') String? callback_url,
      @JsonKey(name: 'status') String? status});
}

/// @nodoc
class _$PaymentModelDtoCopyWithImpl<$Res, $Val extends PaymentModelDto>
    implements $PaymentModelDtoCopyWith<$Res> {
  _$PaymentModelDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$_PaymentModelDtoCopyWith<$Res>
    implements $PaymentModelDtoCopyWith<$Res> {
  factory _$$_PaymentModelDtoCopyWith(
          _$_PaymentModelDto value, $Res Function(_$_PaymentModelDto) then) =
      __$$_PaymentModelDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'xendit_id') String? xendit_id,
      @JsonKey(name: 'external_id') String? external_id,
      @JsonKey(name: 'amount') int? amount,
      @JsonKey(name: 'qr_string') String? qr_string,
      @JsonKey(name: 'callback_url') String? callback_url,
      @JsonKey(name: 'status') String? status});
}

/// @nodoc
class __$$_PaymentModelDtoCopyWithImpl<$Res>
    extends _$PaymentModelDtoCopyWithImpl<$Res, _$_PaymentModelDto>
    implements _$$_PaymentModelDtoCopyWith<$Res> {
  __$$_PaymentModelDtoCopyWithImpl(
      _$_PaymentModelDto _value, $Res Function(_$_PaymentModelDto) _then)
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
    return _then(_$_PaymentModelDto(
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
@JsonSerializable()
class _$_PaymentModelDto extends _PaymentModelDto {
  const _$_PaymentModelDto(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'xendit_id') this.xendit_id,
      @JsonKey(name: 'external_id') this.external_id,
      @JsonKey(name: 'amount') this.amount,
      @JsonKey(name: 'qr_string') this.qr_string,
      @JsonKey(name: 'callback_url') this.callback_url,
      @JsonKey(name: 'status') this.status})
      : super._();

  factory _$_PaymentModelDto.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentModelDtoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'xendit_id')
  final String? xendit_id;
  @override
  @JsonKey(name: 'external_id')
  final String? external_id;
  @override
  @JsonKey(name: 'amount')
  final int? amount;
  @override
  @JsonKey(name: 'qr_string')
  final String? qr_string;
  @override
  @JsonKey(name: 'callback_url')
  final String? callback_url;
  @override
  @JsonKey(name: 'status')
  final String? status;

  @override
  String toString() {
    return 'PaymentModelDto(id: $id, xendit_id: $xendit_id, external_id: $external_id, amount: $amount, qr_string: $qr_string, callback_url: $callback_url, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentModelDto &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, xendit_id, external_id,
      amount, qr_string, callback_url, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentModelDtoCopyWith<_$_PaymentModelDto> get copyWith =>
      __$$_PaymentModelDtoCopyWithImpl<_$_PaymentModelDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentModelDtoToJson(
      this,
    );
  }
}

abstract class _PaymentModelDto extends PaymentModelDto {
  const factory _PaymentModelDto(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'xendit_id') final String? xendit_id,
      @JsonKey(name: 'external_id') final String? external_id,
      @JsonKey(name: 'amount') final int? amount,
      @JsonKey(name: 'qr_string') final String? qr_string,
      @JsonKey(name: 'callback_url') final String? callback_url,
      @JsonKey(name: 'status') final String? status}) = _$_PaymentModelDto;
  const _PaymentModelDto._() : super._();

  factory _PaymentModelDto.fromJson(Map<String, dynamic> json) =
      _$_PaymentModelDto.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'xendit_id')
  String? get xendit_id;
  @override
  @JsonKey(name: 'external_id')
  String? get external_id;
  @override
  @JsonKey(name: 'amount')
  int? get amount;
  @override
  @JsonKey(name: 'qr_string')
  String? get qr_string;
  @override
  @JsonKey(name: 'callback_url')
  String? get callback_url;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentModelDtoCopyWith<_$_PaymentModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}
