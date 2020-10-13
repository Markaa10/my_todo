part of 'todo_actor_bloc.dart';

@freezed
abstract class TodoActorState with _$TodoActorState {
  const factory TodoActorState.initial() = _Initial;
  const factory TodoActorState.actionInProgress() = _ActionInProgress;
  const factory TodoActorState.completeTodoFailure(TodoFailure todoFailure) =
      _CompleteTodoFailure;
  const factory TodoActorState.completeTodoSuccess() = _CompleteTodoSuccess;
  const factory TodoActorState.deleteFailure(TodoFailure todoFailure) =
      _DeleteFailure;
  const factory TodoActorState.deleteSuccess() = _DeleteSuccess;
}
