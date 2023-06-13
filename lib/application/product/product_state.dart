part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState({
    required PageModel items,
    required bool hasReachedMax,
    required bool isLoading,
    required int page,
    required int totalPage,
    required int size,
    required int idSelected,
    required int indexSelected,
    required Option<ProductFailure> failureOption,
  }) = _ProductState;

  factory ProductState.initial() => ProductState(
      items: PageModel.empty(),
      failureOption: none(),
      isLoading: false,
      hasReachedMax: false,
      page: 1,
      totalPage: 0,
      size: vLimit,
      indexSelected:0,
      idSelected: 0);
}
