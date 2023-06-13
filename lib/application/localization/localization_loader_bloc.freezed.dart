// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'localization_loader_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocalizationLoaderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isRefresh) started,
    required TResult Function(String locale) localeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isRefresh)? started,
    TResult? Function(String locale)? localeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isRefresh)? started,
    TResult Function(String locale)? localeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LocaleChanged value) localeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LocaleChanged value)? localeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LocaleChanged value)? localeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalizationLoaderEventCopyWith<$Res> {
  factory $LocalizationLoaderEventCopyWith(LocalizationLoaderEvent value,
          $Res Function(LocalizationLoaderEvent) then) =
      _$LocalizationLoaderEventCopyWithImpl<$Res, LocalizationLoaderEvent>;
}

/// @nodoc
class _$LocalizationLoaderEventCopyWithImpl<$Res,
        $Val extends LocalizationLoaderEvent>
    implements $LocalizationLoaderEventCopyWith<$Res> {
  _$LocalizationLoaderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isRefresh});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$LocalizationLoaderEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRefresh = null,
  }) {
    return _then(_$_Started(
      isRefresh: null == isRefresh
          ? _value.isRefresh
          : isRefresh // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started({this.isRefresh = false});

  @override
  @JsonKey()
  final bool isRefresh;

  @override
  String toString() {
    return 'LocalizationLoaderEvent.started(isRefresh: $isRefresh)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            (identical(other.isRefresh, isRefresh) ||
                other.isRefresh == isRefresh));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isRefresh);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isRefresh) started,
    required TResult Function(String locale) localeChanged,
  }) {
    return started(isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isRefresh)? started,
    TResult? Function(String locale)? localeChanged,
  }) {
    return started?.call(isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isRefresh)? started,
    TResult Function(String locale)? localeChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(isRefresh);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LocaleChanged value) localeChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LocaleChanged value)? localeChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LocaleChanged value)? localeChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements LocalizationLoaderEvent {
  const factory _Started({final bool isRefresh}) = _$_Started;

  bool get isRefresh;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LocaleChangedCopyWith<$Res> {
  factory _$$_LocaleChangedCopyWith(
          _$_LocaleChanged value, $Res Function(_$_LocaleChanged) then) =
      __$$_LocaleChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String locale});
}

/// @nodoc
class __$$_LocaleChangedCopyWithImpl<$Res>
    extends _$LocalizationLoaderEventCopyWithImpl<$Res, _$_LocaleChanged>
    implements _$$_LocaleChangedCopyWith<$Res> {
  __$$_LocaleChangedCopyWithImpl(
      _$_LocaleChanged _value, $Res Function(_$_LocaleChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(_$_LocaleChanged(
      null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LocaleChanged implements _LocaleChanged {
  const _$_LocaleChanged(this.locale);

  @override
  final String locale;

  @override
  String toString() {
    return 'LocalizationLoaderEvent.localeChanged(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocaleChanged &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocaleChangedCopyWith<_$_LocaleChanged> get copyWith =>
      __$$_LocaleChangedCopyWithImpl<_$_LocaleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isRefresh) started,
    required TResult Function(String locale) localeChanged,
  }) {
    return localeChanged(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isRefresh)? started,
    TResult? Function(String locale)? localeChanged,
  }) {
    return localeChanged?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isRefresh)? started,
    TResult Function(String locale)? localeChanged,
    required TResult orElse(),
  }) {
    if (localeChanged != null) {
      return localeChanged(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LocaleChanged value) localeChanged,
  }) {
    return localeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LocaleChanged value)? localeChanged,
  }) {
    return localeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LocaleChanged value)? localeChanged,
    required TResult orElse(),
  }) {
    if (localeChanged != null) {
      return localeChanged(this);
    }
    return orElse();
  }
}

abstract class _LocaleChanged implements LocalizationLoaderEvent {
  const factory _LocaleChanged(final String locale) = _$_LocaleChanged;

  String get locale;
  @JsonKey(ignore: true)
  _$$_LocaleChangedCopyWith<_$_LocaleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LocalizationLoaderState {
  String get located => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocalizationLoaderStateCopyWith<LocalizationLoaderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalizationLoaderStateCopyWith<$Res> {
  factory $LocalizationLoaderStateCopyWith(LocalizationLoaderState value,
          $Res Function(LocalizationLoaderState) then) =
      _$LocalizationLoaderStateCopyWithImpl<$Res, LocalizationLoaderState>;
  @useResult
  $Res call({String located, String version, bool isLoading});
}

/// @nodoc
class _$LocalizationLoaderStateCopyWithImpl<$Res,
        $Val extends LocalizationLoaderState>
    implements $LocalizationLoaderStateCopyWith<$Res> {
  _$LocalizationLoaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? located = null,
    Object? version = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      located: null == located
          ? _value.located
          : located // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocalizationLoaderStateCopyWith<$Res>
    implements $LocalizationLoaderStateCopyWith<$Res> {
  factory _$$_LocalizationLoaderStateCopyWith(_$_LocalizationLoaderState value,
          $Res Function(_$_LocalizationLoaderState) then) =
      __$$_LocalizationLoaderStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String located, String version, bool isLoading});
}

/// @nodoc
class __$$_LocalizationLoaderStateCopyWithImpl<$Res>
    extends _$LocalizationLoaderStateCopyWithImpl<$Res,
        _$_LocalizationLoaderState>
    implements _$$_LocalizationLoaderStateCopyWith<$Res> {
  __$$_LocalizationLoaderStateCopyWithImpl(_$_LocalizationLoaderState _value,
      $Res Function(_$_LocalizationLoaderState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? located = null,
    Object? version = null,
    Object? isLoading = null,
  }) {
    return _then(_$_LocalizationLoaderState(
      located: null == located
          ? _value.located
          : located // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LocalizationLoaderState implements _LocalizationLoaderState {
  const _$_LocalizationLoaderState(
      {required this.located, required this.version, required this.isLoading});

  @override
  final String located;
  @override
  final String version;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'LocalizationLoaderState(located: $located, version: $version, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocalizationLoaderState &&
            (identical(other.located, located) || other.located == located) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, located, version, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocalizationLoaderStateCopyWith<_$_LocalizationLoaderState>
      get copyWith =>
          __$$_LocalizationLoaderStateCopyWithImpl<_$_LocalizationLoaderState>(
              this, _$identity);
}

abstract class _LocalizationLoaderState implements LocalizationLoaderState {
  const factory _LocalizationLoaderState(
      {required final String located,
      required final String version,
      required final bool isLoading}) = _$_LocalizationLoaderState;

  @override
  String get located;
  @override
  String get version;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_LocalizationLoaderStateCopyWith<_$_LocalizationLoaderState>
      get copyWith => throw _privateConstructorUsedError;
}
