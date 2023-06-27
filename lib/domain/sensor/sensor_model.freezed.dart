// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sensor_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SensorModel {
  String? get code => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool? get value => throw _privateConstructorUsedError;
  int? get slot => throw _privateConstructorUsedError;
  int? get slotName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SensorModelCopyWith<SensorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SensorModelCopyWith<$Res> {
  factory $SensorModelCopyWith(
          SensorModel value, $Res Function(SensorModel) then) =
      _$SensorModelCopyWithImpl<$Res, SensorModel>;
  @useResult
  $Res call(
      {String? code,
      String? description,
      bool? value,
      int? slot,
      int? slotName});
}

/// @nodoc
class _$SensorModelCopyWithImpl<$Res, $Val extends SensorModel>
    implements $SensorModelCopyWith<$Res> {
  _$SensorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? description = freezed,
    Object? value = freezed,
    Object? slot = freezed,
    Object? slotName = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool?,
      slot: freezed == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int?,
      slotName: freezed == slotName
          ? _value.slotName
          : slotName // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SensorModelCopyWith<$Res>
    implements $SensorModelCopyWith<$Res> {
  factory _$$_SensorModelCopyWith(
          _$_SensorModel value, $Res Function(_$_SensorModel) then) =
      __$$_SensorModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? code,
      String? description,
      bool? value,
      int? slot,
      int? slotName});
}

/// @nodoc
class __$$_SensorModelCopyWithImpl<$Res>
    extends _$SensorModelCopyWithImpl<$Res, _$_SensorModel>
    implements _$$_SensorModelCopyWith<$Res> {
  __$$_SensorModelCopyWithImpl(
      _$_SensorModel _value, $Res Function(_$_SensorModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? description = freezed,
    Object? value = freezed,
    Object? slot = freezed,
    Object? slotName = freezed,
  }) {
    return _then(_$_SensorModel(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool?,
      slot: freezed == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int?,
      slotName: freezed == slotName
          ? _value.slotName
          : slotName // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_SensorModel extends _SensorModel {
  const _$_SensorModel(
      {this.code, this.description, this.value, this.slot, this.slotName})
      : super._();

  @override
  final String? code;
  @override
  final String? description;
  @override
  final bool? value;
  @override
  final int? slot;
  @override
  final int? slotName;

  @override
  String toString() {
    return 'SensorModel(code: $code, description: $description, value: $value, slot: $slot, slotName: $slotName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SensorModel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.slotName, slotName) ||
                other.slotName == slotName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, code, description, value, slot, slotName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SensorModelCopyWith<_$_SensorModel> get copyWith =>
      __$$_SensorModelCopyWithImpl<_$_SensorModel>(this, _$identity);
}

abstract class _SensorModel extends SensorModel {
  const factory _SensorModel(
      {final String? code,
      final String? description,
      final bool? value,
      final int? slot,
      final int? slotName}) = _$_SensorModel;
  const _SensorModel._() : super._();

  @override
  String? get code;
  @override
  String? get description;
  @override
  bool? get value;
  @override
  int? get slot;
  @override
  int? get slotName;
  @override
  @JsonKey(ignore: true)
  _$$_SensorModelCopyWith<_$_SensorModel> get copyWith =>
      throw _privateConstructorUsedError;
}
