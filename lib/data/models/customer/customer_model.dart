import 'package:flight_booking/data/models/credit_card/credit_card_model.dart';
import 'package:flight_booking/domain/entities/credit_card/credit_card.dart';
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
  @JsonKey(name: "creditCard")
  final CreditCardModel? creditCard;

  CustomerModel({
    required this.id,
    required this.name,
    required this.identifyNum,
    required this.phoneNumber,
    required this.email,
    required this.gender,
    required this.birthday,
    required this.creditCard,
  });

  Map<String, dynamic> toJson() => _$CustomerModelToJson(this);

  factory CustomerModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerModelFromJson(json);

  Customer toEntity() => Customer(
        creditCard: creditCard?.toEntity ?? const CreditCard(),
        id: id,
        name: name,
        identifyNum: identifyNum,
        phoneNumber: phoneNumber,
        email: email,
        gender: gender,
        birthday: DateTime.fromMillisecondsSinceEpoch(birthday),
      );
}
