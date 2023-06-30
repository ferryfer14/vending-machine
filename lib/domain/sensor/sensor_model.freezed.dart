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
  int? get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  bool? get value => throw _privateConstructorUsedError;
  SensorCategoryModel? get sensorCategoryModel =>
      throw _privateConstructorUsedError;
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
      {int? id,
      String? code,
      String? description,
      String? title,
      bool? value,
      SensorCategoryModel? sensorCategoryModel,
      int? slot,
      int? slotName});

  $SensorCategoryModelCopyWith<$Res>? get sensorCategoryModel;
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
    Object? id = freezed,
    Object? code = freezed,
    Object? description = freezed,
    Object? title = freezed,
    Object? value = freezed,
    Object? sensorCategoryModel = freezed,
    Object? slot = freezed,
    Object? slotName = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool?,
      sensorCategoryModel: freezed == sensorCategoryModel
          ? _value.sensorCategoryModel
          : sensorCategoryModel // ignore: cast_nullable_to_non_nullable
              as SensorCategoryModel?,
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

  @override
  @pragma('vm:prefer-inline')
  $SensorCategoryModelCopyWith<$Res>? get sensorCategoryModel {
    if (_value.sensorCategoryModel == null) {
      return null;
    }

    return $SensorCategoryModelCopyWith<$Res>(_value.sensorCategoryModel!,
        (value) {
      return _then(_value.copyWith(sensorCategoryModel: value) as $Val);
    });
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
      {int? id,
      String? code,
      String? description,
      String? title,
      bool? value,
      SensorCategoryModel? sensorCategoryModel,
      int? slot,
      int? slotName});

  @override
  $SensorCategoryModelCopyWith<$Res>? get sensorCategoryModel;
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
    Object? id = freezed,
    Object? code = freezed,
    Object? description = freezed,
    Object? title = freezed,
    Object? value = freezed,
    Object? sensorCategoryModel = freezed,
    Object? slot = freezed,
    Object? slotName = freezed,
  }) {
    return _then(_$_SensorModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool?,
      sensorCategoryModel: freezed == sensorCategoryModel
          ? _value.sensorCategoryModel
          : sensorCategoryModel // ignore: cast_nullable_to_non_nullable
              as SensorCategoryModel?,
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
      {this.id,
      this.code,
      this.description,
      this.title,
      this.value,
      this.sensorCategoryModel,
      this.slot,
      this.slotName})
      : super._();

  @override
  final int? id;
  @override
  final String? code;
  @override
  final String? description;
  @override
  final String? title;
  @override
  final bool? value;
  @override
  final SensorCategoryModel? sensorCategoryModel;
  @override
  final int? slot;
  @override
  final int? slotName;

  @override
  String toString() {
    return 'SensorModel(id: $id, code: $code, description: $description, title: $title, value: $value, sensorCategoryModel: $sensorCategoryModel, slot: $slot, slotName: $slotName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SensorModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.sensorCategoryModel, sensorCategoryModel) ||
                other.sensorCategoryModel == sensorCategoryModel) &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.slotName, slotName) ||
                other.slotName == slotName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, code, description, title,
      value, sensorCategoryModel, slot, slotName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SensorModelCopyWith<_$_SensorModel> get copyWith =>
      __$$_SensorModelCopyWithImpl<_$_SensorModel>(this, _$identity);
}

abstract class _SensorModel extends SensorModel {
  const factory _SensorModel(
      {final int? id,
      final String? code,
      final String? description,
      final String? title,
      final bool? value,
      final SensorCategoryModel? sensorCategoryModel,
      final int? slot,
      final int? slotName}) = _$_SensorModel;
  const _SensorModel._() : super._();

  @override
  int? get id;
  @override
  String? get code;
  @override
  String? get description;
  @override
  String? get title;
  @override
  bool? get value;
  @override
  SensorCategoryModel? get sensorCategoryModel;
  @override
  int? get slot;
  @override
  int? get slotName;
  @override
  @JsonKey(ignore: true)
  _$$_SensorModelCopyWith<_$_SensorModel> get copyWith =>
      throw _privateConstructorUsedError;
}
