import 'package:dio/dio.dart';
import '../errors/bad_network_error.dart';
import '../../network/network_client.dart';

import '../../../injection.dart';

class BadNetwotkErrorInterceptor extends Interceptor {
  final _networkClient = getIt<NetworkClient>();

  @override
  Future onError(DioError err, ErrorInterceptorHandler handler) async {
    final isConnected = await _networkClient.isConnected;
    if (err.response == null && !isConnected) {
      handler.next(BadNetworkError(err));
    }

    return handler.next(err);
  }
}
