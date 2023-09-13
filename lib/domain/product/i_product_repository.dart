import 'package:dartz/dartz.dart';
import 'package:standart_project/app_constant.dart';
import 'package:standart_project/domain/product/product_failure.dart';
import 'package:standart_project/domain/product/product_model.dart';

abstract class IProductRepository {
  Future<Either<ProductFailure, List<ProductModel>>> load();
  Future<Either<ProductFailure, Unit>> submitCart(
      {required List<ProductModel> productModel,
      required int price,
      required int quantity});
}
