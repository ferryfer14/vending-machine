import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:new_version/new_version.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'version_bloc.freezed.dart';
part 'version_event.dart';
part 'version_state.dart';

@injectable
class VersionBloc extends Bloc<VersionEvent, VersionState> {
  final SharedPreferences _prefs;
  final NewVersion _newVersion;
  VersionBloc(this._prefs, this._newVersion) : super(VersionState.init()) {
    on<VersionEvent>(_onEventChanged);
  }

  Future<void> _onEventChanged(
    VersionEvent event,
    Emitter<VersionState> emit,
  ) {
    return event.map(started: (e) async {
      if (e.isRefresh) {
        emit(state.copyWith.call(isLoading: true));
        final versionStatus = await _newVersion.getVersionStatus();
        if (versionStatus != null) {
          //updateVersion(context, versionStatus.appStoreLink);
          return emit(state.copyWith
              .call(isLoading: false, isUpdate: versionStatus.canUpdate, appStoreLink: versionStatus.appStoreLink));
        }
        return emit(state.copyWith.call(isLoading: false, isUpdate: false));
      }
    });
  }
}
