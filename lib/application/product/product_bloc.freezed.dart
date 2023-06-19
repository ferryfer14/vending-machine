// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isRefresh, bool isLoading) started,
    required TResult Function(int page, bool isLoad) loadMore,
    required TResult Function(int amount) changeAmount,
    required TResult Function(SlotModel slotModel, int amount) addAmount,
    required TResult Function(int index, int page) changeIndexStarted,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isRefresh, bool isLoading)? started,
    TResult? Function(int page, bool isLoad)? loadMore,
    TResult? Function(int amount)? changeAmount,
    TResult? Function(SlotModel slotModel, int amount)? addAmount,
    TResult? Function(int index, int page)? changeIndexStarted,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isRefresh, bool isLoading)? started,
    TResult Function(int page, bool isLoad)? loadMore,
    TResult Function(int amount)? changeAmount,
    TResult Function(SlotModel slotModel, int amount)? addAmount,
    TResult Function(int index, int page)? changeIndexStarted,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_ChangeAmount value) changeAmount,
    required TResult Function(_AddAmount value) addAmount,
    required TResult Function(_ChangeIndexStarted value) changeIndexStarted,
    required TResult Function(_Reset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_ChangeAmount value)? changeAmount,
    TResult? Function(_AddAmount value)? addAmount,
    TResult? Function(_ChangeIndexStarted value)? changeIndexStarted,
    TResult? Function(_Reset value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_AddAmount value)? addAmount,
    TResult Function(_ChangeIndexStarted value)? changeIndexStarted,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res, ProductEvent>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res, $Val extends ProductEvent>
    implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

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
  $Res call({bool isRefresh, bool isLoading});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRefresh = null,
    Object? isLoading = null,
  }) {
    return _then(_$_Started(
      isRefresh: null == isRefresh
          ? _value.isRefresh
          : isRefresh // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started({this.isRefresh = false, this.isLoading = false});

  @override
  @JsonKey()
  final bool isRefresh;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'ProductEvent.started(isRefresh: $isRefresh, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            (identical(other.isRefresh, isRefresh) ||
                other.isRefresh == isRefresh) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isRefresh, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isRefresh, bool isLoading) started,
    required TResult Function(int page, bool isLoad) loadMore,
    required TResult Function(int amount) changeAmount,
    required TResult Function(SlotModel slotModel, int amount) addAmount,
    required TResult Function(int index, int page) changeIndexStarted,
    required TResult Function() reset,
  }) {
    return started(isRefresh, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isRefresh, bool isLoading)? started,
    TResult? Function(int page, bool isLoad)? loadMore,
    TResult? Function(int amount)? changeAmount,
    TResult? Function(SlotModel slotModel, int amount)? addAmount,
    TResult? Function(int index, int page)? changeIndexStarted,
    TResult? Function()? reset,
  }) {
    return started?.call(isRefresh, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isRefresh, bool isLoading)? started,
    TResult Function(int page, bool isLoad)? loadMore,
    TResult Function(int amount)? changeAmount,
    TResult Function(SlotModel slotModel, int amount)? addAmount,
    TResult Function(int index, int page)? changeIndexStarted,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(isRefresh, isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_ChangeAmount value) changeAmount,
    required TResult Function(_AddAmount value) addAmount,
    required TResult Function(_ChangeIndexStarted value) changeIndexStarted,
    required TResult Function(_Reset value) reset,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_ChangeAmount value)? changeAmount,
    TResult? Function(_AddAmount value)? addAmount,
    TResult? Function(_ChangeIndexStarted value)? changeIndexStarted,
    TResult? Function(_Reset value)? reset,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_AddAmount value)? addAmount,
    TResult Function(_ChangeIndexStarted value)? changeIndexStarted,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ProductEvent {
  const factory _Started({final bool isRefresh, final bool isLoading}) =
      _$_Started;

  bool get isRefresh;
  bool get isLoading;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadMoreCopyWith<$Res> {
  factory _$$_LoadMoreCopyWith(
          _$_LoadMore value, $Res Function(_$_LoadMore) then) =
      __$$_LoadMoreCopyWithImpl<$Res>;
  @useResult
  $Res call({int page, bool isLoad});
}

/// @nodoc
class __$$_LoadMoreCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$_LoadMore>
    implements _$$_LoadMoreCopyWith<$Res> {
  __$$_LoadMoreCopyWithImpl(
      _$_LoadMore _value, $Res Function(_$_LoadMore) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? isLoad = null,
  }) {
    return _then(_$_LoadMore(
      null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      isLoad: null == isLoad
          ? _value.isLoad
          : isLoad // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoadMore implements _LoadMore {
  const _$_LoadMore(this.page, {this.isLoad = false});

  @override
  final int page;
  @override
  @JsonKey()
  final bool isLoad;

  @override
  String toString() {
    return 'ProductEvent.loadMore(page: $page, isLoad: $isLoad)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadMore &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.isLoad, isLoad) || other.isLoad == isLoad));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, isLoad);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadMoreCopyWith<_$_LoadMore> get copyWith =>
      __$$_LoadMoreCopyWithImpl<_$_LoadMore>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isRefresh, bool isLoading) started,
    required TResult Function(int page, bool isLoad) loadMore,
    required TResult Function(int amount) changeAmount,
    required TResult Function(SlotModel slotModel, int amount) addAmount,
    required TResult Function(int index, int page) changeIndexStarted,
    required TResult Function() reset,
  }) {
    return loadMore(page, isLoad);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isRefresh, bool isLoading)? started,
    TResult? Function(int page, bool isLoad)? loadMore,
    TResult? Function(int amount)? changeAmount,
    TResult? Function(SlotModel slotModel, int amount)? addAmount,
    TResult? Function(int index, int page)? changeIndexStarted,
    TResult? Function()? reset,
  }) {
    return loadMore?.call(page, isLoad);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isRefresh, bool isLoading)? started,
    TResult Function(int page, bool isLoad)? loadMore,
    TResult Function(int amount)? changeAmount,
    TResult Function(SlotModel slotModel, int amount)? addAmount,
    TResult Function(int index, int page)? changeIndexStarted,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(page, isLoad);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_ChangeAmount value) changeAmount,
    required TResult Function(_AddAmount value) addAmount,
    required TResult Function(_ChangeIndexStarted value) changeIndexStarted,
    required TResult Function(_Reset value) reset,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_ChangeAmount value)? changeAmount,
    TResult? Function(_AddAmount value)? addAmount,
    TResult? Function(_ChangeIndexStarted value)? changeIndexStarted,
    TResult? Function(_Reset value)? reset,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_AddAmount value)? addAmount,
    TResult Function(_ChangeIndexStarted value)? changeIndexStarted,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class _LoadMore implements ProductEvent {
  const factory _LoadMore(final int page, {final bool isLoad}) = _$_LoadMore;

  int get page;
  bool get isLoad;
  @JsonKey(ignore: true)
  _$$_LoadMoreCopyWith<_$_LoadMore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeAmountCopyWith<$Res> {
  factory _$$_ChangeAmountCopyWith(
          _$_ChangeAmount value, $Res Function(_$_ChangeAmount) then) =
      __$$_ChangeAmountCopyWithImpl<$Res>;
  @useResult
  $Res call({int amount});
}

/// @nodoc
class __$$_ChangeAmountCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$_ChangeAmount>
    implements _$$_ChangeAmountCopyWith<$Res> {
  __$$_ChangeAmountCopyWithImpl(
      _$_ChangeAmount _value, $Res Function(_$_ChangeAmount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$_ChangeAmount(
      null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ChangeAmount implements _ChangeAmount {
  const _$_ChangeAmount(this.amount);

  @override
  final int amount;

  @override
  String toString() {
    return 'ProductEvent.changeAmount(amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeAmount &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeAmountCopyWith<_$_ChangeAmount> get copyWith =>
      __$$_ChangeAmountCopyWithImpl<_$_ChangeAmount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isRefresh, bool isLoading) started,
    required TResult Function(int page, bool isLoad) loadMore,
    required TResult Function(int amount) changeAmount,
    required TResult Function(SlotModel slotModel, int amount) addAmount,
    required TResult Function(int index, int page) changeIndexStarted,
    required TResult Function() reset,
  }) {
    return changeAmount(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isRefresh, bool isLoading)? started,
    TResult? Function(int page, bool isLoad)? loadMore,
    TResult? Function(int amount)? changeAmount,
    TResult? Function(SlotModel slotModel, int amount)? addAmount,
    TResult? Function(int index, int page)? changeIndexStarted,
    TResult? Function()? reset,
  }) {
    return changeAmount?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isRefresh, bool isLoading)? started,
    TResult Function(int page, bool isLoad)? loadMore,
    TResult Function(int amount)? changeAmount,
    TResult Function(SlotModel slotModel, int amount)? addAmount,
    TResult Function(int index, int page)? changeIndexStarted,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (changeAmount != null) {
      return changeAmount(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_ChangeAmount value) changeAmount,
    required TResult Function(_AddAmount value) addAmount,
    required TResult Function(_ChangeIndexStarted value) changeIndexStarted,
    required TResult Function(_Reset value) reset,
  }) {
    return changeAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_ChangeAmount value)? changeAmount,
    TResult? Function(_AddAmount value)? addAmount,
    TResult? Function(_ChangeIndexStarted value)? changeIndexStarted,
    TResult? Function(_Reset value)? reset,
  }) {
    return changeAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_AddAmount value)? addAmount,
    TResult Function(_ChangeIndexStarted value)? changeIndexStarted,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (changeAmount != null) {
      return changeAmount(this);
    }
    return orElse();
  }
}

abstract class _ChangeAmount implements ProductEvent {
  const factory _ChangeAmount(final int amount) = _$_ChangeAmount;

  int get amount;
  @JsonKey(ignore: true)
  _$$_ChangeAmountCopyWith<_$_ChangeAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddAmountCopyWith<$Res> {
  factory _$$_AddAmountCopyWith(
          _$_AddAmount value, $Res Function(_$_AddAmount) then) =
      __$$_AddAmountCopyWithImpl<$Res>;
  @useResult
  $Res call({SlotModel slotModel, int amount});

  $SlotModelCopyWith<$Res> get slotModel;
}

/// @nodoc
class __$$_AddAmountCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$_AddAmount>
    implements _$$_AddAmountCopyWith<$Res> {
  __$$_AddAmountCopyWithImpl(
      _$_AddAmount _value, $Res Function(_$_AddAmount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slotModel = null,
    Object? amount = null,
  }) {
    return _then(_$_AddAmount(
      null == slotModel
          ? _value.slotModel
          : slotModel // ignore: cast_nullable_to_non_nullable
              as SlotModel,
      null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SlotModelCopyWith<$Res> get slotModel {
    return $SlotModelCopyWith<$Res>(_value.slotModel, (value) {
      return _then(_value.copyWith(slotModel: value));
    });
  }
}

/// @nodoc

class _$_AddAmount implements _AddAmount {
  const _$_AddAmount(this.slotModel, this.amount);

  @override
  final SlotModel slotModel;
  @override
  final int amount;

  @override
  String toString() {
    return 'ProductEvent.addAmount(slotModel: $slotModel, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddAmount &&
            (identical(other.slotModel, slotModel) ||
                other.slotModel == slotModel) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, slotModel, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddAmountCopyWith<_$_AddAmount> get copyWith =>
      __$$_AddAmountCopyWithImpl<_$_AddAmount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isRefresh, bool isLoading) started,
    required TResult Function(int page, bool isLoad) loadMore,
    required TResult Function(int amount) changeAmount,
    required TResult Function(SlotModel slotModel, int amount) addAmount,
    required TResult Function(int index, int page) changeIndexStarted,
    required TResult Function() reset,
  }) {
    return addAmount(slotModel, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isRefresh, bool isLoading)? started,
    TResult? Function(int page, bool isLoad)? loadMore,
    TResult? Function(int amount)? changeAmount,
    TResult? Function(SlotModel slotModel, int amount)? addAmount,
    TResult? Function(int index, int page)? changeIndexStarted,
    TResult? Function()? reset,
  }) {
    return addAmount?.call(slotModel, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isRefresh, bool isLoading)? started,
    TResult Function(int page, bool isLoad)? loadMore,
    TResult Function(int amount)? changeAmount,
    TResult Function(SlotModel slotModel, int amount)? addAmount,
    TResult Function(int index, int page)? changeIndexStarted,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (addAmount != null) {
      return addAmount(slotModel, amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_ChangeAmount value) changeAmount,
    required TResult Function(_AddAmount value) addAmount,
    required TResult Function(_ChangeIndexStarted value) changeIndexStarted,
    required TResult Function(_Reset value) reset,
  }) {
    return addAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_ChangeAmount value)? changeAmount,
    TResult? Function(_AddAmount value)? addAmount,
    TResult? Function(_ChangeIndexStarted value)? changeIndexStarted,
    TResult? Function(_Reset value)? reset,
  }) {
    return addAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_AddAmount value)? addAmount,
    TResult Function(_ChangeIndexStarted value)? changeIndexStarted,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (addAmount != null) {
      return addAmount(this);
    }
    return orElse();
  }
}

abstract class _AddAmount implements ProductEvent {
  const factory _AddAmount(final SlotModel slotModel, final int amount) =
      _$_AddAmount;

  SlotModel get slotModel;
  int get amount;
  @JsonKey(ignore: true)
  _$$_AddAmountCopyWith<_$_AddAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeIndexStartedCopyWith<$Res> {
  factory _$$_ChangeIndexStartedCopyWith(_$_ChangeIndexStarted value,
          $Res Function(_$_ChangeIndexStarted) then) =
      __$$_ChangeIndexStartedCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, int page});
}

/// @nodoc
class __$$_ChangeIndexStartedCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$_ChangeIndexStarted>
    implements _$$_ChangeIndexStartedCopyWith<$Res> {
  __$$_ChangeIndexStartedCopyWithImpl(
      _$_ChangeIndexStarted _value, $Res Function(_$_ChangeIndexStarted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? page = null,
  }) {
    return _then(_$_ChangeIndexStarted(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ChangeIndexStarted implements _ChangeIndexStarted {
  const _$_ChangeIndexStarted(this.index, this.page);

  @override
  final int index;
  @override
  final int page;

  @override
  String toString() {
    return 'ProductEvent.changeIndexStarted(index: $index, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeIndexStarted &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeIndexStartedCopyWith<_$_ChangeIndexStarted> get copyWith =>
      __$$_ChangeIndexStartedCopyWithImpl<_$_ChangeIndexStarted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isRefresh, bool isLoading) started,
    required TResult Function(int page, bool isLoad) loadMore,
    required TResult Function(int amount) changeAmount,
    required TResult Function(SlotModel slotModel, int amount) addAmount,
    required TResult Function(int index, int page) changeIndexStarted,
    required TResult Function() reset,
  }) {
    return changeIndexStarted(index, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isRefresh, bool isLoading)? started,
    TResult? Function(int page, bool isLoad)? loadMore,
    TResult? Function(int amount)? changeAmount,
    TResult? Function(SlotModel slotModel, int amount)? addAmount,
    TResult? Function(int index, int page)? changeIndexStarted,
    TResult? Function()? reset,
  }) {
    return changeIndexStarted?.call(index, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isRefresh, bool isLoading)? started,
    TResult Function(int page, bool isLoad)? loadMore,
    TResult Function(int amount)? changeAmount,
    TResult Function(SlotModel slotModel, int amount)? addAmount,
    TResult Function(int index, int page)? changeIndexStarted,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (changeIndexStarted != null) {
      return changeIndexStarted(index, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_ChangeAmount value) changeAmount,
    required TResult Function(_AddAmount value) addAmount,
    required TResult Function(_ChangeIndexStarted value) changeIndexStarted,
    required TResult Function(_Reset value) reset,
  }) {
    return changeIndexStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_ChangeAmount value)? changeAmount,
    TResult? Function(_AddAmount value)? addAmount,
    TResult? Function(_ChangeIndexStarted value)? changeIndexStarted,
    TResult? Function(_Reset value)? reset,
  }) {
    return changeIndexStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_AddAmount value)? addAmount,
    TResult Function(_ChangeIndexStarted value)? changeIndexStarted,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (changeIndexStarted != null) {
      return changeIndexStarted(this);
    }
    return orElse();
  }
}

abstract class _ChangeIndexStarted implements ProductEvent {
  const factory _ChangeIndexStarted(final int index, final int page) =
      _$_ChangeIndexStarted;

  int get index;
  int get page;
  @JsonKey(ignore: true)
  _$$_ChangeIndexStartedCopyWith<_$_ChangeIndexStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResetCopyWith<$Res> {
  factory _$$_ResetCopyWith(_$_Reset value, $Res Function(_$_Reset) then) =
      __$$_ResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$_Reset>
    implements _$$_ResetCopyWith<$Res> {
  __$$_ResetCopyWithImpl(_$_Reset _value, $Res Function(_$_Reset) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Reset implements _Reset {
  const _$_Reset();

  @override
  String toString() {
    return 'ProductEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Reset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isRefresh, bool isLoading) started,
    required TResult Function(int page, bool isLoad) loadMore,
    required TResult Function(int amount) changeAmount,
    required TResult Function(SlotModel slotModel, int amount) addAmount,
    required TResult Function(int index, int page) changeIndexStarted,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isRefresh, bool isLoading)? started,
    TResult? Function(int page, bool isLoad)? loadMore,
    TResult? Function(int amount)? changeAmount,
    TResult? Function(SlotModel slotModel, int amount)? addAmount,
    TResult? Function(int index, int page)? changeIndexStarted,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isRefresh, bool isLoading)? started,
    TResult Function(int page, bool isLoad)? loadMore,
    TResult Function(int amount)? changeAmount,
    TResult Function(SlotModel slotModel, int amount)? addAmount,
    TResult Function(int index, int page)? changeIndexStarted,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_ChangeAmount value) changeAmount,
    required TResult Function(_AddAmount value) addAmount,
    required TResult Function(_ChangeIndexStarted value) changeIndexStarted,
    required TResult Function(_Reset value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_ChangeAmount value)? changeAmount,
    TResult? Function(_AddAmount value)? addAmount,
    TResult? Function(_ChangeIndexStarted value)? changeIndexStarted,
    TResult? Function(_Reset value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_AddAmount value)? addAmount,
    TResult Function(_ChangeIndexStarted value)? changeIndexStarted,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements ProductEvent {
  const factory _Reset() = _$_Reset;
}

/// @nodoc
mixin _$ProductState {
  PageModel get items => throw _privateConstructorUsedError;
  List<SlotModel> get cart => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  int get totalPage => throw _privateConstructorUsedError;
  int get totalPrice => throw _privateConstructorUsedError;
  int get totalCart => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  int get idSelected => throw _privateConstructorUsedError;
  int get indexStarted => throw _privateConstructorUsedError;
  int get indexSelected => throw _privateConstructorUsedError;
  Option<ProductFailure> get failureOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductStateCopyWith<ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
  @useResult
  $Res call(
      {PageModel items,
      List<SlotModel> cart,
      bool hasReachedMax,
      bool isLoading,
      int page,
      int currentPage,
      int amount,
      int totalPage,
      int totalPrice,
      int totalCart,
      int size,
      int idSelected,
      int indexStarted,
      int indexSelected,
      Option<ProductFailure> failureOption});

  $PageModelCopyWith<$Res> get items;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? cart = null,
    Object? hasReachedMax = null,
    Object? isLoading = null,
    Object? page = null,
    Object? currentPage = null,
    Object? amount = null,
    Object? totalPage = null,
    Object? totalPrice = null,
    Object? totalCart = null,
    Object? size = null,
    Object? idSelected = null,
    Object? indexStarted = null,
    Object? indexSelected = null,
    Object? failureOption = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as PageModel,
      cart: null == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as List<SlotModel>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      totalPage: null == totalPage
          ? _value.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      totalCart: null == totalCart
          ? _value.totalCart
          : totalCart // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      idSelected: null == idSelected
          ? _value.idSelected
          : idSelected // ignore: cast_nullable_to_non_nullable
              as int,
      indexStarted: null == indexStarted
          ? _value.indexStarted
          : indexStarted // ignore: cast_nullable_to_non_nullable
              as int,
      indexSelected: null == indexSelected
          ? _value.indexSelected
          : indexSelected // ignore: cast_nullable_to_non_nullable
              as int,
      failureOption: null == failureOption
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<ProductFailure>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PageModelCopyWith<$Res> get items {
    return $PageModelCopyWith<$Res>(_value.items, (value) {
      return _then(_value.copyWith(items: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductStateCopyWith<$Res>
    implements $ProductStateCopyWith<$Res> {
  factory _$$_ProductStateCopyWith(
          _$_ProductState value, $Res Function(_$_ProductState) then) =
      __$$_ProductStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PageModel items,
      List<SlotModel> cart,
      bool hasReachedMax,
      bool isLoading,
      int page,
      int currentPage,
      int amount,
      int totalPage,
      int totalPrice,
      int totalCart,
      int size,
      int idSelected,
      int indexStarted,
      int indexSelected,
      Option<ProductFailure> failureOption});

  @override
  $PageModelCopyWith<$Res> get items;
}

/// @nodoc
class __$$_ProductStateCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$_ProductState>
    implements _$$_ProductStateCopyWith<$Res> {
  __$$_ProductStateCopyWithImpl(
      _$_ProductState _value, $Res Function(_$_ProductState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? cart = null,
    Object? hasReachedMax = null,
    Object? isLoading = null,
    Object? page = null,
    Object? currentPage = null,
    Object? amount = null,
    Object? totalPage = null,
    Object? totalPrice = null,
    Object? totalCart = null,
    Object? size = null,
    Object? idSelected = null,
    Object? indexStarted = null,
    Object? indexSelected = null,
    Object? failureOption = null,
  }) {
    return _then(_$_ProductState(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as PageModel,
      cart: null == cart
          ? _value._cart
          : cart // ignore: cast_nullable_to_non_nullable
              as List<SlotModel>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      totalPage: null == totalPage
          ? _value.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      totalCart: null == totalCart
          ? _value.totalCart
          : totalCart // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      idSelected: null == idSelected
          ? _value.idSelected
          : idSelected // ignore: cast_nullable_to_non_nullable
              as int,
      indexStarted: null == indexStarted
          ? _value.indexStarted
          : indexStarted // ignore: cast_nullable_to_non_nullable
              as int,
      indexSelected: null == indexSelected
          ? _value.indexSelected
          : indexSelected // ignore: cast_nullable_to_non_nullable
              as int,
      failureOption: null == failureOption
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<ProductFailure>,
    ));
  }
}

/// @nodoc

class _$_ProductState implements _ProductState {
  const _$_ProductState(
      {required this.items,
      required final List<SlotModel> cart,
      required this.hasReachedMax,
      required this.isLoading,
      required this.page,
      required this.currentPage,
      required this.amount,
      required this.totalPage,
      required this.totalPrice,
      required this.totalCart,
      required this.size,
      required this.idSelected,
      required this.indexStarted,
      required this.indexSelected,
      required this.failureOption})
      : _cart = cart;

  @override
  final PageModel items;
  final List<SlotModel> _cart;
  @override
  List<SlotModel> get cart {
    if (_cart is EqualUnmodifiableListView) return _cart;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cart);
  }

  @override
  final bool hasReachedMax;
  @override
  final bool isLoading;
  @override
  final int page;
  @override
  final int currentPage;
  @override
  final int amount;
  @override
  final int totalPage;
  @override
  final int totalPrice;
  @override
  final int totalCart;
  @override
  final int size;
  @override
  final int idSelected;
  @override
  final int indexStarted;
  @override
  final int indexSelected;
  @override
  final Option<ProductFailure> failureOption;

  @override
  String toString() {
    return 'ProductState(items: $items, cart: $cart, hasReachedMax: $hasReachedMax, isLoading: $isLoading, page: $page, currentPage: $currentPage, amount: $amount, totalPage: $totalPage, totalPrice: $totalPrice, totalCart: $totalCart, size: $size, idSelected: $idSelected, indexStarted: $indexStarted, indexSelected: $indexSelected, failureOption: $failureOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductState &&
            (identical(other.items, items) || other.items == items) &&
            const DeepCollectionEquality().equals(other._cart, _cart) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.totalPage, totalPage) ||
                other.totalPage == totalPage) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.totalCart, totalCart) ||
                other.totalCart == totalCart) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.idSelected, idSelected) ||
                other.idSelected == idSelected) &&
            (identical(other.indexStarted, indexStarted) ||
                other.indexStarted == indexStarted) &&
            (identical(other.indexSelected, indexSelected) ||
                other.indexSelected == indexSelected) &&
            (identical(other.failureOption, failureOption) ||
                other.failureOption == failureOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      items,
      const DeepCollectionEquality().hash(_cart),
      hasReachedMax,
      isLoading,
      page,
      currentPage,
      amount,
      totalPage,
      totalPrice,
      totalCart,
      size,
      idSelected,
      indexStarted,
      indexSelected,
      failureOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductStateCopyWith<_$_ProductState> get copyWith =>
      __$$_ProductStateCopyWithImpl<_$_ProductState>(this, _$identity);
}

abstract class _ProductState implements ProductState {
  const factory _ProductState(
      {required final PageModel items,
      required final List<SlotModel> cart,
      required final bool hasReachedMax,
      required final bool isLoading,
      required final int page,
      required final int currentPage,
      required final int amount,
      required final int totalPage,
      required final int totalPrice,
      required final int totalCart,
      required final int size,
      required final int idSelected,
      required final int indexStarted,
      required final int indexSelected,
      required final Option<ProductFailure> failureOption}) = _$_ProductState;

  @override
  PageModel get items;
  @override
  List<SlotModel> get cart;
  @override
  bool get hasReachedMax;
  @override
  bool get isLoading;
  @override
  int get page;
  @override
  int get currentPage;
  @override
  int get amount;
  @override
  int get totalPage;
  @override
  int get totalPrice;
  @override
  int get totalCart;
  @override
  int get size;
  @override
  int get idSelected;
  @override
  int get indexStarted;
  @override
  int get indexSelected;
  @override
  Option<ProductFailure> get failureOption;
  @override
  @JsonKey(ignore: true)
  _$$_ProductStateCopyWith<_$_ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}
