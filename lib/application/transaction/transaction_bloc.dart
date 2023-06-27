import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:standart_project/domain/transaction/transaction_failure.dart';

import '../../app_constant.dart';
import '../../domain/drop/drop_model.dart';
import '../../domain/product/slot_model.dart';
import '../../domain/sensor/sensor_model.dart';
import '../../domain/transaction/i_transaction_repository.dart';
import '../../domain/transaction/transaction_model.dart';
part 'transaction_bloc.freezed.dart';
part 'transaction_event.dart';
part 'transaction_state.dart';

@injectable
class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  final ITransactionRepository _transactionRepository;
  TransactionBloc(this._transactionRepository)
      : super(TransactionState.initial()) {
    on<TransactionEvent>(_onEventChanged);
  }

  Future<void> _onEventChanged(
    TransactionEvent event,
    Emitter<TransactionState> emit,
  ) {
    return event.map(
      started: (_) async {
        emit(TransactionState.initial());
      },
      drop: (e) async {
        if (e.listSlotModel.isNotEmpty) {
          List<SlotModel> listSlotModel = [...e.listSlotModel];
          List<DropModel> listDropVending = [];
          List<SensorModel> listSensorVending = [];
          for (var slotModel in listSlotModel) {
            listDropVending.add(DropModel(
                slot_number: slotModel.id,
                slot: int.parse(slotModel.name!),
                amount: slotModel.amount,
                quantity_error: 0,
                quantity_success: 0));
            for (var i = 0; i < slotModel.amount!; i++) {
              listSensorVending.add(SensorModel(
                  slot: slotModel.id,
                  slotName: int.parse(slotModel.name!),
                  value: false,
                  code: '0',
                  description: ''));
            }
          }

          for (var sensorModel in listSensorVending) {
            Either<TransactionFailure, Unit> failureOrSuccess =
                await _transactionRepository.drop(
                    slotName: sensorModel.slotName!.toString());
            failureOrSuccess.fold(
              (f) {
                int quantityError = listDropVending[listDropVending.indexWhere(
                        (element) => element.slot_number == sensorModel.slot)]
                    .quantity_error!;
                DropModel drModel = listDropVending[listDropVending.indexWhere(
                    (element) => element.slot_number == sensorModel.slot)];
                listDropVending[listDropVending.indexWhere(
                        (element) => element.slot_number == sensorModel.slot)] =
                    DropModel(
                        slot_number: sensorModel.slot,
                        slot: sensorModel.slotName,
                        amount: drModel.amount,
                        quantity_error: quantityError + 1,
                        quantity_success: drModel.quantity_success);

                listSensorVending[listSensorVending.indexWhere(
                        (element) => element.slot == sensorModel.slot)] = SensorModel(
                          code: sensorModel.code,
                          description: vErrorDrop,
                          value: false,
                          slot: sensorModel.slot,
                          slotName: sensorModel.slotName,
                        );
              },
              (transaction) {
                int quantitySuccess = listDropVending[
                        listDropVending.indexWhere((element) =>
                            element.slot_number == sensorModel.slot)]
                    .quantity_success!;
                DropModel drModel = listDropVending[listDropVending.indexWhere(
                    (element) => element.slot_number == sensorModel.slot)];
                listDropVending[listDropVending.indexWhere(
                        (element) => element.slot_number == sensorModel.slot)] =
                    DropModel(
                        slot_number: sensorModel.slot,
                        slot: sensorModel.slotName,
                        amount: drModel.amount,
                        quantity_error: drModel.quantity_error,
                        quantity_success: quantitySuccess + 1);

                listSensorVending[listSensorVending.indexWhere(
                        (element) => element.slot == sensorModel.slot)] = SensorModel(
                          code: sensorModel.code,
                          description: vSuccessDrop,
                          value: true,
                          slot: sensorModel.slot,
                          slotName: sensorModel.slotName,
                        );
              },
            );
          }

          List<DropModel> listDrop =
              listDropVending.where((o) => o.quantity_error! > 0).toList();
          emit(state.copyWith.call(
              statusDrop: listDrop.isEmpty ? 1 : 2,
              listDropModel: listDropVending,
              listSensorModel: listSensorVending));
        }
      },
      success: (e) async {
        if (e.isLoading) {
          // emit(state.copyWith
          //     .call(isLoading: true, transaction_id: e.transaction_id));

          Either<TransactionFailure, Unit>? failureOrSuccess;
          bool drop = e.status_drop;
          failureOrSuccess = await _transactionRepository.success(
              id: e.slot_id,
              transaction_id: e.transaction_id,
              status: drop ? 1 : 0);

          return emit(failureOrSuccess.fold(
            (f) {
              return state.copyWith.call(
                  isLoading: false,
                  transaction_id: e.transaction_id,
                  failureOption: optionOf(f));
            },
            (_) => state.copyWith.call(
                isLoading: false,
                transaction_id: e.transaction_id,
                failureOption: none()),
          ));
        }
      },
      checkStatusTransaction: (e) async {
        emit(state.copyWith.call(
          isLoading: true,
          isPay: false,
          transactionModel: TransactionModel.empty(),
          failureOption: none(),
        ));
        final failureOrSuccess =
            await _transactionRepository.checkStatusTransaction(id: e.id);

        return emit(failureOrSuccess.fold(
          (f) {
            return state.copyWith
                .call(isLoading: false, failureOption: optionOf(f));
          },
          (transaction) {
            bool isPay = transaction.status == 'Paid' ? true : false;
            return state.copyWith.call(
                transactionModel: transaction,
                isLoading: false,
                isPay: isPay,
                failureOption: none());
          },
        ));
      },
    );
  }
}
