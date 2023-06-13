import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:standart_project/domain/caraousel/caraousel_failure.dart';

import '../../domain/caraousel/caraousel_model.dart';
import '../../domain/caraousel/i_caraousel_repository.dart';
part 'caraousel_bloc.freezed.dart';
part 'caraousel_event.dart';
part 'caraousel_state.dart';

@injectable
class CaraouselBloc extends Bloc<CaraouselEvent, CaraouselState> {
  final ICaraouselRepository _caraouselRepository;
  CaraouselBloc(this._caraouselRepository) : super(CaraouselState.initial()) {
    on<CaraouselEvent>(_onEventChanged);
  }

  Future<void> _onEventChanged(
    CaraouselEvent event,
    Emitter<CaraouselState> emit,
  ) {
    return event.map(started: (e) async {
      if (e.isRefresh) {
        emit(state.copyWith.call(isLoading: true));

        final failureOrSuccess = await _caraouselRepository.load();

        return emit(failureOrSuccess.fold(
          // ignore: void_checks
          (f) {
            if (f == const CaraouselFailure.emptyList()) {
              return state.copyWith.call(isLoading: false);
            }
            return state.copyWith
                .call(failureOption: optionOf(f), isLoading: false);
          },
          (items) => state.copyWith
              .call(items: items, failureOption: none(), isLoading: false),
        ));
      }
    }, reset: (e) async {
      emit(CaraouselState.initial());
    });
  }
}
