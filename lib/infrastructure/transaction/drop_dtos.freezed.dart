// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drop_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DropModelDto _$DropModelDtoFromJson(Map<String, dynamic> json) {
  return _DropModelDto.fromJson(json);
}

/// @nodoc
mixin _$DropModelDto {
  @JsonKey(name: 'slot_number')
  int? get slot_number => throw _privateConstructorUsedError;
  @JsonKey(name: 'slot')
  int? get slot => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  int? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity_success')
  int? get quantity_success => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity_error')
  int? get quantity_error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DropModelDtoCopyWith<DropModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DropModelDtoCopyWith<$Res> {
  factory $DropModelDtoCopyWith(
          DropModelDto value, $Res Function(DropModelDto) then) =
      _$DropModelDtoCopyWithImpl<$Res, DropModelDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'slot_number') int? slot_number,
      @JsonKey(name: 'slot') int? slot,
      @JsonKey(name: 'amount') int? amount,
      @JsonKey(name: 'quantity_success') int? quantity_success,
      @JsonKey(name: 'quantity_error') int? quantity_error});
}

/// @nodoc
class _$DropModelDtoCopyWithImpl<$Res, $Val extends DropModelDto>
    implements $DropModelDtoCopyWith<$Res> {
  _$DropModelDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$_DropModelDtoCopyWith<$Res>
    implements $DropModelDtoCopyWith<$Res> {
  factory _$$_DropModelDtoCopyWith(
          _$_DropModelDto value, $Res Function(_$_DropModelDto) then) =
      __$$_DropModelDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'slot_number') int? slot_number,
      @JsonKey(name: 'slot') int? slot,
      @JsonKey(name: 'amount') int? amount,
      @JsonKey(name: 'quantity_success') int? quantity_success,
      @JsonKey(name: 'quantity_error') int? quantity_error});
}

/// @nodoc
class __$$_DropModelDtoCopyWithImpl<$Res>
    extends _$DropModelDtoCopyWithImpl<$Res, _$_DropModelDto>
    implements _$$_DropModelDtoCopyWith<$Res> {
  __$$_DropModelDtoCopyWithImpl(
      _$_DropModelDto _value, $Res Function(_$_DropModelDto) _then)
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
    return _then(_$_DropModelDto(
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
@JsonSerializable()
class _$_DropModelDto extends _DropModelDto {
  const _$_DropModelDto(
      {@JsonKey(name: 'slot_number') this.slot_number,
      @JsonKey(name: 'slot') this.slot,
      @JsonKey(name: 'amount') this.amount,
      @JsonKey(name: 'quantity_success') this.quantity_success,
      @JsonKey(name: 'quantity_error') this.quantity_error})
      : super._();

  factory _$_DropModelDto.fromJson(Map<String, dynamic> json) =>
      _$$_DropModelDtoFromJson(json);

  @override
  @JsonKey(name: 'slot_number')
  final int? slot_number;
  @override
  @JsonKey(name: 'slot')
  final int? slot;
  @override
  @JsonKey(name: 'amount')
  final int? amount;
  @override
  @JsonKey(name: 'quantity_success')
  final int? quantity_success;
  @override
  @JsonKey(name: 'quantity_error')
  final int? quantity_error;

  @override
  String toString() {
    return 'DropModelDto(slot_number: $slot_number, slot: $slot, amount: $amount, quantity_success: $quantity_success, quantity_error: $quantity_error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DropModelDto &&
            (identical(other.slot_number, slot_number) ||
                other.slot_number == slot_number) &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.quantity_success, quantity_success) ||
                other.quantity_success == quantity_success) &&
            (identical(other.quantity_error, quantity_error) ||
                other.quantity_error == quantity_error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, slot_number, slot, amount, quantity_success, quantity_error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DropModelDtoCopyWith<_$_DropModelDto> get copyWith =>
      __$$_DropModelDtoCopyWithImpl<_$_DropModelDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DropModelDtoToJson(
      this,
    );
  }
}

abstract class _DropModelDto extends DropModelDto {
  const factory _DropModelDto(
          {@JsonKey(name: 'slot_number') final int? slot_number,
          @JsonKey(name: 'slot') final int? slot,
          @JsonKey(name: 'amount') final int? amount,
          @JsonKey(name: 'quantity_success') final int? quantity_success,
          @JsonKey(name: 'quantity_error') final int? quantity_error}) =
      _$_DropModelDto;
  const _DropModelDto._() : super._();

  factory _DropModelDto.fromJson(Map<String, dynamic> json) =
      _$_DropModelDto.fromJson;

  @override
  @JsonKey(name: 'slot_number')
  int? get slot_number;
  @override
  @JsonKey(name: 'slot')
  int? get slot;
  @override
  @JsonKey(name: 'amount')
  int? get amount;
  @override
  @JsonKey(name: 'quantity_success')
  int? get quantity_success;
  @override
  @JsonKey(name: 'quantity_error')
  int? get quantity_error;
  @override
  @JsonKey(ignore: true)
  _$$_DropModelDtoCopyWith<_$_DropModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}
