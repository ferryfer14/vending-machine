import 'package:dio/dio.dart';

class InternalServerError extends DioError {
  final DioError dioError;

  InternalServerError(this.dioError)
      : super(
          requestOptions: dioError.requestOptions,
          error: dioError.error,
          response: dioError.response,
          type: dioError.type,
        );
}
