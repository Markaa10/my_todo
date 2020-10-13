import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_todo/domain/core/failures.dart';
import 'package:my_todo/domain/core/value_objects.dart';
import 'package:my_todo/domain/todos/value_objects.dart';

part 'todo.freezed.dart';

@freezed
abstract class Todo with _$Todo {
  const Todo._();

  const factory Todo({
    @required UniqueId id,
    @required TodoName name,
    @required bool done,
  }) = _Todo;

  factory Todo.empty() => Todo(
        id: UniqueId(),
        name: TodoName(''),
        done: false,
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return name.value.fold((f) => some(f), (_) => none());
  }
}
