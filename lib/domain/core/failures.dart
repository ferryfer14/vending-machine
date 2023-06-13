import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({
    required String failedValue,
  }) = _InvalidEmail<T>;
  const factory ValueFailure.invalidPhoneNumber({
    required String failedValue,
  }) = _InvalidPhoneNumber<T>;

  const factory ValueFailure.shortPassword({
    required String failedValue,
  }) = _ShortPassword<T>;

  const factory ValueFailure.shortPin({
    required String failedValue,
  }) = _ShortPin;

  const factory ValueFailure.invalidPasswordConfimation({
    required T failedValue,
  }) = _InvalidPasswordConfirmation;

  const factory ValueFailure.empty({
    required T failedValue,
  }) = _Empty<T>;

  const factory ValueFailure.multiLine({
    required T failedValue,
  }) = _MultiLine<T>;

  const factory ValueFailure.invalidSurname({
    required T failedValue,
  }) = _InvalidSurname<T>;

  const factory ValueFailure.exceedingLength({
    required T failedValue,
    required int max,
  }) = ExceedingLength<T>;
}
