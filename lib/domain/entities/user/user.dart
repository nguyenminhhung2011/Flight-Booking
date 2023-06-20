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
    required String identityCard,
    required String address,
    required String gender,
    required String phone,
  }) = _User;

  static const User empty = User(
    id: "",
    username: "",
    password: "",
    name: "",
    identityCard: "",
    email: "",
    phone: '',
    address: '',
    gender: "MALE",
    birthday: null,
  );
}
