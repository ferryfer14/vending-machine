// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merchant_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MerchantModel {
  int get id => throw _privateConstructorUsedError;
  String get merchant_id => throw _privateConstructorUsedError;
  String get merchant_name => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MerchantModelCopyWith<MerchantModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchantModelCopyWith<$Res> {
  factory $MerchantModelCopyWith(
          MerchantModel value, $Res Function(MerchantModel) then) =
      _$MerchantModelCopyWithImpl<$Res, MerchantModel>;
  @useResult
  $Res call({int id, String merchant_id, String merchant_name, bool status});
}

/// @nodoc
class _$MerchantModelCopyWithImpl<$Res, $Val extends MerchantModel>
    implements $MerchantModelCopyWith<$Res> {
  _$MerchantModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? merchant_id = null,
    Object? merchant_name = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      merchant_id: null == merchant_id
          ? _value.merchant_id
          : merchant_id // ignore: cast_nullable_to_non_nullable
              as String,
      merchant_name: null == merchant_name
          ? _value.merchant_name
          : merchant_name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MerchantModelCopyWith<$Res>
    implements $MerchantModelCopyWith<$Res> {
  factory _$$_MerchantModelCopyWith(
          _$_MerchantModel value, $Res Function(_$_MerchantModel) then) =
      __$$_MerchantModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String merchant_id, String merchant_name, bool status});
}

/// @nodoc
class __$$_MerchantModelCopyWithImpl<$Res>
    extends _$MerchantModelCopyWithImpl<$Res, _$_MerchantModel>
    implements _$$_MerchantModelCopyWith<$Res> {
  __$$_MerchantModelCopyWithImpl(
      _$_MerchantModel _value, $Res Function(_$_MerchantModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? merchant_id = null,
    Object? merchant_name = null,
    Object? status = null,
  }) {
    return _then(_$_MerchantModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      merchant_id: null == merchant_id
          ? _value.merchant_id
          : merchant_id // ignore: cast_nullable_to_non_nullable
              as String,
      merchant_name: null == merchant_name
          ? _value.merchant_name
          : merchant_name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MerchantModel extends _MerchantModel {
  const _$_MerchantModel(
      {required this.id,
      required this.merchant_id,
      required this.merchant_name,
      required this.status})
      : super._();

  @override
  final int id;
  @override
  final String merchant_id;
  @override
  final String merchant_name;
  @override
  final bool status;

  @override
  String toString() {
    return 'MerchantModel(id: $id, merchant_id: $merchant_id, merchant_name: $merchant_name, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MerchantModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.merchant_id, merchant_id) ||
                other.merchant_id == merchant_id) &&
            (identical(other.merchant_name, merchant_name) ||
                other.merchant_name == merchant_name) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, merchant_id, merchant_name, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MerchantModelCopyWith<_$_MerchantModel> get copyWith =>
      __$$_MerchantModelCopyWithImpl<_$_MerchantModel>(this, _$identity);
}

abstract class _MerchantModel extends MerchantModel {
  const factory _MerchantModel(
      {required final int id,
      required final String merchant_id,
      required final String merchant_name,
      required final bool status}) = _$_MerchantModel;
  const _MerchantModel._() : super._();

  @override
  int get id;
  @override
  String get merchant_id;
  @override
  String get merchant_name;
  @override
  bool get status;
  @override
  @JsonKey(ignore: true)
  _$$_MerchantModelCopyWith<_$_MerchantModel> get copyWith =>
      throw _privateConstructorUsedError;
}
