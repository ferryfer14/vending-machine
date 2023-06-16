import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:standart_project/app_constant.dart';
import 'package:standart_project/domain/product/slot_model.dart';

import '../../domain/product/i_product_repository.dart';
import '../../domain/product/page_model.dart';
import '../../domain/product/product_failure.dart';
part 'product_bloc.freezed.dart';
part 'product_event.dart';
part 'product_state.dart';

@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final IProductRepository _productRepository;
  ProductBloc(this._productRepository) : super(ProductState.initial()) {
    on<ProductEvent>(_onEventChanged);
  }

  Future<void> _onEventChanged(
    ProductEvent event,
    Emitter<ProductState> emit,
  ) {
    return event.map(started: (e) async {
      emit(state.copyWith.call(isLoading: true));
      final failureOrSuccess = await _productRepository.load(size: state.size);

      emit(failureOrSuccess.fold(
        (f) {
          if (f == const ProductFailure.emptyList()) {
            return state.copyWith.call(hasReachedMax: true, isLoading: false);
          }
          return state.copyWith.call(failureOption: optionOf(f));
        },
        (items) => state.copyWith.call(
            items: items,
            page: 1,
            hasReachedMax: items.last!,
            failureOption: none(),
            isLoading: false),
      ));
    }, loadMore: (e) async {
      if (e.isLoad && !state.hasReachedMax && !state.isLoading) {
        emit(state.copyWith.call(isLoading: true));
        final failureOrSuccess = await _productRepository.load(
            page: e.page, size: state.size);
        return emit(failureOrSuccess.fold(
          (f) {
            if (f == const ProductFailure.emptyList() &&
                state.items.slot!.isNotEmpty) {
              return state.copyWith
                  .call(
                hasReachedMax: true,
                page: e.page + 1,
                isLoading: false,
              );
            }
            return state.copyWith.call(
              failureOption: optionOf(f),
              isLoading: false,
            );
          },
          (items) => state.copyWith.call(
            hasReachedMax: false,
            page: e.page,
            items: items,
            failureOption: none(),
            isLoading: false,
          ),
        ));
      }
    }, reset: (e) async {
      emit(ProductState.initial());
    });
  }
}
