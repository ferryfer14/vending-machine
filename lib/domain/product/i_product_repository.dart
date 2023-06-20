import 'package:dartz/dartz.dart';
import 'package:standart_project/app_constant.dart';
import 'package:standart_project/domain/product/page_model.dart';
import 'package:standart_project/domain/product/product_failure.dart';
import 'package:standart_project/domain/product/slot_model.dart';

import '../transaction/transaction_model.dart';

abstract class IProductRepository {
  Future<Either<ProductFailure, PageModel>> load(
      {int page = 0, int size = vLimit});
  Future<Either<ProductFailure, TransactionModel>> submitCart(
      {required List<SlotModel> slotModel});
}
