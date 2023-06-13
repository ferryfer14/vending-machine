import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:standart_project/common/exceptions/exceptions.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.usernameAlreadyInUse() = UsernameAlreadyInUse;
  const factory AuthFailure.invalidUsernameAndPassword() =
      InvalidUsernameAndPassword;
  const factory AuthFailure.unexpectedError() = _UnexpectedError;
  const factory AuthFailure.appException(
    AppException exception,
  ) = _AppException;
}
