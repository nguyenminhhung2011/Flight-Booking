import 'package:freezed_annotation/freezed_annotation.dart';

part "user.freezed.dart";

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String username,
    required String password,
    required String name,
    required DateTime birthday,
    required String email,
    required String phone,
  }) = _User;
}
