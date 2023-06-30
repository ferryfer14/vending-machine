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
import '../../domain/transaction/refund_model.dart';
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
        Either<TransactionFailure, List<SensorModel>> failureOrSuccess =
            await _transactionRepository.getSensor();

        return emit(failureOrSuccess.fold(
          // ignore: void_checks
          (f) {
            if (f == const TransactionFailure.emptyList()) {
              return state.copyWith.call(
                  isLoading: false,
                  listMySensorModel: List.empty(),
                  slot_id: 0,
                  transaction_id: 0,
                  slot_name: '',
                  listSensorModel: List.empty(),
                  listDropModel: List.empty(),
                  statusDrop: 0,
                  transactionModel: TransactionModel.empty(),
                  isPay: false);
            }
            return state.copyWith.call(
                listMySensorModel: List.empty(),
                failureOption: optionOf(f),
                isLoading: false,
                slot_id: 0,
                transaction_id: 0,
                slot_name: '',
                listSensorModel: List.empty(),
                listDropModel: List.empty(),
                statusDrop: 0,
                transactionModel: TransactionModel.empty(),
                isPay: false);
          },
          (items) => state.copyWith.call(
              listMySensorModel: items,
              failureOption: none(),
              isLoading: false,
              slot_id: 0,
              transaction_id: 0,
              slot_name: '',
              listSensorModel: List.empty(),
              listDropModel: List.empty(),
              statusDrop: 0,
              transactionModel: TransactionModel.empty(),
              isPay: false),
        ));
      },
      drop: (e) async {
        if (e.listSlotModel.isNotEmpty) {
          List<SlotModel> listSlotModel = [...e.listSlotModel];
          SensorModel mySensor = state.listMySensorModel[state.listMySensorModel
              .indexWhere(
                  (element) => element.sensorCategoryModel!.name! == 'drop')];
          List<DropModel> listDropVending = [];
          List<SensorModel> listSensorVending = [];
          for (var slotModel in listSlotModel) {
            listDropVending.add(DropModel(
                slot_number: slotModel.id,
                product: slotModel.product,
                slot: int.parse(slotModel.name!),
                amount: slotModel.amount,
                statusDrop: 0,
                dropped: 0,
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
            emit(state.copyWith.call(isLoading: true, readyDrop: true));
            Either<TransactionFailure, Unit> failureOrSuccess =
                await _transactionRepository.drop(
                    slotName: sensorModel.slotName!.toString());
            emit(failureOrSuccess.fold(
              (f) {
                DropModel drModel = listDropVending[listDropVending.indexWhere(
                    (element) => element.slot_number == sensorModel.slot)];
                int statusDrop = 0;
                statusDrop = drModel.quantity_error! + 1 > 0
                    ? 3
                    : (drModel.dropped! + 1 != drModel.amount ? 1 : 2);
                listDropVending[listDropVending.indexWhere(
                        (element) => element.slot_number == sensorModel.slot)] =
                    DropModel(
                        slot_number: sensorModel.slot,
                        slot: sensorModel.slotName,
                        amount: drModel.amount,
                        product: drModel.product,
                        statusDrop: statusDrop,
                        dropped: drModel.dropped! + 1,
                        quantity_error: drModel.quantity_error! + 1,
                        quantity_success: drModel.quantity_success);

                listSensorVending[listSensorVending.indexWhere(
                        (element) => element.slot == sensorModel.slot)] =
                    SensorModel(
                  code: mySensor.code,
                  description: vErrorDrop,
                  value: false,
                  slot: sensorModel.slot,
                  slotName: sensorModel.slotName,
                );
                return state.copyWith.call(
                    isLoading: false,
                    listDropModel: listDropVending,
                    listSensorModel: listSensorVending);
              },
              (transaction) {
                DropModel drModel = listDropVending[listDropVending.indexWhere(
                    (element) => element.slot_number == sensorModel.slot)];
                int statusDrop = 0;
                statusDrop = drModel.quantity_error! > 0
                    ? 3
                    : (drModel.dropped! + 1 != drModel.amount ? 1 : 2);
                listDropVending[listDropVending.indexWhere(
                        (element) => element.slot_number == sensorModel.slot)] =
                    DropModel(
                        slot_number: sensorModel.slot,
                        slot: sensorModel.slotName,
                        amount: drModel.amount,
                        statusDrop: statusDrop,
                        product: drModel.product,
                        dropped: drModel.dropped! + 1,
                        quantity_error: drModel.quantity_error,
                        quantity_success: drModel.quantity_success! + 1);

                listSensorVending[listSensorVending.indexWhere(
                        (element) => element.slot == sensorModel.slot)] =
                    SensorModel(
                  code: mySensor.code,
                  description: vSuccessDrop,
                  value: true,
                  slot: sensorModel.slot,
                  slotName: sensorModel.slotName,
                );
                return state.copyWith.call(
                    isLoading: false,
                    listDropModel: listDropVending,
                    listSensorModel: listSensorVending);
              },
            ));

            await Future.delayed(const Duration(seconds: 3));
          }

          List<DropModel> listDrop =
              listDropVending.where((o) => o.quantity_error! > 0).toList();
          emit(state.copyWith.call(
              statusDrop: listDrop.isEmpty ? 1 : 2,
              listDropModel: listDropVending,
              // isLoading: false,
              listSensorModel: listSensorVending));
        }
      },
      finish: (e) async {
        emit(state.copyWith.call(failureOption: none()));
        if (e.isLoading) {
          final failureOrSuccess = await _transactionRepository.finish(
              listSensorModel: state.listSensorModel,
              transactionId: state.transactionModel.id!,
              transactionCode: state.transactionModel.transaction_code!);

          return emit(failureOrSuccess.fold(
            (f) {
              return state.copyWith.call(
                  isLoading: false, isFinish: true, failureOption: optionOf(f));
            },
            (refundModel) => state.copyWith.call(
                isLoading: false,
                refundModel: refundModel,
                isFinish: true,
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
        await Future.delayed(const Duration(seconds: 3));
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
