import 'package:dio/dio.dart';
import '../errors/internal_server_error.dart';

class InternalServerErrorInterceptor extends Interceptor {
  @override
  Future onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.response != null) {
      if (err.response!.statusCode != null &&
          err.response!.statusCode! >= 500 &&
          err.response!.statusCode! < 600) {
        return handler.reject(InternalServerError(err));
      }
    }

    return handler.next(err);
  }
}
