import 'package:flight_booking/domain/entities/customer/customer.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/customer_repository.dart';

@Injectable(as: CustomerRepository)
class CustomerRepositoryImpl implements CustomerRepository {
  final Map<String, Customer> customerMap = {
    for (int i = 0; i < 50; i++)
      "id$i": Customer(
        id: "id$i",
        name: "name$i",
        email: "email$i",
        identityNum: "identityNum$i",
        phoneNumber: "phoneNumber$i",
        gender: "gender$i",
        birthday: DateTime.now(),
      ),
  };

  @override
  Future<Customer?> addNewCustomer(Customer customer) {
    throw UnimplementedError();
  }

  @override
  Future<bool> deleteCustomer(String id) async {
    return await Future<bool>(
      () {
        return customerMap.remove(id) == null;
      },
    );
  }

  @override
  Future<Customer> editCustomer(Customer customer) {
    return Future(() {
      return customerMap.update(customer.id, (value) => value = customer);
    });
  }

  @override
  Future<List<Customer>> getAllCustomers() async {
    return await Future<List<Customer>>.delayed(
      const Duration(seconds: 3),
      () => customerMap.values.toList(),
    );
  }

  @override
  Future<Customer?> getCustomerById(String id) async {
    return await Future(() => customerMap[id]);
  }
}
