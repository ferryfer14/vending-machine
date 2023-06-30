part of 'transaction_bloc.dart';

@freezed
class TransactionEvent with _$TransactionEvent {
  const factory TransactionEvent.started() = _Started;
  const factory TransactionEvent.drop(List<SlotModel> listSlotModel) = _Drop;
  const factory TransactionEvent.finish({@Default(false) bool isLoading}) =
      _Finish;

  const factory TransactionEvent.checkStatusTransaction(int id) =
      _CheckStatusTransaction;
}
