import 'package:flight_booking/domain/entities/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable(explicitToJson: true)
class UserModel {
  final int id;
  final String username;
  final String password;
  final String name;
  final String identityCard;
  final String phone;
  final String email;
  final String address;
  final String gender;
  final String role;
  final int birthday;

  UserModel({
    required this.id,
    required this.birthday,
    required this.username,
    required this.password,
    required this.name,
    required this.identityCard,
    required this.phone,
    required this.email,
    required this.address,
    required this.gender,
    required this.role,
  });

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  User toEntity() => User(
        id: id.toString(),
        username: username,
        password: password,
        name: name,
        email: email,
        phone: phone,
        birthday: birthday,
        role: role,
        address: address,
        gender: gender,
        identityCard: identityCard,
      );
}
