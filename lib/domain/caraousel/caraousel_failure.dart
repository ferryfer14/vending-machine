import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/exceptions/exceptions.dart';

part 'caraousel_failure.freezed.dart';

@freezed
class CaraouselFailure with _$CaraouselFailure {
  const factory CaraouselFailure.serverError() = _ServerError;

  const factory CaraouselFailure.unexpectedError() = _UnexpectedError;

  const factory CaraouselFailure.emptyList() = _EmptyList;

  const factory CaraouselFailure.notFound() = _NotFound;

  const factory CaraouselFailure.noConnection() = _NoConnection;

  const factory CaraouselFailure.appException(
    AppException exception,
  ) = _AppException;
}
