import 'package:dio/dio.dart';

class UnauthorizedError extends DioError {
  final DioError dioError;

  UnauthorizedError(this.dioError)
      : super(
          requestOptions: dioError.requestOptions,
          error: dioError.error,
          response: dioError.response,
          type: dioError.type,
        );
}
