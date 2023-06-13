import 'package:connectivity/connectivity.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ConnectivityDi {
  @lazySingleton
  Connectivity get connectivity => Connectivity();
}
