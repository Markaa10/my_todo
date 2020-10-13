import 'package:dartz/dartz.dart';
import 'package:my_todo/domain/todos/todo.dart';
import 'package:my_todo/domain/todos/todo_failure.dart';

abstract class ITodoRepository {
  Stream<Either<TodoFailure, List<Todo>>> watchAll();
  Future<Either<TodoFailure, Unit>> create(Todo todo);
  Future<Either<TodoFailure, Unit>> update(Todo todo);
  Future<Either<TodoFailure, Unit>> complete(Todo todo);
  Future<Either<TodoFailure, Unit>> delete(Todo todo);
}
