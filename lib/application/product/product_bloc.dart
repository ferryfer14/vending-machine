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
import '../../domain/transaction/transaction_model.dart';
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

      return emit(failureOrSuccess.fold(
        (f) {
          if (f == const ProductFailure.emptyList()) {
            return state.copyWith.call(hasReachedMax: true, isLoading: false);
          }
        return state.copyWith.call(
          failureOption: optionOf(f),
          isLoading: false,
        );
        },
        (items) {
        final totalPage = (items.slot!.length / vSizeGrid).ceil();
        return state.copyWith.call(
            items: items,
            page: 1,
            totalPage: totalPage,
            hasReachedMax: items.last!,
            failureOption: none(),
            totalCart: 0,
            totalPrice: 0,
            cart: List.empty(),
            isLoading: false);
      }
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
          (items) {
          final totalPage = (items.slot!.length / vSizeGrid).ceil();
          return state.copyWith.call(
            hasReachedMax: false,
            page: e.page,
            items: items,
            totalPage: totalPage,
            failureOption: none(),
            isLoading: false,
          );
        }
        ));
      }
    }, addAmount: (e) async {
      PageModel pageModel = state.items;
      List<SlotModel> listSlot = [...pageModel.slot!];
      final index =
          listSlot.indexWhere((element) => element.id == e.slotModel.id);
      listSlot.removeWhere((item) => item.id == e.slotModel.id);
      listSlot.insert(
          index,
          SlotModel(
              id: e.slotModel.id,
              name: e.slotModel.name,
              product: e.slotModel.product,
              vending: e.slotModel.vending,
              price: e.slotModel.price,
              stock: e.slotModel.stock,
              amount: e.amount));
      final total = listSlot.fold(0, (sum, item) => sum + item.amount!);
      final totalPrice = listSlot.fold(0, (sum, item) => sum + (item.amount!*item.price!));

      List<SlotModel> listCart = listSlot.where((o) => o.amount! > 0).toList();
      emit(state.copyWith.call(
          items: PageModel(
              slot: listSlot,
              total_pages: pageModel.total_pages,
              last: pageModel.last),
          totalCart: total,
          totalPrice:totalPrice,
          cart: listCart));
    }, changeAmount: (e) async {
      int amount = e.amount;
      emit(state.copyWith.call(amount: amount));
    }, changeIndexStarted: (e) async {
      emit(state.copyWith.call(indexStarted: e.index, currentPage: e.page));
    }, submitCart: (e) async {
      emit(state.copyWith.call(
        isLoading: true,
        transaction: TransactionModel.empty(),
        failureOption: none(),
      ));
      final failureOrSuccess =
          await _productRepository.submitCart(slotModel: state.cart);

      return emit(failureOrSuccess.fold(
        (f) {
          return state.copyWith
              .call(isLoading: false, failureOption: optionOf(f));
        },
        (transaction) => state.copyWith.call(
            transaction: transaction, isLoading: false, failureOption: none()),
      ));
    }, reset: (e) async {
      emit(ProductState.initial());
    });
  }
}
