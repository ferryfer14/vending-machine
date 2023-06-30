// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sensor_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SensorCategoryModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SensorCategoryModelCopyWith<SensorCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SensorCategoryModelCopyWith<$Res> {
  factory $SensorCategoryModelCopyWith(
          SensorCategoryModel value, $Res Function(SensorCategoryModel) then) =
      _$SensorCategoryModelCopyWithImpl<$Res, SensorCategoryModel>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$SensorCategoryModelCopyWithImpl<$Res, $Val extends SensorCategoryModel>
    implements $SensorCategoryModelCopyWith<$Res> {
  _$SensorCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SensorCategoryModelCopyWith<$Res>
    implements $SensorCategoryModelCopyWith<$Res> {
  factory _$$_SensorCategoryModelCopyWith(_$_SensorCategoryModel value,
          $Res Function(_$_SensorCategoryModel) then) =
      __$$_SensorCategoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$_SensorCategoryModelCopyWithImpl<$Res>
    extends _$SensorCategoryModelCopyWithImpl<$Res, _$_SensorCategoryModel>
    implements _$$_SensorCategoryModelCopyWith<$Res> {
  __$$_SensorCategoryModelCopyWithImpl(_$_SensorCategoryModel _value,
      $Res Function(_$_SensorCategoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_SensorCategoryModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SensorCategoryModel extends _SensorCategoryModel {
  const _$_SensorCategoryModel({this.id, this.name}) : super._();

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'SensorCategoryModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SensorCategoryModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SensorCategoryModelCopyWith<_$_SensorCategoryModel> get copyWith =>
      __$$_SensorCategoryModelCopyWithImpl<_$_SensorCategoryModel>(
          this, _$identity);
}

abstract class _SensorCategoryModel extends SensorCategoryModel {
  const factory _SensorCategoryModel({final int? id, final String? name}) =
      _$_SensorCategoryModel;
  const _SensorCategoryModel._() : super._();

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_SensorCategoryModelCopyWith<_$_SensorCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
