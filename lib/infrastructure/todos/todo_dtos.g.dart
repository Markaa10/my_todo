// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodoDto _$_$_TodoDtoFromJson(Map<String, dynamic> json) {
  return _$_TodoDto(
    name: json['name'] as String,
    done: json['done'] as bool,
    serverTimestamp:
        const ServerTimestampConverter().fromJson(json['serverTimestamp']),
  );
}

Map<String, dynamic> _$_$_TodoDtoToJson(_$_TodoDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'done': instance.done,
      'serverTimestamp':
          const ServerTimestampConverter().toJson(instance.serverTimestamp),
    };
