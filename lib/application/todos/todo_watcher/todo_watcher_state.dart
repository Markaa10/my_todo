part of 'todo_watcher_bloc.dart';

@freezed
abstract class TodoWatcherState with _$TodoWatcherState {
  const factory TodoWatcherState.initial() = _Initial;
  const factory TodoWatcherState.loadInProgress() = _LoadInProgress;
  const factory TodoWatcherState.loadSuccess(List<Todo> todos) = _LoadSuccess;
  const factory TodoWatcherState.loadFailure(TodoFailure todoFailure) =
      _LoadFailure;
}
