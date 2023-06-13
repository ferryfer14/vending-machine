// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'caraousel_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CaraouselModel {
  int? get id => throw _privateConstructorUsedError;
  String? get images => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CaraouselModelCopyWith<CaraouselModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CaraouselModelCopyWith<$Res> {
  factory $CaraouselModelCopyWith(
          CaraouselModel value, $Res Function(CaraouselModel) then) =
      _$CaraouselModelCopyWithImpl<$Res, CaraouselModel>;
  @useResult
  $Res call({int? id, String? images});
}

/// @nodoc
class _$CaraouselModelCopyWithImpl<$Res, $Val extends CaraouselModel>
    implements $CaraouselModelCopyWith<$Res> {
  _$CaraouselModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CaraouselModelCopyWith<$Res>
    implements $CaraouselModelCopyWith<$Res> {
  factory _$$_CaraouselModelCopyWith(
          _$_CaraouselModel value, $Res Function(_$_CaraouselModel) then) =
      __$$_CaraouselModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? images});
}

/// @nodoc
class __$$_CaraouselModelCopyWithImpl<$Res>
    extends _$CaraouselModelCopyWithImpl<$Res, _$_CaraouselModel>
    implements _$$_CaraouselModelCopyWith<$Res> {
  __$$_CaraouselModelCopyWithImpl(
      _$_CaraouselModel _value, $Res Function(_$_CaraouselModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? images = freezed,
  }) {
    return _then(_$_CaraouselModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_CaraouselModel extends _CaraouselModel {
  const _$_CaraouselModel({this.id, this.images}) : super._();

  @override
  final int? id;
  @override
  final String? images;

  @override
  String toString() {
    return 'CaraouselModel(id: $id, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CaraouselModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.images, images) || other.images == images));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, images);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CaraouselModelCopyWith<_$_CaraouselModel> get copyWith =>
      __$$_CaraouselModelCopyWithImpl<_$_CaraouselModel>(this, _$identity);
}

abstract class _CaraouselModel extends CaraouselModel {
  const factory _CaraouselModel({final int? id, final String? images}) =
      _$_CaraouselModel;
  const _CaraouselModel._() : super._();

  @override
  int? get id;
  @override
  String? get images;
  @override
  @JsonKey(ignore: true)
  _$$_CaraouselModelCopyWith<_$_CaraouselModel> get copyWith =>
      throw _privateConstructorUsedError;
}
