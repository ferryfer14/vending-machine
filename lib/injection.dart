import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:standart_project/routes/app_router.dart';
import 'injection.config.dart';

final GetIt getIt = GetIt.instance;
@injectableInit
Future<GetIt> configureInjection(String env) async {
  getIt.registerSingleton<AppRouter>(AppRouter());
  return $initGetIt(getIt, environment: env);
}
