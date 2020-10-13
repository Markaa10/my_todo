import 'package:dartz/dartz.dart';
import 'package:my_todo/domain/core/failures.dart';
import 'package:my_todo/domain/core/value_objects.dart';
import 'package:my_todo/domain/core/value_validators.dart';

class TodoName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 30;

  factory TodoName(String input) {
    assert(input != null);
    return TodoName._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const TodoName._(this.value);
}
