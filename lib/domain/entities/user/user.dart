import 'package:freezed_annotation/freezed_annotation.dart';

part "user.freezed.dart";

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String username,
    required String password,
    required String name,
    DateTime? birthday,
    required String email,
    required String phone,
  }) = _User;

  static const User empty = User(
    id: "id",
    username: "username",
    password: "password",
    name: "name",
    birthday: null,
    email: "email",
    phone: "phone",
  );
}
