import 'package:flight_booking/domain/entities/customer/customer.dart';

abstract class CustomerRepository {
  List<Customer> getAllCustomers() {
    return [];
  }
}
