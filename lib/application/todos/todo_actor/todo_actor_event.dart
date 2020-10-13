part of 'todo_actor_bloc.dart';

@freezed
abstract class TodoActorEvent with _$TodoActorEvent {
  const factory TodoActorEvent.deleted(Todo todo) = _Deleted;
  const factory TodoActorEvent.completed(Todo todo) = _Completed;
}
