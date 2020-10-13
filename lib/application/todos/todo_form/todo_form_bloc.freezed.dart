// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'todo_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TodoFormEventTearOff {
  const _$TodoFormEventTearOff();

// ignore: unused_element
  _Initialized initialized(Option<Todo> initialTodoOption) {
    return _Initialized(
      initialTodoOption,
    );
  }

// ignore: unused_element
  _NameChanged nameChanged(String nameStr) {
    return _NameChanged(
      nameStr,
    );
  }

// ignore: unused_element
  _Saved saved() {
    return const _Saved();
  }
}

/// @nodoc
// ignore: unused_element
const $TodoFormEvent = _$TodoFormEventTearOff();

/// @nodoc
mixin _$TodoFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Todo> initialTodoOption),
    @required Result nameChanged(String nameStr),
    @required Result saved(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Todo> initialTodoOption),
    Result nameChanged(String nameStr),
    Result saved(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result saved(_Saved value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $TodoFormEventCopyWith<$Res> {
  factory $TodoFormEventCopyWith(
          TodoFormEvent value, $Res Function(TodoFormEvent) then) =
      _$TodoFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodoFormEventCopyWithImpl<$Res>
    implements $TodoFormEventCopyWith<$Res> {
  _$TodoFormEventCopyWithImpl(this._value, this._then);

  final TodoFormEvent _value;
  // ignore: unused_field
  final $Res Function(TodoFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Todo> initialTodoOption});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$TodoFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object initialTodoOption = freezed,
  }) {
    return _then(_Initialized(
      initialTodoOption == freezed
          ? _value.initialTodoOption
          : initialTodoOption as Option<Todo>,
    ));
  }
}

/// @nodoc
class _$_Initialized with DiagnosticableTreeMixin implements _Initialized {
  const _$_Initialized(this.initialTodoOption)
      : assert(initialTodoOption != null);

  @override
  final Option<Todo> initialTodoOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoFormEvent.initialized(initialTodoOption: $initialTodoOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoFormEvent.initialized'))
      ..add(DiagnosticsProperty('initialTodoOption', initialTodoOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialTodoOption, initialTodoOption) ||
                const DeepCollectionEquality()
                    .equals(other.initialTodoOption, initialTodoOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialTodoOption);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Todo> initialTodoOption),
    @required Result nameChanged(String nameStr),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(saved != null);
    return initialized(initialTodoOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Todo> initialTodoOption),
    Result nameChanged(String nameStr),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialTodoOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(saved != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements TodoFormEvent {
  const factory _Initialized(Option<Todo> initialTodoOption) = _$_Initialized;

  Option<Todo> get initialTodoOption;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$NameChangedCopyWith<$Res> {
  factory _$NameChangedCopyWith(
          _NameChanged value, $Res Function(_NameChanged) then) =
      __$NameChangedCopyWithImpl<$Res>;
  $Res call({String nameStr});
}

/// @nodoc
class __$NameChangedCopyWithImpl<$Res> extends _$TodoFormEventCopyWithImpl<$Res>
    implements _$NameChangedCopyWith<$Res> {
  __$NameChangedCopyWithImpl(
      _NameChanged _value, $Res Function(_NameChanged) _then)
      : super(_value, (v) => _then(v as _NameChanged));

  @override
  _NameChanged get _value => super._value as _NameChanged;

  @override
  $Res call({
    Object nameStr = freezed,
  }) {
    return _then(_NameChanged(
      nameStr == freezed ? _value.nameStr : nameStr as String,
    ));
  }
}

/// @nodoc
class _$_NameChanged with DiagnosticableTreeMixin implements _NameChanged {
  const _$_NameChanged(this.nameStr) : assert(nameStr != null);

  @override
  final String nameStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoFormEvent.nameChanged(nameStr: $nameStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoFormEvent.nameChanged'))
      ..add(DiagnosticsProperty('nameStr', nameStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NameChanged &&
            (identical(other.nameStr, nameStr) ||
                const DeepCollectionEquality().equals(other.nameStr, nameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nameStr);

  @override
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      __$NameChangedCopyWithImpl<_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Todo> initialTodoOption),
    @required Result nameChanged(String nameStr),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(saved != null);
    return nameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Todo> initialTodoOption),
    Result nameChanged(String nameStr),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(nameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(saved != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements TodoFormEvent {
  const factory _NameChanged(String nameStr) = _$_NameChanged;

  String get nameStr;
  _$NameChangedCopyWith<_NameChanged> get copyWith;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res> extends _$TodoFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

/// @nodoc
class _$_Saved with DiagnosticableTreeMixin implements _Saved {
  const _$_Saved();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoFormEvent.saved()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'TodoFormEvent.saved'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Todo> initialTodoOption),
    @required Result nameChanged(String nameStr),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(saved != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Todo> initialTodoOption),
    Result nameChanged(String nameStr),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(saved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements TodoFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
class _$TodoFormStateTearOff {
  const _$TodoFormStateTearOff();

// ignore: unused_element
  _TodoFormState call(
      {@required Todo todo,
      @required bool showErrorMessages,
      @required bool isEditting,
      @required bool isSaving,
      @required Option<Either<TodoFailure, Unit>> saveFailureOrSuccessOption}) {
    return _TodoFormState(
      todo: todo,
      showErrorMessages: showErrorMessages,
      isEditting: isEditting,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TodoFormState = _$TodoFormStateTearOff();

/// @nodoc
mixin _$TodoFormState {
  Todo get todo;
  bool get showErrorMessages;
  bool get isEditting;
  bool get isSaving;
  Option<Either<TodoFailure, Unit>> get saveFailureOrSuccessOption;

  $TodoFormStateCopyWith<TodoFormState> get copyWith;
}

/// @nodoc
abstract class $TodoFormStateCopyWith<$Res> {
  factory $TodoFormStateCopyWith(
          TodoFormState value, $Res Function(TodoFormState) then) =
      _$TodoFormStateCopyWithImpl<$Res>;
  $Res call(
      {Todo todo,
      bool showErrorMessages,
      bool isEditting,
      bool isSaving,
      Option<Either<TodoFailure, Unit>> saveFailureOrSuccessOption});

  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class _$TodoFormStateCopyWithImpl<$Res>
    implements $TodoFormStateCopyWith<$Res> {
  _$TodoFormStateCopyWithImpl(this._value, this._then);

  final TodoFormState _value;
  // ignore: unused_field
  final $Res Function(TodoFormState) _then;

  @override
  $Res call({
    Object todo = freezed,
    Object showErrorMessages = freezed,
    Object isEditting = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      todo: todo == freezed ? _value.todo : todo as Todo,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditting:
          isEditting == freezed ? _value.isEditting : isEditting as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<TodoFailure, Unit>>,
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
abstract class _$TodoFormStateCopyWith<$Res>
    implements $TodoFormStateCopyWith<$Res> {
  factory _$TodoFormStateCopyWith(
          _TodoFormState value, $Res Function(_TodoFormState) then) =
      __$TodoFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Todo todo,
      bool showErrorMessages,
      bool isEditting,
      bool isSaving,
      Option<Either<TodoFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class __$TodoFormStateCopyWithImpl<$Res>
    extends _$TodoFormStateCopyWithImpl<$Res>
    implements _$TodoFormStateCopyWith<$Res> {
  __$TodoFormStateCopyWithImpl(
      _TodoFormState _value, $Res Function(_TodoFormState) _then)
      : super(_value, (v) => _then(v as _TodoFormState));

  @override
  _TodoFormState get _value => super._value as _TodoFormState;

  @override
  $Res call({
    Object todo = freezed,
    Object showErrorMessages = freezed,
    Object isEditting = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_TodoFormState(
      todo: todo == freezed ? _value.todo : todo as Todo,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditting:
          isEditting == freezed ? _value.isEditting : isEditting as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<TodoFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_TodoFormState with DiagnosticableTreeMixin implements _TodoFormState {
  const _$_TodoFormState(
      {@required this.todo,
      @required this.showErrorMessages,
      @required this.isEditting,
      @required this.isSaving,
      @required this.saveFailureOrSuccessOption})
      : assert(todo != null),
        assert(showErrorMessages != null),
        assert(isEditting != null),
        assert(isSaving != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final Todo todo;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditting;
  @override
  final bool isSaving;
  @override
  final Option<Either<TodoFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoFormState(todo: $todo, showErrorMessages: $showErrorMessages, isEditting: $isEditting, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoFormState'))
      ..add(DiagnosticsProperty('todo', todo))
      ..add(DiagnosticsProperty('showErrorMessages', showErrorMessages))
      ..add(DiagnosticsProperty('isEditting', isEditting))
      ..add(DiagnosticsProperty('isSaving', isSaving))
      ..add(DiagnosticsProperty(
          'saveFailureOrSuccessOption', saveFailureOrSuccessOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodoFormState &&
            (identical(other.todo, todo) ||
                const DeepCollectionEquality().equals(other.todo, todo)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isEditting, isEditting) ||
                const DeepCollectionEquality()
                    .equals(other.isEditting, isEditting)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(todo) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isEditting) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @override
  _$TodoFormStateCopyWith<_TodoFormState> get copyWith =>
      __$TodoFormStateCopyWithImpl<_TodoFormState>(this, _$identity);
}

abstract class _TodoFormState implements TodoFormState {
  const factory _TodoFormState(
          {@required
              Todo todo,
          @required
              bool showErrorMessages,
          @required
              bool isEditting,
          @required
              bool isSaving,
          @required
              Option<Either<TodoFailure, Unit>> saveFailureOrSuccessOption}) =
      _$_TodoFormState;

  @override
  Todo get todo;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditting;
  @override
  bool get isSaving;
  @override
  Option<Either<TodoFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  _$TodoFormStateCopyWith<_TodoFormState> get copyWith;
}
