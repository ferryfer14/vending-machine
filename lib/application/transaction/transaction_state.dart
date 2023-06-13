part of 'transaction_bloc.dart';

@freezed
class TransactionState with _$TransactionState {
  const factory TransactionState({
    bool? status_drop,
    required bool isLoading,
    required int slot_id,
    required int transaction_id,
    required String slot_name,
    required Option<TransactionFailure> failureOption,
  }) = _TransactionState;

  factory TransactionState.initial() => TransactionState(
      failureOption: none(),
      slot_id: 0,
      transaction_id: 0,
      slot_name: '',
      status_drop: null,
      isLoading: true);
}
