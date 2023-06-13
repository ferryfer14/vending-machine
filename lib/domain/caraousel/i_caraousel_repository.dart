import 'package:dartz/dartz.dart';
import 'package:standart_project/domain/caraousel/caraousel_failure.dart';
import 'package:standart_project/domain/caraousel/caraousel_model.dart';

abstract class ICaraouselRepository {
  Future<Either<CaraouselFailure, List<CaraouselModel>>> load();
}
