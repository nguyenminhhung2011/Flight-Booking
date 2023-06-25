import 'package:flight_booking/domain/entities/credit_card/credit_card.dart';
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
    required CreditCard creditCard,
  }) = _Customer;

  static final Customer empty = Customer(
    id: 0,
    name: "name",
    identifyNum: "identityNum",
    phoneNumber: " phoneNumber",
    email: " email",
    gender: " gender",
    birthday: DateTime.now(),
    creditCard: const reditCard(),
  );
}
