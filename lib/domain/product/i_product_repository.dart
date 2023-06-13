import 'package:dartz/dartz.dart';
import 'package:standart_project/app_constant.dart';
import 'package:standart_project/domain/product/page_model.dart';
import 'package:standart_project/domain/product/product_failure.dart';

abstract class IProductRepository {
  Future<Either<ProductFailure, PageModel>> load(
      {int page = 0, int size = vLimit});
}
