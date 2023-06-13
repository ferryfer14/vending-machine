part of 'caraousel_bloc.dart';

@freezed
class CaraouselState with _$CaraouselState {
  const factory CaraouselState({
    required List<CaraouselModel> items,
    required bool isLoading,
    required Option<CaraouselFailure> failureOption,
  }) = _CaraouselState;

  factory CaraouselState.initial() => CaraouselState(
        items: List.empty(),
        failureOption: none(),
        isLoading: true,
      );
}
