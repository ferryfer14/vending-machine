import 'package:dartz/dartz.dart';
import 'package:standart_project/domain/core/failures.dart';
import 'package:flutter/cupertino.dart';
import 'value_validators.dart';
import 'package:uuid/uuid.dart';

import 'errors.dart';

@immutable
abstract class ValueObjects<T> {
  const ValueObjects();

  Either<ValueFailure<T>, T> get value;

  bool isValid() => value.isRight();

  @override
  String toString() => 'Value($value)';

  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  T getOrElse(T dflt) {
    return value.getOrElse(() => dflt);
  }

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  @override
  // ignore: avoid_renaming_method_parameters
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ValueObjects<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}

class UniqueId extends ValueObjects<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UniqueId() {
    return UniqueId._(right(const Uuid().v1()));
  }

  factory UniqueId.fromUniqueString(String uniqueId) {
    return UniqueId._(right(uniqueId));
  }

  const UniqueId._(this.value);
}

class StringSingleLine extends ValueObjects<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory StringSingleLine(String input) {
    return StringSingleLine._(
      validateStringSingleLine(input).flatMap(validateStringNotEmpty),
    );
  }

  const StringSingleLine._(this.value);
}

class StringSingleLineEmpty extends ValueObjects<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory StringSingleLineEmpty(String input) {
    return StringSingleLineEmpty._(
      validateStringAllowEmpty(input).flatMap(validateStringAllowEmpty),
    );
  }

  const StringSingleLineEmpty._(this.value);
}

class StringMultiLine extends ValueObjects<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 1000;

  factory StringMultiLine(String input) {
    return StringMultiLine._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const StringMultiLine._(this.value);
}
