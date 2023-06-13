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

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository _authRepository;

  AuthBloc(
    this._authRepository,
  ) : super(const AuthState.initial()) {
    on<AuthEvent>(_onEventChanged);
  }

  Future<void> _onEventChanged(
    AuthEvent event,
    Emitter<AuthState> emit,
  ) {
    return event.map(
      authCheckRequested: (_) async {
        final userOption = await _authRepository.getSignedInUser();
        userOption.fold(
          () => emit(const AuthState.unauthenticated()),
          (_) => emit(const AuthState.authenticated()),
        );
      },
      refreshToken: (_) async {
        final userOption = await _authRepository.getRefreshToken();
        userOption.fold(
          () => emit(const AuthState.unauthenticated()),
          (_) => emit(const AuthState.authenticated()),
        );
      },
      updateTokenFirebase: (e) async {
        final userOption = await _authRepository.updateTokenFirebase(e.token);
        userOption.fold(
          () => emit(const AuthState.unauthenticated()),
          (_) => emit(const AuthState.authenticated()),
        );
      },
      signedOut: (_) async {
        await _authRepository.logout();
        emit(const AuthState.unauthenticated());
      },
    );
  }
}
