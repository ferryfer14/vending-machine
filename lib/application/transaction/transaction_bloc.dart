import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:standart_project/domain/transaction/transaction_failure.dart';

import '../../domain/transaction/i_transaction_repository.dart';
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
      submited: (e) async {
        if (e.isLoading) {
          emit(state.copyWith.call(isLoading: true));

          Either<TransactionFailure, int>? failureOrSuccess;

          failureOrSuccess =
              await _transactionRepository.submit(id: e.id.toString());

          emit(failureOrSuccess.fold(
            (f) {
              return state.copyWith.call(
                  isLoading: false,
                  slot_id: e.id,
                  slot_name: e.name,
                  failureOption: optionOf(f));
            },
            (transaction_id) => state.copyWith.call(
                slot_id: e.id,
                transaction_id: transaction_id,
                isLoading: false,
                slot_name: e.name,
                failureOption: none()),
          ));
        }
      },
      drop: (e) async {
        if (e.isLoading) {
          emit(state.copyWith
              .call(isLoading: true, transaction_id: e.transaction_id));

          Either<TransactionFailure, Unit>? failureOrSuccess;

          failureOrSuccess = await _transactionRepository.drop(
              id: e.slot_id,
              transaction_id: e.transaction_id,
              slot_name: e.slot_name);

          return emit(failureOrSuccess.fold(
            (f) {
              return state.copyWith.call(
                  isLoading: false,
                  slot_id: e.slot_id,
                  transaction_id: e.transaction_id,
                  status_drop: false,
                  failureOption: optionOf(f));
            },
            (_) => state.copyWith.call(
                isLoading: false,
                slot_id: e.slot_id,
                transaction_id: e.transaction_id,
                status_drop: true,
                failureOption: none()),
          ));
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
              return state.copyWith
                  .call(isLoading: false,
                  transaction_id: e.transaction_id,
                  failureOption: optionOf(f));
            },
            (_) =>
                state.copyWith.call(
                isLoading: false,
                transaction_id: e.transaction_id,
                failureOption: none()),
          ));
        }
      },
    );
  }
}
