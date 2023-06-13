import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:standart_project/app_constant.dart';
import 'package:standart_project/common/exceptions/exceptions.dart';
import 'package:standart_project/domain/auth/i_auth_repository.dart';
import 'package:standart_project/domain/auth/profile_model.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final IAuthRepository authRepository;
  ProfileBloc(this.authRepository) : super(const ProfileState.inProgress()) {
    on<ProfileEvent>(_onEventChanged);
  }

  Future<void> _onEventChanged(
    ProfileEvent event,
    Emitter<ProfileState> emit,
  ) {
    return event.map(load: (e) async {
      emit(const ProfileState.inProgress());
      final failureOrSuccess = await authRepository.loadProfile();

      emit(failureOrSuccess.fold(
        (failure) => ProfileState.failure(failure),
        (details) => ProfileState.success(details),
      ));
    });
  }
}
