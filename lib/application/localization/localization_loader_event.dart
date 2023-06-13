part of 'localization_loader_bloc.dart';

@freezed
class LocalizationLoaderEvent with _$LocalizationLoaderEvent {
  const factory LocalizationLoaderEvent.started({@Default(false) bool isRefresh}) = _Started;
  const factory LocalizationLoaderEvent.localeChanged(String locale) =
      _LocaleChanged;
}
