import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:standart_project/app_constant.dart';

import 'package:standart_project/infrastructure/product/product_dtos.dart';

import '../../common/exceptions/exceptions.dart';
import '../../domain/product/i_product_repository.dart';

import '../../domain/product/product_failure.dart';
import '../../domain/product/product_model.dart';
import 'data_sources/remote_data_provider.dart';

@Injectable(as: IProductRepository)
class ProductRepository implements IProductRepository {
  final ProductRemoteDataProvider productRemoteDataProvider;

  ProductRepository(this.productRemoteDataProvider);

  @override
  Future<Either<ProductFailure, List<ProductModel>>> load() async {
    try {
      final response = await productRemoteDataProvider.load();

      return response.fold((l) => left(l), (items) {
        final listData = items.map((e) => e.toDomain()).toList();
        if (listData.isEmpty) {
          return left(const ProductFailure.emptyList());
        }
        return right(listData);
      });
    } catch (e) {
      return left(const ProductFailure.notFound());
    }
  }

  @override
  Future<Either<ProductFailure, Unit>> submitCart(
      {required List<ProductModel> productModel,
      required int nominalPayment,
      required int paymentReturn,
      required int price,
      required int quantity}) async {
    try {
      final productModelDto =
          productModel.map((e) => ProductModelDto.fromDomain(e)).toList();
      final response = await productRemoteDataProvider.submitCart(
          productModelDto: productModelDto,
          nominalPayment: nominalPayment,
          paymentReturn: paymentReturn,
          price: price,
          quantity: quantity);

      return response.fold((l) => left(l), (items) {
        return right(items);
      });
    } on AppException catch (e) {
      return left(ProductFailure.appException(e));
    }
  }
}
