import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:my_todo/domain/auth/user.dart';
import 'package:my_todo/domain/auth/value_objects.dart';
import 'package:my_todo/domain/core/value_objects.dart';

extension FirebaseUserDomainX on auth.User {
  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(uid),
      fullName: FullName(''),
    );
  }
}
