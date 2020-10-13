part of 'todo_form_bloc.dart';

@freezed
abstract class TodoFormEvent with _$TodoFormEvent {
  const factory TodoFormEvent.initialized(Option<Todo> initialTodoOption) =
      _Initialized;
  const factory TodoFormEvent.nameChanged(String nameStr) = _NameChanged;
  const factory TodoFormEvent.saved() = _Saved;
}
