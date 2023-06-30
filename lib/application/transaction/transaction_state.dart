part of 'transaction_bloc.dart';

@freezed
class TransactionState with _$TransactionState {
  const factory TransactionState({
    required bool isPay,
    required TransactionModel transactionModel,
    required RefundModel refundModel,
    required List<DropModel> listDropModel,
    required List<SensorModel> listMySensorModel,
    required List<SensorModel> listSensorModel,
    required bool isLoading,
    required bool readyDrop,
    required bool isFinish,
    required int statusDrop,
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
      listMySensorModel: List.empty(),
      listSensorModel: List.empty(),
      listDropModel: List.empty(),
      statusDrop: 0,
      refundModel: RefundModel.empty(),
      transactionModel: TransactionModel.empty(),
      isPay: false,
      readyDrop: false,
      isFinish: false,
      isLoading: true);
}
