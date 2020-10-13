import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_todo/domain/core/value_objects.dart';
import './value_objects.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    @required UniqueId id,
    @required FullName fullName,
  }) = _User;
}
