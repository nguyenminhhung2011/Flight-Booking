import 'package:freezed_annotation/freezed_annotation.dart';
part 'customer.freezed.dart';

@freezed
class Customer with _$Customer {
  const factory Customer({
    required String id,
    required String name,
    required String identityNum,
    required String phoneNumber,
    required String email,
    required String gender,
    required DateTime birthday,
  }) = _Customer;

  static final Customer empty = Customer(
    id: "id",
    name: "name",
    identityNum: "identityNum",
    phoneNumber: " phoneNumber",
    email: " email",
    gender: " gender",
    birthday: DateTime.now(),
  );
}
