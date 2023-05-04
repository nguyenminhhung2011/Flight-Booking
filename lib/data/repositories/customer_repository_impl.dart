import 'package:flight_booking/domain/entities/customer/customer.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/customer_repository.dart';

@Injectable(as: CustomerRepository)
class CustomerRepositoryImpl implements CustomerRepository {
  @override
  Future<Customer?> addNewCustomer(Customer customer) {
    throw UnimplementedError();
  }

  @override
  Future<bool> deleteCustomer(String id) {
    // TODO: implement deleteCustomer
    throw UnimplementedError();
  }

  @override
  Future<Customer> editCustomer(Customer customer) {
    // TODO: implement editCustomer
    throw UnimplementedError();
  }

  @override
  List<Customer> getAllCustomers() {
    // TODO: implement getAllCustomers
    throw UnimplementedError();
  }

  @override
  Customer? getCustomerById(String id) {
    // TODO: implement getCustomerById
    throw UnimplementedError();
  }
}
