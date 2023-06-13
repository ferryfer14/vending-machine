part of 'form_user_bloc.dart';

@freezed
class FormUserState with _$FormUserState {
  const factory FormUserState({
    required String fullname,
    required String email,
    required String phone,
    required bool isLoading,
    required Option<Either<FormFailure, Unit>> failureOrSuccess,
  }) = _FormUserState;

  factory FormUserState.initial() => FormUserState(
        fullname: "",
        email: "",
        phone: "",
        failureOrSuccess: none(),
        isLoading: false,
      );
}
