// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PageModel {
  List<SlotModel>? get slot => throw _privateConstructorUsedError;
  int? get total_pages => throw _privateConstructorUsedError;
  bool? get last => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PageModelCopyWith<PageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageModelCopyWith<$Res> {
  factory $PageModelCopyWith(PageModel value, $Res Function(PageModel) then) =
      _$PageModelCopyWithImpl<$Res, PageModel>;
  @useResult
  $Res call({List<SlotModel>? slot, int? total_pages, bool? last});
}

/// @nodoc
class _$PageModelCopyWithImpl<$Res, $Val extends PageModel>
    implements $PageModelCopyWith<$Res> {
  _$PageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = freezed,
    Object? total_pages = freezed,
    Object? last = freezed,
  }) {
    return _then(_value.copyWith(
      slot: freezed == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as List<SlotModel>?,
      total_pages: freezed == total_pages
          ? _value.total_pages
          : total_pages // ignore: cast_nullable_to_non_nullable
              as int?,
      last: freezed == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PageModelCopyWith<$Res> implements $PageModelCopyWith<$Res> {
  factory _$$_PageModelCopyWith(
          _$_PageModel value, $Res Function(_$_PageModel) then) =
      __$$_PageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SlotModel>? slot, int? total_pages, bool? last});
}

/// @nodoc
class __$$_PageModelCopyWithImpl<$Res>
    extends _$PageModelCopyWithImpl<$Res, _$_PageModel>
    implements _$$_PageModelCopyWith<$Res> {
  __$$_PageModelCopyWithImpl(
      _$_PageModel _value, $Res Function(_$_PageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = freezed,
    Object? total_pages = freezed,
    Object? last = freezed,
  }) {
    return _then(_$_PageModel(
      slot: freezed == slot
          ? _value._slot
          : slot // ignore: cast_nullable_to_non_nullable
              as List<SlotModel>?,
      total_pages: freezed == total_pages
          ? _value.total_pages
          : total_pages // ignore: cast_nullable_to_non_nullable
              as int?,
      last: freezed == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_PageModel extends _PageModel {
  const _$_PageModel({final List<SlotModel>? slot, this.total_pages, this.last})
      : _slot = slot,
        super._();

  final List<SlotModel>? _slot;
  @override
  List<SlotModel>? get slot {
    final value = _slot;
    if (value == null) return null;
    if (_slot is EqualUnmodifiableListView) return _slot;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? total_pages;
  @override
  final bool? last;

  @override
  String toString() {
    return 'PageModel(slot: $slot, total_pages: $total_pages, last: $last)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PageModel &&
            const DeepCollectionEquality().equals(other._slot, _slot) &&
            (identical(other.total_pages, total_pages) ||
                other.total_pages == total_pages) &&
            (identical(other.last, last) || other.last == last));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_slot), total_pages, last);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PageModelCopyWith<_$_PageModel> get copyWith =>
      __$$_PageModelCopyWithImpl<_$_PageModel>(this, _$identity);
}

abstract class _PageModel extends PageModel {
  const factory _PageModel(
      {final List<SlotModel>? slot,
      final int? total_pages,
      final bool? last}) = _$_PageModel;
  const _PageModel._() : super._();

  @override
  List<SlotModel>? get slot;
  @override
  int? get total_pages;
  @override
  bool? get last;
  @override
  @JsonKey(ignore: true)
  _$$_PageModelCopyWith<_$_PageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
