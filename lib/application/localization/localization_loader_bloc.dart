import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:standart_project/app_constant.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'localization_loader_bloc.freezed.dart';
part 'localization_loader_event.dart';
part 'localization_loader_state.dart';

@injectable
class LocalizationLoaderBloc
    extends Bloc<LocalizationLoaderEvent, LocalizationLoaderState> {
  final SharedPreferences _prefs;
  LocalizationLoaderBloc(this._prefs) : super(LocalizationLoaderState.init()) {
    on<LocalizationLoaderEvent>(_onEventChanged);
  }

  Future<void> _onEventChanged(
    LocalizationLoaderEvent event,
    Emitter<LocalizationLoaderState> emit,
  ) {
    return event.map(started: (e) async {
      if (e.isRefresh) {
        emit(state.copyWith.call(isLoading: true));
        String langCode = _prefs.getString(vLang) ?? 'en';
        PackageInfo packageInfo = await PackageInfo.fromPlatform();
        _prefs.setString(vVersion, packageInfo.version);
        emit(state.copyWith.call(
            located: langCode, isLoading: false, version: packageInfo.version));
      }
    }, localeChanged: (e) async {
      _prefs.setString(vLang, e.locale);
      emit(state.copyWith.call(located: e.locale));
    });
  }
}
