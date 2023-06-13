import 'package:dio/dio.dart';

class BadNetworkError extends DioError {
  final DioError dioError;

  BadNetworkError(this.dioError)
      : super(
          requestOptions: dioError.requestOptions,
          error: dioError.error,
          response: dioError.response,
          type: dioError.type,
        );
}
