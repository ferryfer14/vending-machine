import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:standart_project/domain/product/product_failure.dart';

import '../../../app_constant.dart';
import '../../../common/api/api_client.dart';
import '../../../common/exceptions/exceptions.dart';
import '../../../env.dart';
import '../page_dtos.dart';
import '../slot_dtos.dart';

@injectable
class ProductRemoteDataProvider {
  final ApiClient apiClient;
  final SharedPreferences prefs;
  final Env env;

  ProductRemoteDataProvider(
    this.apiClient,
    this.prefs,
    this.env,
  );

  Future<Either<ProductFailure, PageModelDto>> load(
      {int page = 0,
      int size = vLimit,
      int distance = 0,
      String search = '',
      double latitude = 0.0,
      double longitude = 0.0}) async {
    final token = prefs.getString(vAccessToken);
    try {
      final Map<String, String> params = {"size": "$size", "page": "$page"};
      var response = await apiClient.get(
        params: params,
        env.baseUrl + "v1/slot/vending",
        headers: {
          'Accept': 'application/json',
          'Authorization': 'bearer $token',
        },
        followRedirects: false,
        validateStatus: (status) => status! < 500,
      );
      if (response.statusCode == 200) {
        return right(PageModelDto.fromJson(response.data));
      } else if (response.statusCode == 401) {
        return left(const ProductFailure.appException(
            AppException.unauthenticatedException()));
      } else if (response.statusCode == 403) {
        return left(const ProductFailure.appException(
            AppException.unauthenticatedException()));
      }
    } catch (e) {
      return left(const ProductFailure.noConnection());
    }

    return left(const ProductFailure.unexpectedError());
  }
}
