// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'todo_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TodoDto _$TodoDtoFromJson(Map<String, dynamic> json) {
  return _TodoDto.fromJson(json);
}

/// @nodoc
class _$TodoDtoTearOff {
  const _$TodoDtoTearOff();

// ignore: unused_element
  _TodoDto call(
      {@JsonKey(ignore: true) String id,
      @required String name,
      @required bool done,
      @required @ServerTimestampConverter() FieldValue serverTimestamp}) {
    return _TodoDto(
      id: id,
      name: name,
      done: done,
      serverTimestamp: serverTimestamp,
    );
  }

// ignore: unused_element
  TodoDto fromJson(Map<String, Object> json) {
    return TodoDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TodoDto = _$TodoDtoTearOff();

/// @nodoc
mixin _$TodoDto {
  @JsonKey(ignore: true)
  String get id;
  String get name;
  bool get done;
  @ServerTimestampConverter()
  FieldValue get serverTimestamp;

  Map<String, dynamic> toJson();
  $TodoDtoCopyWith<TodoDto> get copyWith;
}

/// @nodoc
abstract class $TodoDtoCopyWith<$Res> {
  factory $TodoDtoCopyWith(TodoDto value, $Res Function(TodoDto) then) =
      _$TodoDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String name,
      bool done,
      @ServerTimestampConverter() FieldValue serverTimestamp});
}

/// @nodoc
class _$TodoDtoCopyWithImpl<$Res> implements $TodoDtoCopyWith<$Res> {
  _$TodoDtoCopyWithImpl(this._value, this._then);

  final TodoDto _value;
  // ignore: unused_field
  final $Res Function(TodoDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object done = freezed,
    Object serverTimestamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      done: done == freezed ? _value.done : done as bool,
      serverTimestamp: serverTimestamp == freezed
          ? _value.serverTimestamp
          : serverTimestamp as FieldValue,
    ));
  }
}

/// @nodoc
abstract class _$TodoDtoCopyWith<$Res> implements $TodoDtoCopyWith<$Res> {
  factory _$TodoDtoCopyWith(_TodoDto value, $Res Function(_TodoDto) then) =
      __$TodoDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String name,
      bool done,
      @ServerTimestampConverter() FieldValue serverTimestamp});
}

/// @nodoc
class __$TodoDtoCopyWithImpl<$Res> extends _$TodoDtoCopyWithImpl<$Res>
    implements _$TodoDtoCopyWith<$Res> {
  __$TodoDtoCopyWithImpl(_TodoDto _value, $Res Function(_TodoDto) _then)
      : super(_value, (v) => _then(v as _TodoDto));

  @override
  _TodoDto get _value => super._value as _TodoDto;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object done = freezed,
    Object serverTimestamp = freezed,
  }) {
    return _then(_TodoDto(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      done: done == freezed ? _value.done : done as bool,
      serverTimestamp: serverTimestamp == freezed
          ? _value.serverTimestamp
          : serverTimestamp as FieldValue,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_TodoDto extends _TodoDto {
  const _$_TodoDto(
      {@JsonKey(ignore: true) this.id,
      @required this.name,
      @required this.done,
      @required @ServerTimestampConverter() this.serverTimestamp})
      : assert(name != null),
        assert(done != null),
        assert(serverTimestamp != null),
        super._();

  factory _$_TodoDto.fromJson(Map<String, dynamic> json) =>
      _$_$_TodoDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String name;
  @override
  final bool done;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimestamp;

  @override
  String toString() {
    return 'TodoDto(id: $id, name: $name, done: $done, serverTimestamp: $serverTimestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodoDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.done, done) ||
                const DeepCollectionEquality().equals(other.done, done)) &&
            (identical(other.serverTimestamp, serverTimestamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimestamp, serverTimestamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(done) ^
      const DeepCollectionEquality().hash(serverTimestamp);

  @override
  _$TodoDtoCopyWith<_TodoDto> get copyWith =>
      __$TodoDtoCopyWithImpl<_TodoDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TodoDtoToJson(this);
  }
}

abstract class _TodoDto extends TodoDto {
  const _TodoDto._() : super._();
  const factory _TodoDto(
          {@JsonKey(ignore: true) String id,
          @required String name,
          @required bool done,
          @required @ServerTimestampConverter() FieldValue serverTimestamp}) =
      _$_TodoDto;

  factory _TodoDto.fromJson(Map<String, dynamic> json) = _$_TodoDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get name;
  @override
  bool get done;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimestamp;
  @override
  _$TodoDtoCopyWith<_TodoDto> get copyWith;
}
