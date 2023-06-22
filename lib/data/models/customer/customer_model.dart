import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/customer/customer.dart';

part 'customer_model.g.dart';

@JsonSerializable(explicitToJson: false)
class CustomerModel {
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "identifyNum")
  final String identifyNum;
  @JsonKey(name: "phone")
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
    required this.identifyNum,
    required this.phoneNumber,
    required this.email,
    required this.gender,
    required this.birthday,
  });

  Map<String, dynamic> toJson() => _$CustomerModelToJson(this);

  factory CustomerModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerModelFromJson(json);

  Customer toEntity() => Customer(
        id: id.toString(),
        name: name,
        identifyNum: identifyNum,
        phoneNumber: phoneNumber,
        email: email,
        gender: gender,
        birthday: DateTime.fromMillisecondsSinceEpoch(birthday),
      );
}
