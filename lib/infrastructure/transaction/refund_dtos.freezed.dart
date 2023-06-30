// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refund_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RefundModelDto _$RefundModelDtoFromJson(Map<String, dynamic> json) {
  return _RefundModelDto.fromJson(json);
}

/// @nodoc
mixin _$RefundModelDto {
  @JsonKey(name: 'status')
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'qr_string')
  String? get qr_string => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RefundModelDtoCopyWith<RefundModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefundModelDtoCopyWith<$Res> {
  factory $RefundModelDtoCopyWith(
          RefundModelDto value, $Res Function(RefundModelDto) then) =
      _$RefundModelDtoCopyWithImpl<$Res, RefundModelDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'qr_string') String? qr_string});
}

/// @nodoc
class _$RefundModelDtoCopyWithImpl<$Res, $Val extends RefundModelDto>
    implements $RefundModelDtoCopyWith<$Res> {
  _$RefundModelDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? qr_string = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      qr_string: freezed == qr_string
          ? _value.qr_string
          : qr_string // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RefundModelDtoCopyWith<$Res>
    implements $RefundModelDtoCopyWith<$Res> {
  factory _$$_RefundModelDtoCopyWith(
          _$_RefundModelDto value, $Res Function(_$_RefundModelDto) then) =
      __$$_RefundModelDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'qr_string') String? qr_string});
}

/// @nodoc
class __$$_RefundModelDtoCopyWithImpl<$Res>
    extends _$RefundModelDtoCopyWithImpl<$Res, _$_RefundModelDto>
    implements _$$_RefundModelDtoCopyWith<$Res> {
  __$$_RefundModelDtoCopyWithImpl(
      _$_RefundModelDto _value, $Res Function(_$_RefundModelDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? qr_string = freezed,
  }) {
    return _then(_$_RefundModelDto(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      qr_string: freezed == qr_string
          ? _value.qr_string
          : qr_string // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RefundModelDto extends _RefundModelDto {
  const _$_RefundModelDto(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'qr_string') this.qr_string})
      : super._();

  factory _$_RefundModelDto.fromJson(Map<String, dynamic> json) =>
      _$$_RefundModelDtoFromJson(json);

  @override
  @JsonKey(name: 'status')
  final bool? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'qr_string')
  final String? qr_string;

  @override
  String toString() {
    return 'RefundModelDto(status: $status, message: $message, qr_string: $qr_string)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RefundModelDto &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.qr_string, qr_string) ||
                other.qr_string == qr_string));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, qr_string);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RefundModelDtoCopyWith<_$_RefundModelDto> get copyWith =>
      __$$_RefundModelDtoCopyWithImpl<_$_RefundModelDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RefundModelDtoToJson(
      this,
    );
  }
}

abstract class _RefundModelDto extends RefundModelDto {
  const factory _RefundModelDto(
      {@JsonKey(name: 'status') final bool? status,
      @JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'qr_string') final String? qr_string}) = _$_RefundModelDto;
  const _RefundModelDto._() : super._();

  factory _RefundModelDto.fromJson(Map<String, dynamic> json) =
      _$_RefundModelDto.fromJson;

  @override
  @JsonKey(name: 'status')
  bool? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'qr_string')
  String? get qr_string;
  @override
  @JsonKey(ignore: true)
  _$$_RefundModelDtoCopyWith<_$_RefundModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}
