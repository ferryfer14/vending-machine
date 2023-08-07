import 'package:injectable/injectable.dart';

abstract class Env {
  String get baseUrl;

  String get baseUrlVM;

  String get clientId;

  String get clientSecret;

  String get scope;

  String get username;

  String get password;

  String get notificationTopic;

  int get refreshTokenMillis;
// add getter here...
}

@LazySingleton(as: Env)
@dev
class DevEnv implements Env {
  @override
  String get baseUrl => const String.fromEnvironment("BASE_URL",
      defaultValue: "https://vmstg.monstercode.net/api/");

  @override
  String get baseUrlVM => "http://localhost:5758/";

  @override
  String get clientId => 'my-client-id';

  @override
  String get clientSecret => "password";

  @override
  String get notificationTopic => "notification_dev";

  @override
  String get username =>
      const String.fromEnvironment("USERNAME", defaultValue: "VM-0002");

  @override
  String get password =>
      const String.fromEnvironment("PASSWORD", defaultValue: "aJlfKHuFX3");

  @override
  int get refreshTokenMillis => 1000 * 60 * 30;

  @override
  String get scope => "openid offline";
}

@LazySingleton(as: Env)
@prod
class ProdEnv implements Env {
  @override
  String get baseUrl => const String.fromEnvironment("BASE_URL",
      defaultValue: "https://vmstg.monstercode.net/api/");

  @override
  String get baseUrlVM => "http://localhost:5758/";

  @override
  String get clientId => 'my-client-id';

  @override
  String get clientSecret => "password";

  @override
  String get notificationTopic => "notification";

  @override
  String get username =>
      const String.fromEnvironment("USERNAME", defaultValue: "VMM-002");

  @override
  String get password =>
      const String.fromEnvironment("PASSWORD", defaultValue: "qB3cxZ7DAc");

  @override
  int get refreshTokenMillis => 1000 * 60 * 60 * 24;

  @override
  String get scope => "openid offline";
}
