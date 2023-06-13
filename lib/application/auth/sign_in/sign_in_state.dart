part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    required bool isSubmitting,
    required bool isLoading,
    required bool showErrorMessages,
    required Option<Either<AuthFailure, Unit>> loginFailureOrSuccess,
  }) = _SignInState;

  factory SignInState.initial() => SignInState(
        isSubmitting: false,
        showErrorMessages: false,
        isLoading: false,
        loginFailureOrSuccess: none(),
      );
}
