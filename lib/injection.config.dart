// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity/connectivity.dart' as _i4;
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:new_version/new_version.dart' as _i14;
import 'package:shared_preferences/shared_preferences.dart' as _i15;

import 'application/auth/auth_bloc.dart' as _i28;
import 'application/auth/sign_in/sign_in_bloc.dart' as _i26;
import 'application/caraousel/caraousel_bloc.dart' as _i19;
import 'application/form/form_user_bloc.dart' as _i20;
import 'application/localization/localization_loader_bloc.dart' as _i23;
import 'application/product/product_bloc.dart' as _i33;
import 'application/profile/profile_bloc.dart' as _i25;
import 'application/transaction/transaction_bloc.dart' as _i34;
import 'application/version/version_bloc.dart' as _i16;
import 'common/api/api_client.dart' as _i17;
import 'common/di/connectivity_di.dart' as _i35;
import 'common/di/dio_di.dart' as _i36;
import 'common/di/new_version_di.dart' as _i37;
import 'common/di/shared_preferences_di.dart' as _i38;
import 'common/firestore/firestore_client.dart' as _i7;
import 'common/network/network_client.dart' as _i13;
import 'domain/auth/i_auth_repository.dart' as _i21;
import 'domain/caraousel/i_caraousel_repository.dart' as _i9;
import 'domain/form/i_form_repository.dart' as _i11;
import 'domain/product/i_product_repository.dart' as _i29;
import 'domain/transaction/i_transaction_repository.dart' as _i31;
import 'env.dart' as _i6;
import 'infrastructure/auth/auth_repository.dart' as _i22;
import 'infrastructure/auth/data_sources/remote_data_provider.dart' as _i18;
import 'infrastructure/caraousel/caraousel_repository.dart' as _i10;
import 'infrastructure/caraousel/data_sources/local_data_provider.dart' as _i3;
import 'infrastructure/form/data_sources/local_data_provider.dart' as _i8;
import 'infrastructure/form/form_repository.dart' as _i12;
import 'infrastructure/product/data_sources/remote_data_provider.dart' as _i24;
import 'infrastructure/product/product_repository.dart' as _i30;
import 'infrastructure/transaction/data_sources/remote_data_provider.dart'
    as _i27;
import 'infrastructure/transaction/transaction_repository.dart' as _i32;

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
  gh.lazySingleton<_i7.FirestoreClient>(() => _i7.FirestoreClient());
  gh.factory<_i8.FormLocalDataProvider>(
      () => _i8.FormLocalDataProvider(get<_i7.FirestoreClient>()));
  gh.factory<_i9.ICaraouselRepository>(
      () => _i10.CaraouselRepository(get<_i3.CaraouselLocalDataProvider>()));
  gh.factory<_i11.IFormRepository>(
      () => _i12.FormRepository(get<_i8.FormLocalDataProvider>()));
  gh.lazySingleton<_i13.NetworkClient>(
      () => _i13.NetworkClient(get<_i4.Connectivity>()));
  gh.lazySingleton<_i14.NewVersion>(() => newVersionDi.newVersion);
  await gh.factoryAsync<_i15.SharedPreferences>(
    () => sharedPreferencesDi.prefs,
    preResolve: true,
  );
  gh.factory<_i16.VersionBloc>(() => _i16.VersionBloc(
        get<_i15.SharedPreferences>(),
        get<_i14.NewVersion>(),
      ));
  gh.lazySingleton<_i17.ApiClient>(() => _i17.ApiClient(
        get<_i5.Dio>(),
        get<_i6.Env>(),
      ));
  gh.factory<_i18.AuthRemoteDataProvider>(() => _i18.AuthRemoteDataProvider(
        get<_i17.ApiClient>(),
        get<_i15.SharedPreferences>(),
        get<_i6.Env>(),
      ));
  gh.factory<_i19.CaraouselBloc>(
      () => _i19.CaraouselBloc(get<_i9.ICaraouselRepository>()));
  gh.factory<_i20.FormUserBloc>(
      () => _i20.FormUserBloc(get<_i11.IFormRepository>()));
  gh.factory<_i21.IAuthRepository>(() => _i22.AuthRepository(
        get<_i18.AuthRemoteDataProvider>(),
        get<_i15.SharedPreferences>(),
      ));
  gh.factory<_i23.LocalizationLoaderBloc>(
      () => _i23.LocalizationLoaderBloc(get<_i15.SharedPreferences>()));
  gh.factory<_i24.ProductRemoteDataProvider>(
      () => _i24.ProductRemoteDataProvider(
            get<_i17.ApiClient>(),
            get<_i15.SharedPreferences>(),
            get<_i6.Env>(),
          ));
  gh.factory<_i25.ProfileBloc>(
      () => _i25.ProfileBloc(get<_i21.IAuthRepository>()));
  gh.factory<_i26.SignInBloc>(
      () => _i26.SignInBloc(get<_i21.IAuthRepository>()));
  gh.factory<_i27.TransactionRemoteDataProvider>(
      () => _i27.TransactionRemoteDataProvider(
            get<_i17.ApiClient>(),
            get<_i15.SharedPreferences>(),
            get<_i6.Env>(),
          ));
  gh.factory<_i28.AuthBloc>(() => _i28.AuthBloc(get<_i21.IAuthRepository>()));
  gh.factory<_i29.IProductRepository>(
      () => _i30.ProductRepository(get<_i24.ProductRemoteDataProvider>()));
  gh.factory<_i31.ITransactionRepository>(() =>
      _i32.TransactionRepository(get<_i27.TransactionRemoteDataProvider>()));
  gh.factory<_i33.ProductBloc>(
      () => _i33.ProductBloc(get<_i29.IProductRepository>()));
  gh.factory<_i34.TransactionBloc>(
      () => _i34.TransactionBloc(get<_i31.ITransactionRepository>()));
  return get;
}

class _$ConnectivityDi extends _i35.ConnectivityDi {}

class _$DioDi extends _i36.DioDi {}

class _$NewVersionDi extends _i37.NewVersionDi {}

class _$SharedPreferencesDi extends _i38.SharedPreferencesDi {}
