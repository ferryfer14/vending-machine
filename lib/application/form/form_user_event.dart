part of 'form_user_bloc.dart';

@freezed
class FormUserEvent with _$FormUserEvent {
  const factory FormUserEvent.started() = _Started;
  const factory FormUserEvent.fullnameChanged(String fullname) = _FullnameChanged;
  const factory FormUserEvent.emailChanged(String email) = _EmailChanged;
  const factory FormUserEvent.phoneChanged(String phone) = _Phonehanged;
  const factory FormUserEvent.submited({@Default(false) bool isLoading}) =
      _Submited;
}
