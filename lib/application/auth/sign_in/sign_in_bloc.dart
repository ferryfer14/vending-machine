import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:standart_project/domain/auth/auth_failure.dart';
import 'package:standart_project/domain/auth/i_auth_repository.dart';
import 'package:standart_project/domain/auth/auth_model.dart';

part 'sign_in_bloc.freezed.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final IAuthRepository _authRepository;

  SignInBloc(
    this._authRepository,
  ) : super(SignInState.initial()) {
    on<SignInEvent>(_onEventChanged);
  }

  Future<void> _onEventChanged(
    SignInEvent event,
    Emitter<SignInState> emit,
  ) {
    return event.map(loginForm: (e) async {
      if (e.isSubmitting) {
        Either<AuthFailure, Unit>? failureOrLogin;

        emit(state.copyWith.call(
          isSubmitting: true,
          isLoading: true,
          loginFailureOrSuccess: none(),
        ));

        failureOrLogin = await _authRepository.login();

        emit(state.copyWith.call(
          isSubmitting: false,
          isLoading: false,
          showErrorMessages: true,
          loginFailureOrSuccess: optionOf(failureOrLogin),
        ));
      }
    });
  }
}
