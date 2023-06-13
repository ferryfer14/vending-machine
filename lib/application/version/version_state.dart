part of 'version_bloc.dart';

@freezed
class VersionState with _$VersionState {
  const factory VersionState(
      {required bool isUpdate, required bool isLoading, required String appStoreLink}) = _VersionState;

  factory VersionState.init() =>
      const VersionState(isUpdate: false, isLoading: true, appStoreLink:'');
}
