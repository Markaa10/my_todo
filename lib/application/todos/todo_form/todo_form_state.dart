part of 'todo_form_bloc.dart';

@freezed
abstract class TodoFormState with _$TodoFormState {
  const factory TodoFormState({
    @required Todo todo,
    @required bool showErrorMessages,
    @required bool isEditting,
    @required bool isSaving,
    @required Option<Either<TodoFailure, Unit>> saveFailureOrSuccessOption,
  }) = _TodoFormState;

  factory TodoFormState.initial() => TodoFormState(
        todo: Todo.empty(),
        showErrorMessages: false,
        isEditting: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
