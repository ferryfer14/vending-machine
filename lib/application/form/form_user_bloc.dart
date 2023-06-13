import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:standart_project/domain/caraousel/caraousel_failure.dart';
import 'package:standart_project/domain/form/form_failure.dart';
import 'package:standart_project/domain/form/i_form_repository.dart';

import '../../domain/caraousel/caraousel_model.dart';
import '../../domain/caraousel/i_caraousel_repository.dart';
part 'form_user_bloc.freezed.dart';
part 'form_user_event.dart';
part 'form_user_state.dart';

@injectable
class FormUserBloc extends Bloc<FormUserEvent, FormUserState> {
  final IFormRepository _formRepository;
  FormUserBloc(this._formRepository) : super(FormUserState.initial()) {
    on<FormUserEvent>(_onEventChanged);
  }

  Future<void> _onEventChanged(
    FormUserEvent event,
    Emitter<FormUserState> emit,
  ) {
    return event.map(
      started: (_) async {
        emit(FormUserState.initial());
      },
      fullnameChanged: (e) async {
        emit(state.copyWith.call(fullname: e.fullname));
      },
      emailChanged: (e) async {
        emit(state.copyWith.call(email: e.email));
      },
      phoneChanged: (e) async {
        emit(state.copyWith.call(phone: e.phone));
      },
      submited: (e) async {
        if (e.isLoading) {
          emit(state.copyWith.call(isLoading: true));

          Either<FormFailure, Unit>? failureOrLogin;

          failureOrLogin = await _formRepository.save(fullname: state.fullname, email: state.email, phone: state.phone);

          emit(state.copyWith.call(
            isLoading: false,
            failureOrSuccess: optionOf(failureOrLogin),
          ));
        }
      },
    );
  }
}
