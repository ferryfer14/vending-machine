part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authCheckRequested() = _AuthCheckRequested;
  const factory AuthEvent.refreshToken() = _RefreshToken;
  const factory AuthEvent.updateTokenFirebase(String token) = _UpdateTokenFirebase;
  const factory AuthEvent.signedOut() = _SignedOut;
}
