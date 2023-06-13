import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:standart_project/domain/caraousel/caraousel_failure.dart';

import '../../domain/caraousel/caraousel_model.dart';
import '../../domain/caraousel/i_caraousel_repository.dart';
import 'data_sources/local_data_provider.dart';

@Injectable(as: ICaraouselRepository)
class CaraouselRepository implements ICaraouselRepository {
  final CaraouselLocalDataProvider caraouselLocalDataProvider;

  CaraouselRepository(this.caraouselLocalDataProvider);
  @override
  Future<Either<CaraouselFailure, List<CaraouselModel>>> load() async {
    try {
      final response = await caraouselLocalDataProvider.load();

      return response .fold((l) => left(l), (items) {
        final listData = items.map((e) => e.toDomain()).toList();
        if (listData.isEmpty) {
          return left(const CaraouselFailure.emptyList());
        }
        return right(listData);
      });
    } catch (e) {
      return left(const CaraouselFailure.notFound());
    }
  }
}
