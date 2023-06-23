// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransactionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<SlotModel> listSlotModel) drop,
    required TResult Function(
            int slot_id, int transaction_id, bool status_drop, bool isLoading)
        success,
    required TResult Function(int id) checkStatusTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<SlotModel> listSlotModel)? drop,
    TResult? Function(
            int slot_id, int transaction_id, bool status_drop, bool isLoading)?
        success,
    TResult? Function(int id)? checkStatusTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<SlotModel> listSlotModel)? drop,
    TResult Function(
            int slot_id, int transaction_id, bool status_drop, bool isLoading)?
        success,
    TResult Function(int id)? checkStatusTransaction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Drop value) drop,
    required TResult Function(_Success value) success,
    required TResult Function(_CheckStatusTransaction value)
        checkStatusTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Drop value)? drop,
    TResult? Function(_Success value)? success,
    TResult? Function(_CheckStatusTransaction value)? checkStatusTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Drop value)? drop,
    TResult Function(_Success value)? success,
    TResult Function(_CheckStatusTransaction value)? checkStatusTransaction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionEventCopyWith<$Res> {
  factory $TransactionEventCopyWith(
          TransactionEvent value, $Res Function(TransactionEvent) then) =
      _$TransactionEventCopyWithImpl<$Res, TransactionEvent>;
}

/// @nodoc
class _$TransactionEventCopyWithImpl<$Res, $Val extends TransactionEvent>
    implements $TransactionEventCopyWith<$Res> {
  _$TransactionEventCopyWithImpl(this._value, this._then);

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
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'TransactionEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<SlotModel> listSlotModel) drop,
    required TResult Function(
            int slot_id, int transaction_id, bool status_drop, bool isLoading)
        success,
    required TResult Function(int id) checkStatusTransaction,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<SlotModel> listSlotModel)? drop,
    TResult? Function(
            int slot_id, int transaction_id, bool status_drop, bool isLoading)?
        success,
    TResult? Function(int id)? checkStatusTransaction,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<SlotModel> listSlotModel)? drop,
    TResult Function(
            int slot_id, int transaction_id, bool status_drop, bool isLoading)?
        success,
    TResult Function(int id)? checkStatusTransaction,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Drop value) drop,
    required TResult Function(_Success value) success,
    required TResult Function(_CheckStatusTransaction value)
        checkStatusTransaction,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Drop value)? drop,
    TResult? Function(_Success value)? success,
    TResult? Function(_CheckStatusTransaction value)? checkStatusTransaction,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Drop value)? drop,
    TResult Function(_Success value)? success,
    TResult Function(_CheckStatusTransaction value)? checkStatusTransaction,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TransactionEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_DropCopyWith<$Res> {
  factory _$$_DropCopyWith(_$_Drop value, $Res Function(_$_Drop) then) =
      __$$_DropCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SlotModel> listSlotModel});
}

/// @nodoc
class __$$_DropCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$_Drop>
    implements _$$_DropCopyWith<$Res> {
  __$$_DropCopyWithImpl(_$_Drop _value, $Res Function(_$_Drop) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listSlotModel = null,
  }) {
    return _then(_$_Drop(
      null == listSlotModel
          ? _value._listSlotModel
          : listSlotModel // ignore: cast_nullable_to_non_nullable
              as List<SlotModel>,
    ));
  }
}

/// @nodoc

class _$_Drop implements _Drop {
  const _$_Drop(final List<SlotModel> listSlotModel)
      : _listSlotModel = listSlotModel;

  final List<SlotModel> _listSlotModel;
  @override
  List<SlotModel> get listSlotModel {
    if (_listSlotModel is EqualUnmodifiableListView) return _listSlotModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listSlotModel);
  }

  @override
  String toString() {
    return 'TransactionEvent.drop(listSlotModel: $listSlotModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Drop &&
            const DeepCollectionEquality()
                .equals(other._listSlotModel, _listSlotModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listSlotModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DropCopyWith<_$_Drop> get copyWith =>
      __$$_DropCopyWithImpl<_$_Drop>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<SlotModel> listSlotModel) drop,
    required TResult Function(
            int slot_id, int transaction_id, bool status_drop, bool isLoading)
        success,
    required TResult Function(int id) checkStatusTransaction,
  }) {
    return drop(listSlotModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<SlotModel> listSlotModel)? drop,
    TResult? Function(
            int slot_id, int transaction_id, bool status_drop, bool isLoading)?
        success,
    TResult? Function(int id)? checkStatusTransaction,
  }) {
    return drop?.call(listSlotModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<SlotModel> listSlotModel)? drop,
    TResult Function(
            int slot_id, int transaction_id, bool status_drop, bool isLoading)?
        success,
    TResult Function(int id)? checkStatusTransaction,
    required TResult orElse(),
  }) {
    if (drop != null) {
      return drop(listSlotModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Drop value) drop,
    required TResult Function(_Success value) success,
    required TResult Function(_CheckStatusTransaction value)
        checkStatusTransaction,
  }) {
    return drop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Drop value)? drop,
    TResult? Function(_Success value)? success,
    TResult? Function(_CheckStatusTransaction value)? checkStatusTransaction,
  }) {
    return drop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Drop value)? drop,
    TResult Function(_Success value)? success,
    TResult Function(_CheckStatusTransaction value)? checkStatusTransaction,
    required TResult orElse(),
  }) {
    if (drop != null) {
      return drop(this);
    }
    return orElse();
  }
}

abstract class _Drop implements TransactionEvent {
  const factory _Drop(final List<SlotModel> listSlotModel) = _$_Drop;

  List<SlotModel> get listSlotModel;
  @JsonKey(ignore: true)
  _$$_DropCopyWith<_$_Drop> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int slot_id, int transaction_id, bool status_drop, bool isLoading});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot_id = null,
    Object? transaction_id = null,
    Object? status_drop = null,
    Object? isLoading = null,
  }) {
    return _then(_$_Success(
      null == slot_id
          ? _value.slot_id
          : slot_id // ignore: cast_nullable_to_non_nullable
              as int,
      null == transaction_id
          ? _value.transaction_id
          : transaction_id // ignore: cast_nullable_to_non_nullable
              as int,
      null == status_drop
          ? _value.status_drop
          : status_drop // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success(this.slot_id, this.transaction_id, this.status_drop,
      {this.isLoading = false});

  @override
  final int slot_id;
  @override
  final int transaction_id;
  @override
  final bool status_drop;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'TransactionEvent.success(slot_id: $slot_id, transaction_id: $transaction_id, status_drop: $status_drop, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            (identical(other.slot_id, slot_id) || other.slot_id == slot_id) &&
            (identical(other.transaction_id, transaction_id) ||
                other.transaction_id == transaction_id) &&
            (identical(other.status_drop, status_drop) ||
                other.status_drop == status_drop) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, slot_id, transaction_id, status_drop, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<SlotModel> listSlotModel) drop,
    required TResult Function(
            int slot_id, int transaction_id, bool status_drop, bool isLoading)
        success,
    required TResult Function(int id) checkStatusTransaction,
  }) {
    return success(slot_id, transaction_id, status_drop, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<SlotModel> listSlotModel)? drop,
    TResult? Function(
            int slot_id, int transaction_id, bool status_drop, bool isLoading)?
        success,
    TResult? Function(int id)? checkStatusTransaction,
  }) {
    return success?.call(slot_id, transaction_id, status_drop, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<SlotModel> listSlotModel)? drop,
    TResult Function(
            int slot_id, int transaction_id, bool status_drop, bool isLoading)?
        success,
    TResult Function(int id)? checkStatusTransaction,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(slot_id, transaction_id, status_drop, isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Drop value) drop,
    required TResult Function(_Success value) success,
    required TResult Function(_CheckStatusTransaction value)
        checkStatusTransaction,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Drop value)? drop,
    TResult? Function(_Success value)? success,
    TResult? Function(_CheckStatusTransaction value)? checkStatusTransaction,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Drop value)? drop,
    TResult Function(_Success value)? success,
    TResult Function(_CheckStatusTransaction value)? checkStatusTransaction,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements TransactionEvent {
  const factory _Success(
      final int slot_id, final int transaction_id, final bool status_drop,
      {final bool isLoading}) = _$_Success;

  int get slot_id;
  int get transaction_id;
  bool get status_drop;
  bool get isLoading;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CheckStatusTransactionCopyWith<$Res> {
  factory _$$_CheckStatusTransactionCopyWith(_$_CheckStatusTransaction value,
          $Res Function(_$_CheckStatusTransaction) then) =
      __$$_CheckStatusTransactionCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_CheckStatusTransactionCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$_CheckStatusTransaction>
    implements _$$_CheckStatusTransactionCopyWith<$Res> {
  __$$_CheckStatusTransactionCopyWithImpl(_$_CheckStatusTransaction _value,
      $Res Function(_$_CheckStatusTransaction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_CheckStatusTransaction(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CheckStatusTransaction implements _CheckStatusTransaction {
  const _$_CheckStatusTransaction(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'TransactionEvent.checkStatusTransaction(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckStatusTransaction &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckStatusTransactionCopyWith<_$_CheckStatusTransaction> get copyWith =>
      __$$_CheckStatusTransactionCopyWithImpl<_$_CheckStatusTransaction>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<SlotModel> listSlotModel) drop,
    required TResult Function(
            int slot_id, int transaction_id, bool status_drop, bool isLoading)
        success,
    required TResult Function(int id) checkStatusTransaction,
  }) {
    return checkStatusTransaction(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<SlotModel> listSlotModel)? drop,
    TResult? Function(
            int slot_id, int transaction_id, bool status_drop, bool isLoading)?
        success,
    TResult? Function(int id)? checkStatusTransaction,
  }) {
    return checkStatusTransaction?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<SlotModel> listSlotModel)? drop,
    TResult Function(
            int slot_id, int transaction_id, bool status_drop, bool isLoading)?
        success,
    TResult Function(int id)? checkStatusTransaction,
    required TResult orElse(),
  }) {
    if (checkStatusTransaction != null) {
      return checkStatusTransaction(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Drop value) drop,
    required TResult Function(_Success value) success,
    required TResult Function(_CheckStatusTransaction value)
        checkStatusTransaction,
  }) {
    return checkStatusTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Drop value)? drop,
    TResult? Function(_Success value)? success,
    TResult? Function(_CheckStatusTransaction value)? checkStatusTransaction,
  }) {
    return checkStatusTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Drop value)? drop,
    TResult Function(_Success value)? success,
    TResult Function(_CheckStatusTransaction value)? checkStatusTransaction,
    required TResult orElse(),
  }) {
    if (checkStatusTransaction != null) {
      return checkStatusTransaction(this);
    }
    return orElse();
  }
}

abstract class _CheckStatusTransaction implements TransactionEvent {
  const factory _CheckStatusTransaction(final int id) =
      _$_CheckStatusTransaction;

  int get id;
  @JsonKey(ignore: true)
  _$$_CheckStatusTransactionCopyWith<_$_CheckStatusTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TransactionState {
  bool get isPay => throw _privateConstructorUsedError;
  TransactionModel get transactionModel => throw _privateConstructorUsedError;
  bool? get status_drop => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  int get slot_id => throw _privateConstructorUsedError;
  int get transaction_id => throw _privateConstructorUsedError;
  String get slot_name => throw _privateConstructorUsedError;
  Option<TransactionFailure> get failureOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionStateCopyWith<TransactionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionStateCopyWith<$Res> {
  factory $TransactionStateCopyWith(
          TransactionState value, $Res Function(TransactionState) then) =
      _$TransactionStateCopyWithImpl<$Res, TransactionState>;
  @useResult
  $Res call(
      {bool isPay,
      TransactionModel transactionModel,
      bool? status_drop,
      bool isLoading,
      int slot_id,
      int transaction_id,
      String slot_name,
      Option<TransactionFailure> failureOption});

  $TransactionModelCopyWith<$Res> get transactionModel;
}

/// @nodoc
class _$TransactionStateCopyWithImpl<$Res, $Val extends TransactionState>
    implements $TransactionStateCopyWith<$Res> {
  _$TransactionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPay = null,
    Object? transactionModel = null,
    Object? status_drop = freezed,
    Object? isLoading = null,
    Object? slot_id = null,
    Object? transaction_id = null,
    Object? slot_name = null,
    Object? failureOption = null,
  }) {
    return _then(_value.copyWith(
      isPay: null == isPay
          ? _value.isPay
          : isPay // ignore: cast_nullable_to_non_nullable
              as bool,
      transactionModel: null == transactionModel
          ? _value.transactionModel
          : transactionModel // ignore: cast_nullable_to_non_nullable
              as TransactionModel,
      status_drop: freezed == status_drop
          ? _value.status_drop
          : status_drop // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      slot_id: null == slot_id
          ? _value.slot_id
          : slot_id // ignore: cast_nullable_to_non_nullable
              as int,
      transaction_id: null == transaction_id
          ? _value.transaction_id
          : transaction_id // ignore: cast_nullable_to_non_nullable
              as int,
      slot_name: null == slot_name
          ? _value.slot_name
          : slot_name // ignore: cast_nullable_to_non_nullable
              as String,
      failureOption: null == failureOption
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<TransactionFailure>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TransactionModelCopyWith<$Res> get transactionModel {
    return $TransactionModelCopyWith<$Res>(_value.transactionModel, (value) {
      return _then(_value.copyWith(transactionModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TransactionStateCopyWith<$Res>
    implements $TransactionStateCopyWith<$Res> {
  factory _$$_TransactionStateCopyWith(
          _$_TransactionState value, $Res Function(_$_TransactionState) then) =
      __$$_TransactionStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isPay,
      TransactionModel transactionModel,
      bool? status_drop,
      bool isLoading,
      int slot_id,
      int transaction_id,
      String slot_name,
      Option<TransactionFailure> failureOption});

  @override
  $TransactionModelCopyWith<$Res> get transactionModel;
}

/// @nodoc
class __$$_TransactionStateCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$_TransactionState>
    implements _$$_TransactionStateCopyWith<$Res> {
  __$$_TransactionStateCopyWithImpl(
      _$_TransactionState _value, $Res Function(_$_TransactionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPay = null,
    Object? transactionModel = null,
    Object? status_drop = freezed,
    Object? isLoading = null,
    Object? slot_id = null,
    Object? transaction_id = null,
    Object? slot_name = null,
    Object? failureOption = null,
  }) {
    return _then(_$_TransactionState(
      isPay: null == isPay
          ? _value.isPay
          : isPay // ignore: cast_nullable_to_non_nullable
              as bool,
      transactionModel: null == transactionModel
          ? _value.transactionModel
          : transactionModel // ignore: cast_nullable_to_non_nullable
              as TransactionModel,
      status_drop: freezed == status_drop
          ? _value.status_drop
          : status_drop // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      slot_id: null == slot_id
          ? _value.slot_id
          : slot_id // ignore: cast_nullable_to_non_nullable
              as int,
      transaction_id: null == transaction_id
          ? _value.transaction_id
          : transaction_id // ignore: cast_nullable_to_non_nullable
              as int,
      slot_name: null == slot_name
          ? _value.slot_name
          : slot_name // ignore: cast_nullable_to_non_nullable
              as String,
      failureOption: null == failureOption
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<TransactionFailure>,
    ));
  }
}

/// @nodoc

class _$_TransactionState implements _TransactionState {
  const _$_TransactionState(
      {required this.isPay,
      required this.transactionModel,
      this.status_drop,
      required this.isLoading,
      required this.slot_id,
      required this.transaction_id,
      required this.slot_name,
      required this.failureOption});

  @override
  final bool isPay;
  @override
  final TransactionModel transactionModel;
  @override
  final bool? status_drop;
  @override
  final bool isLoading;
  @override
  final int slot_id;
  @override
  final int transaction_id;
  @override
  final String slot_name;
  @override
  final Option<TransactionFailure> failureOption;

  @override
  String toString() {
    return 'TransactionState(isPay: $isPay, transactionModel: $transactionModel, status_drop: $status_drop, isLoading: $isLoading, slot_id: $slot_id, transaction_id: $transaction_id, slot_name: $slot_name, failureOption: $failureOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionState &&
            (identical(other.isPay, isPay) || other.isPay == isPay) &&
            (identical(other.transactionModel, transactionModel) ||
                other.transactionModel == transactionModel) &&
            (identical(other.status_drop, status_drop) ||
                other.status_drop == status_drop) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.slot_id, slot_id) || other.slot_id == slot_id) &&
            (identical(other.transaction_id, transaction_id) ||
                other.transaction_id == transaction_id) &&
            (identical(other.slot_name, slot_name) ||
                other.slot_name == slot_name) &&
            (identical(other.failureOption, failureOption) ||
                other.failureOption == failureOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isPay,
      transactionModel,
      status_drop,
      isLoading,
      slot_id,
      transaction_id,
      slot_name,
      failureOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionStateCopyWith<_$_TransactionState> get copyWith =>
      __$$_TransactionStateCopyWithImpl<_$_TransactionState>(this, _$identity);
}

abstract class _TransactionState implements TransactionState {
  const factory _TransactionState(
          {required final bool isPay,
          required final TransactionModel transactionModel,
          final bool? status_drop,
          required final bool isLoading,
          required final int slot_id,
          required final int transaction_id,
          required final String slot_name,
          required final Option<TransactionFailure> failureOption}) =
      _$_TransactionState;

  @override
  bool get isPay;
  @override
  TransactionModel get transactionModel;
  @override
  bool? get status_drop;
  @override
  bool get isLoading;
  @override
  int get slot_id;
  @override
  int get transaction_id;
  @override
  String get slot_name;
  @override
  Option<TransactionFailure> get failureOption;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionStateCopyWith<_$_TransactionState> get copyWith =>
      throw _privateConstructorUsedError;
}
