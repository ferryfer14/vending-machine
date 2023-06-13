import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'dart:convert';

import '../../../domain/caraousel/caraousel_failure.dart';
import '../caraousel_dtos.dart';

@injectable
class CaraouselLocalDataProvider {
  Future<Either<CaraouselFailure, List<CaraouselModelDto>>> load() async {
    final String response =
        await rootBundle.loadString('assets/json/caraousel.json');

    Map<String, dynamic> results = await json.decode(response);
    final items = (results['items'] as List)
        .map((e) => CaraouselModelDto.fromJson(e as Map<String, dynamic>))
        .toList();
    return right(items);
  }
}
