import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_todo/domain/todos/i_todo_repository.dart';
import 'package:my_todo/domain/todos/todo.dart';
import 'package:my_todo/domain/todos/todo_failure.dart';

part 'todo_actor_event.dart';
part 'todo_actor_state.dart';
part 'todo_actor_bloc.freezed.dart';

@injectable
class TodoActorBloc extends Bloc<TodoActorEvent, TodoActorState> {
  final ITodoRepository _todoRepository;

  TodoActorBloc(this._todoRepository) : super(const TodoActorState.initial());

  @override
  Stream<TodoActorState> mapEventToState(
    TodoActorEvent event,
  ) async* {
    yield* event.map(
      deleted: (e) async* {
        yield const TodoActorState.actionInProgress();
        final possibleFailure = await _todoRepository.delete(event.todo);
        yield possibleFailure.fold(
          (f) => TodoActorState.deleteFailure(f),
          (_) => const TodoActorState.deleteSuccess(),
        );
      },
      completed: (e) async* {
        yield const TodoActorState.actionInProgress();
        final possibleFailure = await _todoRepository.complete(event.todo);
        yield possibleFailure.fold(
          (f) => TodoActorState.completeTodoFailure(f),
          (_) => const TodoActorState.completeTodoSuccess(),
        );
      },
    );
  }
}
