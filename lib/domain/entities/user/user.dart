import 'package:freezed_annotation/freezed_annotation.dart';

part "user.freezed.dart";
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String username,
    required String password,
    required String name,
    required int birthday,
    required String email,
    required String identityCard,
    required String address,
    required String gender,
    required String phone,
    required String role,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

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
    birthday: 0,
    role: "USER",
  );
}
