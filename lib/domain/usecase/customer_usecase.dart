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

  Future<Customer?> getCustomerById(String id) async {
    return _customerRepository.getCustomerById(id);
  }
}
