part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.started( 
      {@Default(false) bool isRefresh, @Default(false) bool isLoading}) = _Started;

  const factory ProductEvent.loadMore(int page, {@Default(false) bool isLoad}) = _LoadMore;

  const factory ProductEvent.reset() = _Reset;
}
