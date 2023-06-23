part of 'transaction_bloc.dart';

@freezed
class TransactionEvent with _$TransactionEvent {
  const factory TransactionEvent.started() = _Started;
  const factory TransactionEvent.drop(List<SlotModel> listSlotModel) =
      _Drop;
  const factory TransactionEvent.success(
      int slot_id, int transaction_id, bool status_drop,
      {@Default(false) bool isLoading}) = _Success;


  const factory TransactionEvent.checkStatusTransaction(int id) = _CheckStatusTransaction;
}
