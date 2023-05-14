import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/customer/customer.dart';

part 'customer_model.g.dart';

@JsonSerializable(explicitToJson: true)
class CustomerModel {
  @JsonKey(name: "id")
  final String id;
  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "identityNum")
  final String identityNum;
  @JsonKey(name: "phoneNumber")
  final String phoneNumber;
  @JsonKey(name: "email")
  final String email;
  @JsonKey(name: "gender")
  final String gender;
  @JsonKey(name: "birthday")
  final int birthday;

  CustomerModel({
    required this.id,
    required this.name,
    required this.identityNum,
    required this.phoneNumber,
    required this.email,
    required this.gender,
    required this.birthday,
  });

  Map<String, dynamic> toJson() => _$CustomerModelToJson(this);

  factory CustomerModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerModelFromJson(json);

  Customer toEntity() => Customer(
        id: id,
        name: name,
        identityNum: identityNum,
        phoneNumber: phoneNumber,
        email: email,
        gender: gender,
        birthday: DateTime.fromMillisecondsSinceEpoch(birthday),
      );
}
