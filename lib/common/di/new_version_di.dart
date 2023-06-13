import 'package:connectivity/connectivity.dart';
import 'package:injectable/injectable.dart';
import 'package:new_version/new_version.dart';

@module
abstract class NewVersionDi {
  @lazySingleton
  NewVersion get newVersion => NewVersion(
        iOSId: 'net.monstercode.kilats',
        androidId: 'com.monstercode.kilats',
      );
}
