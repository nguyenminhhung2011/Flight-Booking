import 'package:freezed_annotation/freezed_annotation.dart';
part 'customer.freezed.dart';
part 'customer.g.dart';

@freezed
class Customer with _$Customer {
  const factory Customer({
    required int id,
    required String name,
    required String phoneNumber,
    required String email,
    required String identifyNum,
    required String gender,
    required DateTime birthday,
  }) = _Customer;

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);

  static final Customer empty = Customer(
    id: 0,
    name: "name",
    identifyNum: "identityNum",
    phoneNumber: " phoneNumber",
    email: " email",
    gender: " gender",
    birthday: DateTime.now(),
  );
}
