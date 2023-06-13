part of 'version_bloc.dart';

@freezed
class VersionEvent with _$VersionEvent {
  const factory VersionEvent.started({@Default(false) bool isRefresh}) = _Started;
}
