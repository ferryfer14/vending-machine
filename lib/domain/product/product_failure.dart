import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/exceptions/exceptions.dart';

part 'product_failure.freezed.dart';

@freezed
class ProductFailure with _$ProductFailure {
  const factory ProductFailure.serverError() = _ServerError;

  const factory ProductFailure.unexpectedError() = _UnexpectedError;

  const factory ProductFailure.emptyList() = _EmptyList;

  const factory ProductFailure.notFound() = _NotFound;

  const factory ProductFailure.noConnection() = _NoConnection;

  const factory ProductFailure.appException(
    AppException exception,
  ) = _AppException;
}
