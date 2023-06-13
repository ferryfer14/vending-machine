part of 'localization_loader_bloc.dart';

@freezed
class LocalizationLoaderState with _$LocalizationLoaderState {
  const factory LocalizationLoaderState({
    required String located,
    required String version,
    required bool isLoading
  }) = _LocalizationLoaderState;

  factory LocalizationLoaderState.init() =>
      const LocalizationLoaderState(
      located: 'id', version: '0.1', isLoading: true);
}
