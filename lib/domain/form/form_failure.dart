import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/exceptions/exceptions.dart';

part 'form_failure.freezed.dart';

@freezed
class FormFailure with _$FormFailure {
  const factory FormFailure.phoneAlreadyInUse() = PhoneAlreadyInUse;
  const factory FormFailure.invalidPhoneNumber() = InvalidPhoneNumber;
  const factory FormFailure.unexpectedError() = _UnexpectedError;

  const factory FormFailure.appException(
    AppException exception,
  ) = _AppException;
}
