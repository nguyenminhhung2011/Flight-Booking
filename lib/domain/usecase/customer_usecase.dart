import 'package:flight_booking/domain/repositories/customer_repository.dart';
import 'package:injectable/injectable.dart';

import '../entities/customer/customer.dart';

@injectable
class CustomerUseCase {
  final CustomerRepository _customerRepository;
  CustomerUseCase(this._customerRepository);

  Future<List<Customer>> fetchAllCustomer() async {
    return await _customerRepository.getAllCustomers();
  }

  Future<List<Customer>> searchCustomer(String text) async =>
      await _customerRepository.searchCustomer(text);

  Future<Customer?> getCustomerById(String id) async {
    return _customerRepository.getCustomerById(id);
  }

  Future<Customer?> addNewCustomer(Customer newCustomer) async {
    return _customerRepository.addNewCustomer(newCustomer);
  }

  Future<Customer?> editCustomer(Customer newCustomer, int customerId) async {
    return _customerRepository.editCustomer(newCustomer, customerId);
  }

  Future<bool> deleteCustomer(int customerId) async =>
      _customerRepository.deleteCustomer(customerId.toString());
}
