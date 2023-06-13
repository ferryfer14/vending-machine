part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {

  const factory ProfileState.inProgress() = _inProgess;

  const factory ProfileState.failure(
    AppException failure,
  ) = _Failure;

  const factory ProfileState.success(ProfileModel profileModel) =
      _Success;
}
