import 'dart:convert';

import 'package:flight_booking/domain/entities/credit_card/credit_card.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'customer.freezed.dart';
part 'customer.g.dart';

@freezed
class Customer with _$Customer {
  const factory Customer({
    required int id,
    required String name,
    required String phone,
    required String email,
    required String identifyNum,
    required String gender,
    required int birthday,
    @Default(CreditCard()) CreditCard creditCard,
  }) = _Customer;

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);

  static Customer empty = const Customer(
    id: 0,
    name: "name",
    identifyNum: "identityNum",
    phone: "phoneNumber",
    email: "email",
    gender: "gender",
    birthday: 0,
    creditCard: CreditCard(),
  );
}

DateTime fromJson(int json) {
  return DateTime.fromMillisecondsSinceEpoch(json);
}

int toJson(DateTime object) {
  return object.millisecondsSinceEpoch;
}
