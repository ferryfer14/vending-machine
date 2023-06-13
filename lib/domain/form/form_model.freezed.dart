// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FormModel {
  String? get created_at => throw _privateConstructorUsedError;
  String? get fullname => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FormModelCopyWith<FormModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormModelCopyWith<$Res> {
  factory $FormModelCopyWith(FormModel value, $Res Function(FormModel) then) =
      _$FormModelCopyWithImpl<$Res, FormModel>;
  @useResult
  $Res call(
      {String? created_at, String? fullname, String? email, String? phone});
}

/// @nodoc
class _$FormModelCopyWithImpl<$Res, $Val extends FormModel>
    implements $FormModelCopyWith<$Res> {
  _$FormModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? created_at = freezed,
    Object? fullname = freezed,
    Object? email = freezed,
    Object? phone = freezed,
  }) {
    return _then(_value.copyWith(
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FormModelCopyWith<$Res> implements $FormModelCopyWith<$Res> {
  factory _$$_FormModelCopyWith(
          _$_FormModel value, $Res Function(_$_FormModel) then) =
      __$$_FormModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? created_at, String? fullname, String? email, String? phone});
}

/// @nodoc
class __$$_FormModelCopyWithImpl<$Res>
    extends _$FormModelCopyWithImpl<$Res, _$_FormModel>
    implements _$$_FormModelCopyWith<$Res> {
  __$$_FormModelCopyWithImpl(
      _$_FormModel _value, $Res Function(_$_FormModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? created_at = freezed,
    Object? fullname = freezed,
    Object? email = freezed,
    Object? phone = freezed,
  }) {
    return _then(_$_FormModel(
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_FormModel extends _FormModel {
  const _$_FormModel({this.created_at, this.fullname, this.email, this.phone})
      : super._();

  @override
  final String? created_at;
  @override
  final String? fullname;
  @override
  final String? email;
  @override
  final String? phone;

  @override
  String toString() {
    return 'FormModel(created_at: $created_at, fullname: $fullname, email: $email, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FormModel &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, created_at, fullname, email, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FormModelCopyWith<_$_FormModel> get copyWith =>
      __$$_FormModelCopyWithImpl<_$_FormModel>(this, _$identity);
}

abstract class _FormModel extends FormModel {
  const factory _FormModel(
      {final String? created_at,
      final String? fullname,
      final String? email,
      final String? phone}) = _$_FormModel;
  const _FormModel._() : super._();

  @override
  String? get created_at;
  @override
  String? get fullname;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  @JsonKey(ignore: true)
  _$$_FormModelCopyWith<_$_FormModel> get copyWith =>
      throw _privateConstructorUsedError;
}
