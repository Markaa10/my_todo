// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'todo_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TodoActorEventTearOff {
  const _$TodoActorEventTearOff();

// ignore: unused_element
  _Deleted deleted(Todo todo) {
    return _Deleted(
      todo,
    );
  }

// ignore: unused_element
  _Completed completed(Todo todo) {
    return _Completed(
      todo,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TodoActorEvent = _$TodoActorEventTearOff();

/// @nodoc
mixin _$TodoActorEvent {
  Todo get todo;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleted(Todo todo),
    @required Result completed(Todo todo),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleted(Todo todo),
    Result completed(Todo todo),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleted(_Deleted value),
    @required Result completed(_Completed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleted(_Deleted value),
    Result completed(_Completed value),
    @required Result orElse(),
  });

  $TodoActorEventCopyWith<TodoActorEvent> get copyWith;
}

/// @nodoc
abstract class $TodoActorEventCopyWith<$Res> {
  factory $TodoActorEventCopyWith(
          TodoActorEvent value, $Res Function(TodoActorEvent) then) =
      _$TodoActorEventCopyWithImpl<$Res>;
  $Res call({Todo todo});

  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class _$TodoActorEventCopyWithImpl<$Res>
    implements $TodoActorEventCopyWith<$Res> {
  _$TodoActorEventCopyWithImpl(this._value, this._then);

  final TodoActorEvent _value;
  // ignore: unused_field
  final $Res Function(TodoActorEvent) _then;

  @override
  $Res call({
    Object todo = freezed,
  }) {
    return _then(_value.copyWith(
      todo: todo == freezed ? _value.todo : todo as Todo,
    ));
  }

  @override
  $TodoCopyWith<$Res> get todo {
    if (_value.todo == null) {
      return null;
    }
    return $TodoCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc
abstract class _$DeletedCopyWith<$Res>
    implements $TodoActorEventCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) =
      __$DeletedCopyWithImpl<$Res>;
  @override
  $Res call({Todo todo});

  @override
  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class __$DeletedCopyWithImpl<$Res> extends _$TodoActorEventCopyWithImpl<$Res>
    implements _$DeletedCopyWith<$Res> {
  __$DeletedCopyWithImpl(_Deleted _value, $Res Function(_Deleted) _then)
      : super(_value, (v) => _then(v as _Deleted));

  @override
  _Deleted get _value => super._value as _Deleted;

  @override
  $Res call({
    Object todo = freezed,
  }) {
    return _then(_Deleted(
      todo == freezed ? _value.todo : todo as Todo,
    ));
  }
}

/// @nodoc
class _$_Deleted implements _Deleted {
  const _$_Deleted(this.todo) : assert(todo != null);

  @override
  final Todo todo;

  @override
  String toString() {
    return 'TodoActorEvent.deleted(todo: $todo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Deleted &&
            (identical(other.todo, todo) ||
                const DeepCollectionEquality().equals(other.todo, todo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(todo);

  @override
  _$DeletedCopyWith<_Deleted> get copyWith =>
      __$DeletedCopyWithImpl<_Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleted(Todo todo),
    @required Result completed(Todo todo),
  }) {
    assert(deleted != null);
    assert(completed != null);
    return deleted(todo);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleted(Todo todo),
    Result completed(Todo todo),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleted(_Deleted value),
    @required Result completed(_Completed value),
  }) {
    assert(deleted != null);
    assert(completed != null);
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleted(_Deleted value),
    Result completed(_Completed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements TodoActorEvent {
  const factory _Deleted(Todo todo) = _$_Deleted;

  @override
  Todo get todo;
  @override
  _$DeletedCopyWith<_Deleted> get copyWith;
}

/// @nodoc
abstract class _$CompletedCopyWith<$Res>
    implements $TodoActorEventCopyWith<$Res> {
  factory _$CompletedCopyWith(
          _Completed value, $Res Function(_Completed) then) =
      __$CompletedCopyWithImpl<$Res>;
  @override
  $Res call({Todo todo});

  @override
  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class __$CompletedCopyWithImpl<$Res> extends _$TodoActorEventCopyWithImpl<$Res>
    implements _$CompletedCopyWith<$Res> {
  __$CompletedCopyWithImpl(_Completed _value, $Res Function(_Completed) _then)
      : super(_value, (v) => _then(v as _Completed));

  @override
  _Completed get _value => super._value as _Completed;

  @override
  $Res call({
    Object todo = freezed,
  }) {
    return _then(_Completed(
      todo == freezed ? _value.todo : todo as Todo,
    ));
  }
}

/// @nodoc
class _$_Completed implements _Completed {
  const _$_Completed(this.todo) : assert(todo != null);

  @override
  final Todo todo;

  @override
  String toString() {
    return 'TodoActorEvent.completed(todo: $todo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Completed &&
            (identical(other.todo, todo) ||
                const DeepCollectionEquality().equals(other.todo, todo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(todo);

  @override
  _$CompletedCopyWith<_Completed> get copyWith =>
      __$CompletedCopyWithImpl<_Completed>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleted(Todo todo),
    @required Result completed(Todo todo),
  }) {
    assert(deleted != null);
    assert(completed != null);
    return completed(todo);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleted(Todo todo),
    Result completed(Todo todo),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (completed != null) {
      return completed(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleted(_Deleted value),
    @required Result completed(_Completed value),
  }) {
    assert(deleted != null);
    assert(completed != null);
    return completed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleted(_Deleted value),
    Result completed(_Completed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class _Completed implements TodoActorEvent {
  const factory _Completed(Todo todo) = _$_Completed;

  @override
  Todo get todo;
  @override
  _$CompletedCopyWith<_Completed> get copyWith;
}

/// @nodoc
class _$TodoActorStateTearOff {
  const _$TodoActorStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

// ignore: unused_element
  _CompleteTodoFailure completeTodoFailure(TodoFailure todoFailure) {
    return _CompleteTodoFailure(
      todoFailure,
    );
  }

// ignore: unused_element
  _CompleteTodoSuccess completeTodoSuccess() {
    return const _CompleteTodoSuccess();
  }

// ignore: unused_element
  _DeleteFailure deleteFailure(TodoFailure todoFailure) {
    return _DeleteFailure(
      todoFailure,
    );
  }

// ignore: unused_element
  _DeleteSuccess deleteSuccess() {
    return const _DeleteSuccess();
  }
}

/// @nodoc
// ignore: unused_element
const $TodoActorState = _$TodoActorStateTearOff();

/// @nodoc
mixin _$TodoActorState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result completeTodoFailure(TodoFailure todoFailure),
    @required Result completeTodoSuccess(),
    @required Result deleteFailure(TodoFailure todoFailure),
    @required Result deleteSuccess(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result completeTodoFailure(TodoFailure todoFailure),
    Result completeTodoSuccess(),
    Result deleteFailure(TodoFailure todoFailure),
    Result deleteSuccess(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result completeTodoFailure(_CompleteTodoFailure value),
    @required Result completeTodoSuccess(_CompleteTodoSuccess value),
    @required Result deleteFailure(_DeleteFailure value),
    @required Result deleteSuccess(_DeleteSuccess value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result completeTodoFailure(_CompleteTodoFailure value),
    Result completeTodoSuccess(_CompleteTodoSuccess value),
    Result deleteFailure(_DeleteFailure value),
    Result deleteSuccess(_DeleteSuccess value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $TodoActorStateCopyWith<$Res> {
  factory $TodoActorStateCopyWith(
          TodoActorState value, $Res Function(TodoActorState) then) =
      _$TodoActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodoActorStateCopyWithImpl<$Res>
    implements $TodoActorStateCopyWith<$Res> {
  _$TodoActorStateCopyWithImpl(this._value, this._then);

  final TodoActorState _value;
  // ignore: unused_field
  final $Res Function(TodoActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$TodoActorStateCopyWithImpl<$Res>
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
    return 'TodoActorState.initial()';
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
    @required Result actionInProgress(),
    @required Result completeTodoFailure(TodoFailure todoFailure),
    @required Result completeTodoSuccess(),
    @required Result deleteFailure(TodoFailure todoFailure),
    @required Result deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(completeTodoFailure != null);
    assert(completeTodoSuccess != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result completeTodoFailure(TodoFailure todoFailure),
    Result completeTodoSuccess(),
    Result deleteFailure(TodoFailure todoFailure),
    Result deleteSuccess(),
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
    @required Result actionInProgress(_ActionInProgress value),
    @required Result completeTodoFailure(_CompleteTodoFailure value),
    @required Result completeTodoSuccess(_CompleteTodoSuccess value),
    @required Result deleteFailure(_DeleteFailure value),
    @required Result deleteSuccess(_DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(completeTodoFailure != null);
    assert(completeTodoSuccess != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result completeTodoFailure(_CompleteTodoFailure value),
    Result completeTodoSuccess(_CompleteTodoSuccess value),
    Result deleteFailure(_DeleteFailure value),
    Result deleteSuccess(_DeleteSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TodoActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionInProgressCopyWithImpl<$Res>
    extends _$TodoActorStateCopyWithImpl<$Res>
    implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(
      _ActionInProgress _value, $Res Function(_ActionInProgress) _then)
      : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

/// @nodoc
class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'TodoActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result completeTodoFailure(TodoFailure todoFailure),
    @required Result completeTodoSuccess(),
    @required Result deleteFailure(TodoFailure todoFailure),
    @required Result deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(completeTodoFailure != null);
    assert(completeTodoSuccess != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result completeTodoFailure(TodoFailure todoFailure),
    Result completeTodoSuccess(),
    Result deleteFailure(TodoFailure todoFailure),
    Result deleteSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result completeTodoFailure(_CompleteTodoFailure value),
    @required Result completeTodoSuccess(_CompleteTodoSuccess value),
    @required Result deleteFailure(_DeleteFailure value),
    @required Result deleteSuccess(_DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(completeTodoFailure != null);
    assert(completeTodoSuccess != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result completeTodoFailure(_CompleteTodoFailure value),
    Result completeTodoSuccess(_CompleteTodoSuccess value),
    Result deleteFailure(_DeleteFailure value),
    Result deleteSuccess(_DeleteSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements TodoActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$CompleteTodoFailureCopyWith<$Res> {
  factory _$CompleteTodoFailureCopyWith(_CompleteTodoFailure value,
          $Res Function(_CompleteTodoFailure) then) =
      __$CompleteTodoFailureCopyWithImpl<$Res>;
  $Res call({TodoFailure todoFailure});

  $TodoFailureCopyWith<$Res> get todoFailure;
}

/// @nodoc
class __$CompleteTodoFailureCopyWithImpl<$Res>
    extends _$TodoActorStateCopyWithImpl<$Res>
    implements _$CompleteTodoFailureCopyWith<$Res> {
  __$CompleteTodoFailureCopyWithImpl(
      _CompleteTodoFailure _value, $Res Function(_CompleteTodoFailure) _then)
      : super(_value, (v) => _then(v as _CompleteTodoFailure));

  @override
  _CompleteTodoFailure get _value => super._value as _CompleteTodoFailure;

  @override
  $Res call({
    Object todoFailure = freezed,
  }) {
    return _then(_CompleteTodoFailure(
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
class _$_CompleteTodoFailure implements _CompleteTodoFailure {
  const _$_CompleteTodoFailure(this.todoFailure) : assert(todoFailure != null);

  @override
  final TodoFailure todoFailure;

  @override
  String toString() {
    return 'TodoActorState.completeTodoFailure(todoFailure: $todoFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CompleteTodoFailure &&
            (identical(other.todoFailure, todoFailure) ||
                const DeepCollectionEquality()
                    .equals(other.todoFailure, todoFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(todoFailure);

  @override
  _$CompleteTodoFailureCopyWith<_CompleteTodoFailure> get copyWith =>
      __$CompleteTodoFailureCopyWithImpl<_CompleteTodoFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result completeTodoFailure(TodoFailure todoFailure),
    @required Result completeTodoSuccess(),
    @required Result deleteFailure(TodoFailure todoFailure),
    @required Result deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(completeTodoFailure != null);
    assert(completeTodoSuccess != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return completeTodoFailure(todoFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result completeTodoFailure(TodoFailure todoFailure),
    Result completeTodoSuccess(),
    Result deleteFailure(TodoFailure todoFailure),
    Result deleteSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (completeTodoFailure != null) {
      return completeTodoFailure(todoFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result completeTodoFailure(_CompleteTodoFailure value),
    @required Result completeTodoSuccess(_CompleteTodoSuccess value),
    @required Result deleteFailure(_DeleteFailure value),
    @required Result deleteSuccess(_DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(completeTodoFailure != null);
    assert(completeTodoSuccess != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return completeTodoFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result completeTodoFailure(_CompleteTodoFailure value),
    Result completeTodoSuccess(_CompleteTodoSuccess value),
    Result deleteFailure(_DeleteFailure value),
    Result deleteSuccess(_DeleteSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (completeTodoFailure != null) {
      return completeTodoFailure(this);
    }
    return orElse();
  }
}

abstract class _CompleteTodoFailure implements TodoActorState {
  const factory _CompleteTodoFailure(TodoFailure todoFailure) =
      _$_CompleteTodoFailure;

  TodoFailure get todoFailure;
  _$CompleteTodoFailureCopyWith<_CompleteTodoFailure> get copyWith;
}

/// @nodoc
abstract class _$CompleteTodoSuccessCopyWith<$Res> {
  factory _$CompleteTodoSuccessCopyWith(_CompleteTodoSuccess value,
          $Res Function(_CompleteTodoSuccess) then) =
      __$CompleteTodoSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$CompleteTodoSuccessCopyWithImpl<$Res>
    extends _$TodoActorStateCopyWithImpl<$Res>
    implements _$CompleteTodoSuccessCopyWith<$Res> {
  __$CompleteTodoSuccessCopyWithImpl(
      _CompleteTodoSuccess _value, $Res Function(_CompleteTodoSuccess) _then)
      : super(_value, (v) => _then(v as _CompleteTodoSuccess));

  @override
  _CompleteTodoSuccess get _value => super._value as _CompleteTodoSuccess;
}

/// @nodoc
class _$_CompleteTodoSuccess implements _CompleteTodoSuccess {
  const _$_CompleteTodoSuccess();

  @override
  String toString() {
    return 'TodoActorState.completeTodoSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CompleteTodoSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result completeTodoFailure(TodoFailure todoFailure),
    @required Result completeTodoSuccess(),
    @required Result deleteFailure(TodoFailure todoFailure),
    @required Result deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(completeTodoFailure != null);
    assert(completeTodoSuccess != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return completeTodoSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result completeTodoFailure(TodoFailure todoFailure),
    Result completeTodoSuccess(),
    Result deleteFailure(TodoFailure todoFailure),
    Result deleteSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (completeTodoSuccess != null) {
      return completeTodoSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result completeTodoFailure(_CompleteTodoFailure value),
    @required Result completeTodoSuccess(_CompleteTodoSuccess value),
    @required Result deleteFailure(_DeleteFailure value),
    @required Result deleteSuccess(_DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(completeTodoFailure != null);
    assert(completeTodoSuccess != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return completeTodoSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result completeTodoFailure(_CompleteTodoFailure value),
    Result completeTodoSuccess(_CompleteTodoSuccess value),
    Result deleteFailure(_DeleteFailure value),
    Result deleteSuccess(_DeleteSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (completeTodoSuccess != null) {
      return completeTodoSuccess(this);
    }
    return orElse();
  }
}

abstract class _CompleteTodoSuccess implements TodoActorState {
  const factory _CompleteTodoSuccess() = _$_CompleteTodoSuccess;
}

/// @nodoc
abstract class _$DeleteFailureCopyWith<$Res> {
  factory _$DeleteFailureCopyWith(
          _DeleteFailure value, $Res Function(_DeleteFailure) then) =
      __$DeleteFailureCopyWithImpl<$Res>;
  $Res call({TodoFailure todoFailure});

  $TodoFailureCopyWith<$Res> get todoFailure;
}

/// @nodoc
class __$DeleteFailureCopyWithImpl<$Res>
    extends _$TodoActorStateCopyWithImpl<$Res>
    implements _$DeleteFailureCopyWith<$Res> {
  __$DeleteFailureCopyWithImpl(
      _DeleteFailure _value, $Res Function(_DeleteFailure) _then)
      : super(_value, (v) => _then(v as _DeleteFailure));

  @override
  _DeleteFailure get _value => super._value as _DeleteFailure;

  @override
  $Res call({
    Object todoFailure = freezed,
  }) {
    return _then(_DeleteFailure(
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
class _$_DeleteFailure implements _DeleteFailure {
  const _$_DeleteFailure(this.todoFailure) : assert(todoFailure != null);

  @override
  final TodoFailure todoFailure;

  @override
  String toString() {
    return 'TodoActorState.deleteFailure(todoFailure: $todoFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteFailure &&
            (identical(other.todoFailure, todoFailure) ||
                const DeepCollectionEquality()
                    .equals(other.todoFailure, todoFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(todoFailure);

  @override
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith =>
      __$DeleteFailureCopyWithImpl<_DeleteFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result completeTodoFailure(TodoFailure todoFailure),
    @required Result completeTodoSuccess(),
    @required Result deleteFailure(TodoFailure todoFailure),
    @required Result deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(completeTodoFailure != null);
    assert(completeTodoSuccess != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return deleteFailure(todoFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result completeTodoFailure(TodoFailure todoFailure),
    Result completeTodoSuccess(),
    Result deleteFailure(TodoFailure todoFailure),
    Result deleteSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteFailure != null) {
      return deleteFailure(todoFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result completeTodoFailure(_CompleteTodoFailure value),
    @required Result completeTodoSuccess(_CompleteTodoSuccess value),
    @required Result deleteFailure(_DeleteFailure value),
    @required Result deleteSuccess(_DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(completeTodoFailure != null);
    assert(completeTodoSuccess != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result completeTodoFailure(_CompleteTodoFailure value),
    Result completeTodoSuccess(_CompleteTodoSuccess value),
    Result deleteFailure(_DeleteFailure value),
    Result deleteSuccess(_DeleteSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteFailure != null) {
      return deleteFailure(this);
    }
    return orElse();
  }
}

abstract class _DeleteFailure implements TodoActorState {
  const factory _DeleteFailure(TodoFailure todoFailure) = _$_DeleteFailure;

  TodoFailure get todoFailure;
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith;
}

/// @nodoc
abstract class _$DeleteSuccessCopyWith<$Res> {
  factory _$DeleteSuccessCopyWith(
          _DeleteSuccess value, $Res Function(_DeleteSuccess) then) =
      __$DeleteSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeleteSuccessCopyWithImpl<$Res>
    extends _$TodoActorStateCopyWithImpl<$Res>
    implements _$DeleteSuccessCopyWith<$Res> {
  __$DeleteSuccessCopyWithImpl(
      _DeleteSuccess _value, $Res Function(_DeleteSuccess) _then)
      : super(_value, (v) => _then(v as _DeleteSuccess));

  @override
  _DeleteSuccess get _value => super._value as _DeleteSuccess;
}

/// @nodoc
class _$_DeleteSuccess implements _DeleteSuccess {
  const _$_DeleteSuccess();

  @override
  String toString() {
    return 'TodoActorState.deleteSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeleteSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result completeTodoFailure(TodoFailure todoFailure),
    @required Result completeTodoSuccess(),
    @required Result deleteFailure(TodoFailure todoFailure),
    @required Result deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(completeTodoFailure != null);
    assert(completeTodoSuccess != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result completeTodoFailure(TodoFailure todoFailure),
    Result completeTodoSuccess(),
    Result deleteFailure(TodoFailure todoFailure),
    Result deleteSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccess != null) {
      return deleteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result completeTodoFailure(_CompleteTodoFailure value),
    @required Result completeTodoSuccess(_CompleteTodoSuccess value),
    @required Result deleteFailure(_DeleteFailure value),
    @required Result deleteSuccess(_DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(completeTodoFailure != null);
    assert(completeTodoSuccess != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result completeTodoFailure(_CompleteTodoFailure value),
    Result completeTodoSuccess(_CompleteTodoSuccess value),
    Result deleteFailure(_DeleteFailure value),
    Result deleteSuccess(_DeleteSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccess implements TodoActorState {
  const factory _DeleteSuccess() = _$_DeleteSuccess;
}
