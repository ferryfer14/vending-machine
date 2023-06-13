part of 'caraousel_bloc.dart';

@freezed
class CaraouselEvent with _$CaraouselEvent {
  const factory CaraouselEvent.started({@Default(false) bool isRefresh}) =
      _Started;

  const factory CaraouselEvent.reset() = _Reset;
}
