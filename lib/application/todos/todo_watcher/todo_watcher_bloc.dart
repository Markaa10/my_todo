import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_todo/domain/todos/i_todo_repository.dart';
import 'package:my_todo/domain/todos/todo.dart';
import 'package:my_todo/domain/todos/todo_failure.dart';

part 'todo_watcher_event.dart';
part 'todo_watcher_state.dart';
part 'todo_watcher_bloc.freezed.dart';

@injectable
class TodoWatcherBloc extends Bloc<TodoWatcherEvent, TodoWatcherState> {
  final ITodoRepository _todoRepository;
  TodoWatcherBloc(this._todoRepository)
      : super(const TodoWatcherState.initial());

  StreamSubscription<Either<TodoFailure, List<Todo>>> _todoStreamSubscription;

  @override
  Stream<TodoWatcherState> mapEventToState(
    TodoWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const TodoWatcherState.loadInProgress();
        await _todoStreamSubscription?.cancel();
        _todoStreamSubscription = _todoRepository.watchAll().listen(
              (failureOrTodos) =>
                  add(TodoWatcherEvent.todosReceived(failureOrTodos)),
            );
      },
      todosReceived: (e) async* {
        yield e.failureOrTodos.fold(
          (f) => TodoWatcherState.loadFailure(f),
          (todos) => TodoWatcherState.loadSuccess(todos),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _todoStreamSubscription?.cancel();
    return super.close();
  }
}
