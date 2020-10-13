import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_todo/domain/todos/i_todo_repository.dart';
import 'package:my_todo/domain/todos/todo.dart';
import 'package:my_todo/domain/todos/todo_failure.dart';
import 'package:my_todo/domain/todos/value_objects.dart';

part 'todo_form_event.dart';
part 'todo_form_state.dart';
part 'todo_form_bloc.freezed.dart';

@injectable
class TodoFormBloc extends Bloc<TodoFormEvent, TodoFormState> {
  final ITodoRepository _todoRepository;
  TodoFormBloc(this._todoRepository) : super(TodoFormState.initial());

  @override
  Stream<TodoFormState> mapEventToState(
    TodoFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialTodoOption.fold(
          () => state,
          (initialTodo) => state.copyWith(
            todo: initialTodo,
            isEditting: true,
          ),
        );
      },
      nameChanged: (e) async* {
        yield state.copyWith(
          todo: state.todo.copyWith(name: TodoName(e.nameStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      saved: (e) async* {
        Either<TodoFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        if (state.todo.failureOption.isNone()) {
          failureOrSuccess = state.isEditting
              ? await _todoRepository.update(state.todo)
              : await _todoRepository.create(state.todo);
        }

        yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
