import 'package:flight_booking/domain/entities/customer/customer.dart';

abstract class CustomerRepository {
  Future<List<Customer>> getAllCustomers();

  Future<Customer?> getCustomerById(String id);

  Future<Customer?> addNewCustomer(Customer customer);

  Future<bool> deleteCustomer(String id);

  Future<Customer> editCustomer(Customer customer);
}
