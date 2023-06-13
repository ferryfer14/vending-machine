import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:standart_project/app_constant.dart';
import 'package:standart_project/common/exceptions/exceptions.dart';
import 'package:standart_project/domain/auth/auth_failure.dart';
import 'package:standart_project/domain/auth/auth_model.dart';
import 'package:standart_project/domain/auth/i_auth_repository.dart';
import 'package:standart_project/domain/auth/profile_model.dart';
import 'package:standart_project/infrastructure/auth/data_sources/remote_data_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Injectable(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  final AuthRemoteDataProvider authRemoteDataProvider;
  final SharedPreferences prefs;

  AuthRepository(this.authRemoteDataProvider, this.prefs);

  @override
  Future<Option<Unit>> updateTokenFirebase(String token) async {
    final token = prefs.getString(vAccessToken);
    if (token != null) {
      try {
        await authRemoteDataProvider.updateTokenFirebase(token);
        return optionOf(unit);
      } catch (e) {
        return none();
      }
    }
    return none();
  }

  @override
  Future<Option<Unit>> getRefreshToken() async {
    final token = prefs.getString(vAccessToken);
    if (token != null) {
      try {
        await authRemoteDataProvider.refreshToken();
        return optionOf(unit);
      } catch (e) {
        return none();
      }
    }
    return none();
  }

  @override
  Future<Option<Unit>> getSignedInUser() async {
    final token = prefs.getString(vAccessToken);
    if (token != null) {
      try {
        return optionOf(unit);
      } catch (e) {
        return none();
      }
    }
    return none();
  }

  @override
  Future<Either<AuthFailure, Unit>> login() async {
    try {
      final result = await authRemoteDataProvider.login();

      return result.fold(
        (failure) {
          return left(failure);
        },
        (unit) => right(unit),
      );
    } on AppException catch (e) {
      return left(AuthFailure.appException(e));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> refreshToken() async {
    try {
      final result = await authRemoteDataProvider.refreshToken();

      return result.fold(
        (failure) {
          return left(failure);
        },
        (unit) => right(unit),
      );
    } on AppException catch (e) {
      return left(AuthFailure.appException(e));
    }
  }

  @override
  Future<void> logout() async {
    await prefs.remove(vAccessToken);
    await prefs.remove(vRefreshToken);
    await prefs.remove(vTokenModel);
  }

  @override
  Future<Either<AppException, ProfileModel>> loadProfile() async {
    try {
      final failureOrSuccess = await authRemoteDataProvider.loadProfile();

      return failureOrSuccess.fold(
        (l) => left(l),
        (profileModel) {
          return right(profileModel.toDomain());
        },
      );
    } catch (e) {
      return left(
        const AppException.unauthenticatedException(
          errorMessage: 'unexpected error detail',
        ),
      );
    }
  }
}
