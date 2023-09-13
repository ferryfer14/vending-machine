part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.started(
      {@Default(false) bool isRefresh,
      @Default(false) bool isLoading}) = _Started;

  const factory ProductEvent.changeAmount(int amount) = _ChangeAmount;

  const factory ProductEvent.addAmount(ProductModel productModel, int amount) =
      _AddAmount;

  const factory ProductEvent.changeIndexStarted(int index, int page) =
      _ChangeIndexStarted;

  const factory ProductEvent.submitCart() = _SubmitCart;

  const factory ProductEvent.reset() = _Reset;
}
