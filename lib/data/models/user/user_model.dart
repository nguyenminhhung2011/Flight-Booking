import 'package:flight_booking/domain/entities/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable(explicitToJson: true)
class UserModel {
  @JsonKey(name: "id")
  final String id;
  @JsonKey(name: "username")
  final String username;
  @JsonKey(name: "password")
  final String password;
  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "birthday")
  final int birthday;
  @JsonKey(name: "email")
  final String email;
  @JsonKey(name: "phone")
  final String phone;

  UserModel({
    required this.id,
    required this.username,
    required this.password,
    required this.name,
    required this.birthday,
    required this.email,
    required this.phone,
  });

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  User toEntity() => User(
        id: id,
        username: username,
        password: password,
        name: name,
        email: email,
        phone: phone,
        birthday: DateTime.fromMillisecondsSinceEpoch(birthday),
      );
}
