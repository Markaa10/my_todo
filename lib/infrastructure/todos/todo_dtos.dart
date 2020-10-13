import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_todo/domain/core/value_objects.dart';
import 'package:my_todo/domain/todos/todo.dart';
import 'package:my_todo/domain/todos/value_objects.dart';

part 'todo_dtos.freezed.dart';
part 'todo_dtos.g.dart';

@freezed
abstract class TodoDto implements _$TodoDto {
  const TodoDto._();

  const factory TodoDto({
    @JsonKey(ignore: true) String id,
    @required String name,
    @required bool done,
    @required @ServerTimestampConverter() FieldValue serverTimestamp,
  }) = _TodoDto;

  factory TodoDto.fromDomain(Todo todo) {
    return TodoDto(
      id: todo.id.getOrCrash(),
      name: todo.name.getOrCrash(),
      done: todo.done,
      serverTimestamp: FieldValue.serverTimestamp(),
    );
  }

  Todo toDomain() {
    return Todo(
      id: UniqueId.fromUniqueString(id),
      name: TodoName(name),
      done: done,
    );
  }

  factory TodoDto.fromJson(Map<String, dynamic> json) =>
      _$TodoDtoFromJson(json);

  factory TodoDto.fromFirestore(DocumentSnapshot doc) {
    return TodoDto.fromJson(doc.data()).copyWith(id: doc.id);
  }
}

class ServerTimestampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimestampConverter();

  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}
