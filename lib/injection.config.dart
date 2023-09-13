// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity/connectivity.dart' as _i4;
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:new_version/new_version.dart' as _i10;
import 'package:shared_preferences/shared_preferences.dart' as _i11;

import 'application/auth/auth_bloc.dart' as _i21;
import 'application/auth/sign_in/sign_in_bloc.dart' as _i20;
import 'application/caraousel/caraousel_bloc.dart' as _i15;
import 'application/localization/localization_loader_bloc.dart' as _i18;
import 'application/product/product_bloc.dart' as _i24;
import 'application/version/version_bloc.dart' as _i12;
import 'common/api/api_client.dart' as _i13;
import 'common/di/connectivity_di.dart' as _i25;
import 'common/di/dio_di.dart' as _i26;
import 'common/di/new_version_di.dart' as _i27;
import 'common/di/shared_preferences_di.dart' as _i28;
import 'common/network/network_client.dart' as _i9;
import 'domain/auth/i_auth_repository.dart' as _i16;
import 'domain/caraousel/i_caraousel_repository.dart' as _i7;
import 'domain/product/i_product_repository.dart' as _i22;
import 'env.dart' as _i6;
import 'infrastructure/auth/auth_repository.dart' as _i17;
import 'infrastructure/auth/data_sources/remote_data_provider.dart' as _i14;
import 'infrastructure/caraousel/caraousel_repository.dart' as _i8;
import 'infrastructure/caraousel/data_sources/local_data_provider.dart' as _i3;
import 'infrastructure/product/data_sources/remote_data_provider.dart' as _i19;
import 'infrastructure/product/product_repository.dart' as _i23;

const String _dev = 'dev';
const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final connectivityDi = _$ConnectivityDi();
  final dioDi = _$DioDi();
  final newVersionDi = _$NewVersionDi();
  final sharedPreferencesDi = _$SharedPreferencesDi();
  gh.factory<_i3.CaraouselLocalDataProvider>(
      () => _i3.CaraouselLocalDataProvider());
  gh.lazySingleton<_i4.Connectivity>(() => connectivityDi.connectivity);
  gh.lazySingleton<_i5.Dio>(() => dioDi.dio);
  gh.lazySingleton<_i6.Env>(
    () => _i6.DevEnv(),
    registerFor: {_dev},
  );
  gh.lazySingleton<_i6.Env>(
    () => _i6.ProdEnv(),
    registerFor: {_prod},
  );
  gh.factory<_i7.ICaraouselRepository>(
      () => _i8.CaraouselRepository(get<_i3.CaraouselLocalDataProvider>()));
  gh.lazySingleton<_i9.NetworkClient>(
      () => _i9.NetworkClient(get<_i4.Connectivity>()));
  gh.lazySingleton<_i10.NewVersion>(() => newVersionDi.newVersion);
  await gh.factoryAsync<_i11.SharedPreferences>(
    () => sharedPreferencesDi.prefs,
    preResolve: true,
  );
  gh.factory<_i12.VersionBloc>(() => _i12.VersionBloc(
        get<_i11.SharedPreferences>(),
        get<_i10.NewVersion>(),
      ));
  gh.lazySingleton<_i13.ApiClient>(() => _i13.ApiClient(
        get<_i5.Dio>(),
        get<_i6.Env>(),
      ));
  gh.factory<_i14.AuthRemoteDataProvider>(() => _i14.AuthRemoteDataProvider(
        get<_i13.ApiClient>(),
        get<_i11.SharedPreferences>(),
        get<_i6.Env>(),
      ));
  gh.factory<_i15.CaraouselBloc>(
      () => _i15.CaraouselBloc(get<_i7.ICaraouselRepository>()));
  gh.factory<_i16.IAuthRepository>(() => _i17.AuthRepository(
        get<_i14.AuthRemoteDataProvider>(),
        get<_i11.SharedPreferences>(),
      ));
  gh.factory<_i18.LocalizationLoaderBloc>(
      () => _i18.LocalizationLoaderBloc(get<_i11.SharedPreferences>()));
  gh.factory<_i19.ProductRemoteDataProvider>(
      () => _i19.ProductRemoteDataProvider(
            get<_i13.ApiClient>(),
            get<_i11.SharedPreferences>(),
            get<_i6.Env>(),
          ));
  gh.factory<_i20.SignInBloc>(
      () => _i20.SignInBloc(get<_i16.IAuthRepository>()));
  gh.factory<_i21.AuthBloc>(() => _i21.AuthBloc(get<_i16.IAuthRepository>()));
  gh.factory<_i22.IProductRepository>(
      () => _i23.ProductRepository(get<_i19.ProductRemoteDataProvider>()));
  gh.factory<_i24.ProductBloc>(
      () => _i24.ProductBloc(get<_i22.IProductRepository>()));
  return get;
}

class _$ConnectivityDi extends _i25.ConnectivityDi {}

class _$DioDi extends _i26.DioDi {}

class _$NewVersionDi extends _i27.NewVersionDi {}

class _$SharedPreferencesDi extends _i28.SharedPreferencesDi {}
