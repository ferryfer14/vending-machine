import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:standart_project/app_constant.dart';

import '../../domain/product/i_product_repository.dart';

import '../../domain/product/product_failure.dart';
import '../../domain/product/product_model.dart';
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
      final failureOrSuccess = await _productRepository.load();

      return emit(failureOrSuccess.fold((f) {
        if (f == const ProductFailure.emptyList()) {
          return state.copyWith.call(hasReachedMax: true, isLoading: false);
        }
        return state.copyWith.call(
          failureOption: optionOf(f),
          isLoading: false,
        );
      }, (items) {
        final totalPage = (items.length / vSizeGrid).ceil();
        return state.copyWith.call(
            productModel: items,
            page: 1,
            totalPage: totalPage,
            failureOption: none(),
            totalCart: 0,
            isPay: false,
            totalPrice: 0,
            cart: List.empty(),
            isLoading: false);
      }));
    }, addAmount: (e) async {
      List<ProductModel> listProduct = [...state.productModel];
      final index =
          listProduct.indexWhere((element) => element.id == e.productModel.id);
      listProduct.removeWhere((item) => item.id == e.productModel.id);
      listProduct.insert(
          index,
          ProductModel(
              id: e.productModel.id,
              name: e.productModel.name,
              price: e.productModel.price,
              description: e.productModel.description,
              image: e.productModel.image,
              stock: e.productModel.stock,
              amount: e.amount));
      final total = listProduct.fold(0, (sum, item) => sum + item.amount!);
      final totalPrice = listProduct.fold(
          0, (sum, item) => sum + (item.amount! * item.price!));

      List<ProductModel> listCart =
          listProduct.where((o) => o.amount! > 0).toList();
      emit(state.copyWith.call(
          productModel: listProduct,
          totalCart: total,
          totalPrice: totalPrice,
          cart: listCart));
    }, changeAmount: (e) async {
      int amount = e.amount;
      emit(state.copyWith.call(amount: amount));
    }, changeIndexStarted: (e) async {
      emit(state.copyWith.call(indexStarted: e.index, currentPage: e.page));
    }, submitCart: (e) async {
      emit(state.copyWith.call(
        isLoading: true,
        failureOption: none(),
      ));
      // final failureOrSuccess =
      //     await _productRepository.submitCart(slotModel: state.cart);

      // return emit(failureOrSuccess.fold(
      //   (f) {
      //     return state.copyWith
      //         .call(isLoading: false, failureOption: optionOf(f));
      //   },
      //   (transaction) => state.copyWith.call(
      //       transaction: transaction,
      //       isLoading: false,
      //       isPay: false,
      //       failureOption: none()),
      // ));
    }, reset: (e) async {
      emit(ProductState.initial());
    });
  }
}
