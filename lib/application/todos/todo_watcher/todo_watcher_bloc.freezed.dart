// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'todo_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TodoWatcherEventTearOff {
  const _$TodoWatcherEventTearOff();

// ignore: unused_element
  _WatchAllStarted watchAllStarted() {
    return const _WatchAllStarted();
  }

// ignore: unused_element
  _TodosReceived todosReceived(Either<TodoFailure, List<Todo>> failureOrTodos) {
    return _TodosReceived(
      failureOrTodos,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TodoWatcherEvent = _$TodoWatcherEventTearOff();

/// @nodoc
mixin _$TodoWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required
        Result todosReceived(Either<TodoFailure, List<Todo>> failureOrTodos),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result todosReceived(Either<TodoFailure, List<Todo>> failureOrTodos),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result todosReceived(_TodosReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result todosReceived(_TodosReceived value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $TodoWatcherEventCopyWith<$Res> {
  factory $TodoWatcherEventCopyWith(
          TodoWatcherEvent value, $Res Function(TodoWatcherEvent) then) =
      _$TodoWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodoWatcherEventCopyWithImpl<$Res>
    implements $TodoWatcherEventCopyWith<$Res> {
  _$TodoWatcherEventCopyWithImpl(this._value, this._then);

  final TodoWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(TodoWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$TodoWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllStartedCopyWith<$Res> {
  __$WatchAllStartedCopyWithImpl(
      _WatchAllStarted _value, $Res Function(_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllStarted));

  @override
  _WatchAllStarted get _value => super._value as _WatchAllStarted;
}

/// @nodoc
class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted();

  @override
  String toString() {
    return 'TodoWatcherEvent.watchAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required
        Result todosReceived(Either<TodoFailure, List<Todo>> failureOrTodos),
  }) {
    assert(watchAllStarted != null);
    assert(todosReceived != null);
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result todosReceived(Either<TodoFailure, List<Todo>> failureOrTodos),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result todosReceived(_TodosReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(todosReceived != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result todosReceived(_TodosReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements TodoWatcherEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

/// @nodoc
abstract class _$TodosReceivedCopyWith<$Res> {
  factory _$TodosReceivedCopyWith(
          _TodosReceived value, $Res Function(_TodosReceived) then) =
      __$TodosReceivedCopyWithImpl<$Res>;
  $Res call({Either<TodoFailure, List<Todo>> failureOrTodos});
}

/// @nodoc
class __$TodosReceivedCopyWithImpl<$Res>
    extends _$TodoWatcherEventCopyWithImpl<$Res>
    implements _$TodosReceivedCopyWith<$Res> {
  __$TodosReceivedCopyWithImpl(
      _TodosReceived _value, $Res Function(_TodosReceived) _then)
      : super(_value, (v) => _then(v as _TodosReceived));

  @override
  _TodosReceived get _value => super._value as _TodosReceived;

  @override
  $Res call({
    Object failureOrTodos = freezed,
  }) {
    return _then(_TodosReceived(
      failureOrTodos == freezed
          ? _value.failureOrTodos
          : failureOrTodos as Either<TodoFailure, List<Todo>>,
    ));
  }
}

/// @nodoc
class _$_TodosReceived implements _TodosReceived {
  const _$_TodosReceived(this.failureOrTodos) : assert(failureOrTodos != null);

  @override
  final Either<TodoFailure, List<Todo>> failureOrTodos;

  @override
  String toString() {
    return 'TodoWatcherEvent.todosReceived(failureOrTodos: $failureOrTodos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodosReceived &&
            (identical(other.failureOrTodos, failureOrTodos) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrTodos, failureOrTodos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrTodos);

  @override
  _$TodosReceivedCopyWith<_TodosReceived> get copyWith =>
      __$TodosReceivedCopyWithImpl<_TodosReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required
        Result todosReceived(Either<TodoFailure, List<Todo>> failureOrTodos),
  }) {
    assert(watchAllStarted != null);
    assert(todosReceived != null);
    return todosReceived(failureOrTodos);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result todosReceived(Either<TodoFailure, List<Todo>> failureOrTodos),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (todosReceived != null) {
      return todosReceived(failureOrTodos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result todosReceived(_TodosReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(todosReceived != null);
    return todosReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result todosReceived(_TodosReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (todosReceived != null) {
      return todosReceived(this);
    }
    return orElse();
  }
}

abstract class _TodosReceived implements TodoWatcherEvent {
  const factory _TodosReceived(Either<TodoFailure, List<Todo>> failureOrTodos) =
      _$_TodosReceived;

  Either<TodoFailure, List<Todo>> get failureOrTodos;
  _$TodosReceivedCopyWith<_TodosReceived> get copyWith;
}

/// @nodoc
class _$TodoWatcherStateTearOff {
  const _$TodoWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(List<Todo> todos) {
    return _LoadSuccess(
      todos,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(TodoFailure todoFailure) {
    return _LoadFailure(
      todoFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TodoWatcherState = _$TodoWatcherStateTearOff();

/// @nodoc
mixin _$TodoWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<Todo> todos),
    @required Result loadFailure(TodoFailure todoFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<Todo> todos),
    Result loadFailure(TodoFailure todoFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $TodoWatcherStateCopyWith<$Res> {
  factory $TodoWatcherStateCopyWith(
          TodoWatcherState value, $Res Function(TodoWatcherState) then) =
      _$TodoWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodoWatcherStateCopyWithImpl<$Res>
    implements $TodoWatcherStateCopyWith<$Res> {
  _$TodoWatcherStateCopyWithImpl(this._value, this._then);

  final TodoWatcherState _value;
  // ignore: unused_field
  final $Res Function(TodoWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$TodoWatcherStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'TodoWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<Todo> todos),
    @required Result loadFailure(TodoFailure todoFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<Todo> todos),
    Result loadFailure(TodoFailure todoFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TodoWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$TodoWatcherStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc
class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'TodoWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<Todo> todos),
    @required Result loadFailure(TodoFailure todoFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<Todo> todos),
    Result loadFailure(TodoFailure todoFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements TodoWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Todo> todos});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$TodoWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object todos = freezed,
  }) {
    return _then(_LoadSuccess(
      todos == freezed ? _value.todos : todos as List<Todo>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.todos) : assert(todos != null);

  @override
  final List<Todo> todos;

  @override
  String toString() {
    return 'TodoWatcherState.loadSuccess(todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.todos, todos) ||
                const DeepCollectionEquality().equals(other.todos, todos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(todos);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<Todo> todos),
    @required Result loadFailure(TodoFailure todoFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(todos);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<Todo> todos),
    Result loadFailure(TodoFailure todoFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements TodoWatcherState {
  const factory _LoadSuccess(List<Todo> todos) = _$_LoadSuccess;

  List<Todo> get todos;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({TodoFailure todoFailure});

  $TodoFailureCopyWith<$Res> get todoFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$TodoWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object todoFailure = freezed,
  }) {
    return _then(_LoadFailure(
      todoFailure == freezed ? _value.todoFailure : todoFailure as TodoFailure,
    ));
  }

  @override
  $TodoFailureCopyWith<$Res> get todoFailure {
    if (_value.todoFailure == null) {
      return null;
    }
    return $TodoFailureCopyWith<$Res>(_value.todoFailure, (value) {
      return _then(_value.copyWith(todoFailure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.todoFailure) : assert(todoFailure != null);

  @override
  final TodoFailure todoFailure;

  @override
  String toString() {
    return 'TodoWatcherState.loadFailure(todoFailure: $todoFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.todoFailure, todoFailure) ||
                const DeepCollectionEquality()
                    .equals(other.todoFailure, todoFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(todoFailure);

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<Todo> todos),
    @required Result loadFailure(TodoFailure todoFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(todoFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<Todo> todos),
    Result loadFailure(TodoFailure todoFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(todoFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements TodoWatcherState {
  const factory _LoadFailure(TodoFailure todoFailure) = _$_LoadFailure;

  TodoFailure get todoFailure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
