import 'package:dartz/dartz.dart';
import 'package:firebaseddd/domain/auth/value_objects.dart';
import 'package:firebaseddd/domain/core/value_failures.dart';

abstract class ValueObject<T> {
  ValueObject();

  Either<ValueFailure<T>, T> get value;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValueObject && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}
