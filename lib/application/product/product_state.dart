part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState({
    required PageModel items,
    required List<SlotModel> cart,
    required bool hasReachedMax,
    required bool isLoading,
    required int page,
    required int currentPage,
    required int amount,
    required int totalPage,
    required int totalPrice,
    required int totalCart,
    required int size,
    required int idSelected,
    required int indexStarted,
    required int indexSelected,
    required Option<ProductFailure> failureOption,
  }) = _ProductState;

  factory ProductState.initial() => ProductState(
      items: PageModel.empty(),
      cart: List.empty(),
      failureOption: none(),
      isLoading: false,
      hasReachedMax: false,
      page: 1,
      currentPage: 0,
      amount: 0,
      totalPage: 0,
      totalCart: 0,
      totalPrice: 0,
      size: vLimit,
      indexStarted: 0,
      indexSelected:0,
      idSelected: 0);
}
