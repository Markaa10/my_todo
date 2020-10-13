import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_failure.freezed.dart';

@freezed
abstract class TodoFailure with _$TodoFailure {
  const factory TodoFailure.unexpected() = _Unexpected;
  const factory TodoFailure.insufficientPermission() = _InsufficientPermission;
  const factory TodoFailure.unableToUpdate() = _UnableToUpdate;
}
