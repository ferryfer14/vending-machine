// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PageModelDto _$PageModelDtoFromJson(Map<String, dynamic> json) {
  return _PageModelDto.fromJson(json);
}

/// @nodoc
mixin _$PageModelDto {
  @JsonKey(name: 'content')
  List<SlotModelDto>? get slotDto => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int? get total_pages => throw _privateConstructorUsedError;
  @JsonKey(name: 'last')
  bool? get last => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageModelDtoCopyWith<PageModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageModelDtoCopyWith<$Res> {
  factory $PageModelDtoCopyWith(
          PageModelDto value, $Res Function(PageModelDto) then) =
      _$PageModelDtoCopyWithImpl<$Res, PageModelDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'content') List<SlotModelDto>? slotDto,
      @JsonKey(name: 'total_pages') int? total_pages,
      @JsonKey(name: 'last') bool? last});
}

/// @nodoc
class _$PageModelDtoCopyWithImpl<$Res, $Val extends PageModelDto>
    implements $PageModelDtoCopyWith<$Res> {
  _$PageModelDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slotDto = freezed,
    Object? total_pages = freezed,
    Object? last = freezed,
  }) {
    return _then(_value.copyWith(
      slotDto: freezed == slotDto
          ? _value.slotDto
          : slotDto // ignore: cast_nullable_to_non_nullable
              as List<SlotModelDto>?,
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
abstract class _$$_PageModelDtoCopyWith<$Res>
    implements $PageModelDtoCopyWith<$Res> {
  factory _$$_PageModelDtoCopyWith(
          _$_PageModelDto value, $Res Function(_$_PageModelDto) then) =
      __$$_PageModelDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'content') List<SlotModelDto>? slotDto,
      @JsonKey(name: 'total_pages') int? total_pages,
      @JsonKey(name: 'last') bool? last});
}

/// @nodoc
class __$$_PageModelDtoCopyWithImpl<$Res>
    extends _$PageModelDtoCopyWithImpl<$Res, _$_PageModelDto>
    implements _$$_PageModelDtoCopyWith<$Res> {
  __$$_PageModelDtoCopyWithImpl(
      _$_PageModelDto _value, $Res Function(_$_PageModelDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slotDto = freezed,
    Object? total_pages = freezed,
    Object? last = freezed,
  }) {
    return _then(_$_PageModelDto(
      slotDto: freezed == slotDto
          ? _value._slotDto
          : slotDto // ignore: cast_nullable_to_non_nullable
              as List<SlotModelDto>?,
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
@JsonSerializable()
class _$_PageModelDto extends _PageModelDto {
  const _$_PageModelDto(
      {@JsonKey(name: 'content') final List<SlotModelDto>? slotDto,
      @JsonKey(name: 'total_pages') this.total_pages,
      @JsonKey(name: 'last') this.last})
      : _slotDto = slotDto,
        super._();

  factory _$_PageModelDto.fromJson(Map<String, dynamic> json) =>
      _$$_PageModelDtoFromJson(json);

  final List<SlotModelDto>? _slotDto;
  @override
  @JsonKey(name: 'content')
  List<SlotModelDto>? get slotDto {
    final value = _slotDto;
    if (value == null) return null;
    if (_slotDto is EqualUnmodifiableListView) return _slotDto;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'total_pages')
  final int? total_pages;
  @override
  @JsonKey(name: 'last')
  final bool? last;

  @override
  String toString() {
    return 'PageModelDto(slotDto: $slotDto, total_pages: $total_pages, last: $last)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PageModelDto &&
            const DeepCollectionEquality().equals(other._slotDto, _slotDto) &&
            (identical(other.total_pages, total_pages) ||
                other.total_pages == total_pages) &&
            (identical(other.last, last) || other.last == last));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_slotDto), total_pages, last);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PageModelDtoCopyWith<_$_PageModelDto> get copyWith =>
      __$$_PageModelDtoCopyWithImpl<_$_PageModelDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PageModelDtoToJson(
      this,
    );
  }
}

abstract class _PageModelDto extends PageModelDto {
  const factory _PageModelDto(
      {@JsonKey(name: 'content') final List<SlotModelDto>? slotDto,
      @JsonKey(name: 'total_pages') final int? total_pages,
      @JsonKey(name: 'last') final bool? last}) = _$_PageModelDto;
  const _PageModelDto._() : super._();

  factory _PageModelDto.fromJson(Map<String, dynamic> json) =
      _$_PageModelDto.fromJson;

  @override
  @JsonKey(name: 'content')
  List<SlotModelDto>? get slotDto;
  @override
  @JsonKey(name: 'total_pages')
  int? get total_pages;
  @override
  @JsonKey(name: 'last')
  bool? get last;
  @override
  @JsonKey(ignore: true)
  _$$_PageModelDtoCopyWith<_$_PageModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}
