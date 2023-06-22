import 'package:flight_booking/data/models/customer/customer_model.dart';
import 'package:flight_booking/domain/entities/customer/customer.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/customer_repository.dart';

@Injectable(as: CustomerRepository)
class CustomerRepositoryImpl implements CustomerRepository {
  final Map<String, CustomerModel> customerMap = {
    for (int i = 0; i < 50; i++)
      "id$i": CustomerModel(
        id: i,
        name: "name$i",
        email: "email$i",
        identifyNum: "identityNum$i",
        phoneNumber: "phoneNumber$i",
        gender: "gender$i",
        birthday: 1656546452,
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
      return customerMap
          .update(
            customer.id,
            (value) => value = CustomerModel(
              id: int.parse(customer.id),
              name: customer.name,
              identifyNum: customer.identifyNum,
              phoneNumber: customer.phoneNumber,
              email: customer.email,
              gender: customer.gender,
              birthday: 12315645612,
            ),
          )
          .toEntity();
    });
  }

  @override
  Future<List<Customer>> getAllCustomers() async {
    return await Future<List<Customer>>.delayed(
      const Duration(seconds: 3),
      () => customerMap.values.map((e) => e.toEntity()).toList(),
    );
  }

  @override
  Future<Customer?> getCustomerById(String id) async {
    return await Future(() => customerMap[id]?.toEntity());
  }
}
