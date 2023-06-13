import 'package:dio/dio.dart';
import 'package:dio_logger/dio_logger.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import '../exceptions/exceptions.dart';
import '../../env.dart';

import 'errors/bad_network_error.dart';
import 'errors/internal_server_error.dart';
import 'errors/unauthorized_error.dart';
import 'interceptors/bad_network_error_interceptor.dart';
import 'interceptors/internal_server_error_interceptor.dart';
import 'interceptors/unauthorized_interceptor.dart';

@lazySingleton
class ApiClient {
  final Dio _dio;
  final Env _env;

  ApiClient(
    this._dio,
    this._env,
  ) {
    _dio.options.baseUrl = _env.baseUrl;
    _dio.options.connectTimeout = const Duration(seconds: 60).inMilliseconds;
    _dio.interceptors.add(BadNetwotkErrorInterceptor());
    _dio.interceptors.add(InternalServerErrorInterceptor());
    _dio.interceptors.add(UnauthorizedInterceptor());

    if (kDebugMode) {
      _dio.interceptors.add(dioLoggerInterceptor);
    }
  }

  Future<Response> post(
    String path, {
    dynamic data,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? params,
    bool followRedirects = true,
    bool Function(int?)? validateStatus,
    String? contentType,
  }) async {
    try {
      return _dio.post(
        path,
        data: data,
        options: Options(
          headers: headers,
          followRedirects: followRedirects,
          validateStatus: validateStatus,
          contentType: contentType,
        ),
        queryParameters: params,
      );
    } on UnauthorizedError {
      throw const AppException.unauthenticatedException();
    } on InternalServerError {
      throw const AppException.internalServerException();
    } on BadNetworkError {
      throw const AppException.badNetworkException();
    } on DioError catch (e) {
      throw AppException.serverException(errorMessage: e.toString());
    } catch (e) {
      throw const AppException.unexpectedException();
    }
  }

  Future<Response> put(
    String path, {
    dynamic data,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? params,
    bool followRedirects = true,
    bool Function(int?)? validateStatus,
    String? contentType,
  }) async {
    try {
      return _dio.put(
        path,
        data: data,
        options: Options(
          headers: headers,
          followRedirects: followRedirects,
          validateStatus: validateStatus,
          contentType: contentType,
        ),
        queryParameters: params,
      );
    } on UnauthorizedError {
      throw const AppException.unauthenticatedException();
    } on InternalServerError {
      throw const AppException.internalServerException();
    } on BadNetworkError {
      throw const AppException.badNetworkException();
    } on DioError catch (e) {
      throw AppException.serverException(
          errorMessage: e.response?.statusMessage);
    } catch (e) {
      throw const AppException.unexpectedException();
    }
  }

  Future<Response> delete(
    String path, {
    dynamic data,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? params,
    bool followRedirects = true,
    bool Function(int?)? validateStatus,
    String? contentType,
  }) async {
    try {
      return _dio.delete(
        path,
        data: data,
        options: Options(
          headers: headers,
          followRedirects: followRedirects,
          validateStatus: validateStatus,
          contentType: contentType,
        ),
        queryParameters: params,
      );
    } on UnauthorizedError {
      throw const AppException.unauthenticatedException();
    } on InternalServerError {
      throw const AppException.internalServerException();
    } on BadNetworkError {
      throw const AppException.badNetworkException();
    } on DioError catch (e) {
      throw AppException.serverException(
          errorMessage: e.response?.statusMessage);
    } catch (e) {
      throw const AppException.unexpectedException();
    }
  }

  Future<Response> get(
    String path, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? params,
    bool followRedirects = true,
    bool Function(int?)? validateStatus,
    String? contentType,
  }) async {
    try {
      return await _dio.get(
        path,
        options: Options(
          headers: headers,
          validateStatus: validateStatus,
          followRedirects: followRedirects,
          contentType: contentType,
        ),
        queryParameters: params,
      );
    } on UnauthorizedError {
      throw const AppException.unauthenticatedException();
    } on InternalServerError {
      throw const AppException.internalServerException();
    } on BadNetworkError {
      throw const AppException.badNetworkException();
    } on DioError catch (e) {
      throw AppException.serverException(
          errorMessage: e.response?.statusMessage);
    } catch (e) {
      throw const AppException.unexpectedException();
    }
  }
}
