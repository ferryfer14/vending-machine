import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:standart_project/app_constant.dart';
import 'package:standart_project/domain/product/slot_model.dart';

import '../../domain/product/i_product_repository.dart';
import '../../domain/product/page_model.dart';
import '../../domain/product/product_failure.dart';
import 'data_sources/remote_data_provider.dart';

@Injectable(as: IProductRepository)
class ProductRepository implements IProductRepository {
  final ProductRemoteDataProvider productRemoteDataProvider;

  ProductRepository(this.productRemoteDataProvider);
  @override
  @override
  Future<Either<ProductFailure, PageModel>> load(
      {int page = 0, int size = vLimit}) async {
    try {
      final response =
          await productRemoteDataProvider.load(page: page, size: size);

      return response.fold((l) => left(l), (items) {
        if (items.slotDto!.isEmpty) {
          return left(const ProductFailure.emptyList());
        }
        return right(items.toDomain());
      });
    } catch (e) {
      return left(const ProductFailure.notFound());
    }
  }
}
