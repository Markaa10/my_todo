import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/todos/i_todo_repository.dart';
import '../../domain/todos/todo.dart';
import '../../domain/todos/todo_failure.dart';
import '../core/firestore_helpers.dart';
import 'todo_dtos.dart';

@LazySingleton(as: ITodoRepository)
class TodoRepository implements ITodoRepository {
  final FirebaseFirestore _firestore;

  TodoRepository(this._firestore);

  @override
  Stream<Either<TodoFailure, List<Todo>>> watchAll() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.todoCollection
        .orderBy('serverTimestamp', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<TodoFailure, List<Todo>>(
            snapshot.docs
                .map((doc) => TodoDto.fromFirestore(doc).toDomain())
                .toList(),
          ),
        )
        .onErrorReturnWith((e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const TodoFailure.insufficientPermission());
      } else {
        return left(const TodoFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<TodoFailure, Unit>> create(Todo todo) async {
    try {
      final userDoc = await _firestore.userDocument();
      final todoDto = TodoDto.fromDomain(todo);

      await userDoc.todoCollection.doc(todoDto.id).set(todoDto.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const TodoFailure.insufficientPermission());
      } else {
        return left(const TodoFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<TodoFailure, Unit>> complete(Todo todo) async {
    try {
      final userDoc = await _firestore.userDocument();
      final todoDto = TodoDto.fromDomain(todo);

      await userDoc.todoCollection
          .doc(todoDto.id)
          .update(todoDto.copyWith(done: !todoDto.done).toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const TodoFailure.insufficientPermission());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const TodoFailure.unableToUpdate());
      } else {
        return left(const TodoFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<TodoFailure, Unit>> update(Todo todo) async {
    try {
      final userDoc = await _firestore.userDocument();
      final todoDto = TodoDto.fromDomain(todo);

      await userDoc.todoCollection.doc(todoDto.id).update(todoDto.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const TodoFailure.insufficientPermission());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const TodoFailure.unableToUpdate());
      } else {
        return left(const TodoFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<TodoFailure, Unit>> delete(Todo todo) async {
    try {
      final userDoc = await _firestore.userDocument();
      final todoId = todo.id.getOrCrash();

      await userDoc.todoCollection.doc(todoId).delete();
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const TodoFailure.insufficientPermission());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const TodoFailure.unableToUpdate());
      } else {
        return left(const TodoFailure.unexpected());
      }
    }
  }
}
