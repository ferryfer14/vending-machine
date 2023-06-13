import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/exceptions/exceptions.dart';

part 'transaction_failure.freezed.dart';

@freezed
class TransactionFailure with _$TransactionFailure {
  const factory TransactionFailure.unexpectedError() = _UnexpectedError;

  const factory TransactionFailure.appException(
    AppException exception,
  ) = _AppException;
}
