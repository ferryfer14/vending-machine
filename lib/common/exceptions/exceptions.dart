import 'package:freezed_annotation/freezed_annotation.dart';

part 'exceptions.freezed.dart';

@freezed
class AppException with _$AppException {
  @Implements<Exception>()
  const factory AppException.serverException({String? errorMessage}) =
      _ServerException;

  @Implements<Exception>()
  const factory AppException.unexpectedException({String? errorMessage}) =
      _UnexpectedException;

  @Implements<Exception>()
  const factory AppException.locationIsNotAllowed({String? errorMessage}) =
      _LocationIsNotAllowed;

  @Implements<Exception>()
  const factory AppException.badNetworkException() = _BadNetworkException;

  @Implements<Exception>()
  const factory AppException.internalServerException() =
      _InternalServerException;

  @Implements<Exception>()
  const factory AppException.unauthenticatedException({String? errorMessage}) =
      _UnauthenticatedException;

  @Implements<Exception>()
  const factory AppException.empty({String? errorMessage}) = _EmptyException;

  @Implements<Exception>()
  const factory AppException.invalid({String? errorMessage}) =
      _InvalidException;

  @Implements<Exception>()
  const factory AppException.countingException({String? errorMessage}) =
      _CountingException;
}
