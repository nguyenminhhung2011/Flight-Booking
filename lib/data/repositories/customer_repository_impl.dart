import 'dart:io';

import 'package:flight_booking/core/components/network/app_exception.dart';
import 'package:flight_booking/data/models/model_heloer.dart';
import 'package:flight_booking/domain/entities/customer/customer.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/customer_repository.dart';
import '../datasource/remote/customer/customer_api.dart';

const _defaultError = 'Error';

@Injectable(as: CustomerRepository)
class CustomerRepositoryImpl implements CustomerRepository {
  final CustomerApi _customerApi;
  CustomerRepositoryImpl(this._customerApi);

  @override
  Future<Customer?> addNewCustomer(Customer customer) async {
    final airportModel = ModelHelper.customerConvert(customer);
    final body = airportModel.toJson();
    final response = await _customerApi.addNewCustomers(body: body);
    if (response.response.statusCode != HttpStatus.ok) {
      throw AppException(
        code: response.response.statusCode,
        message: response.response.statusMessage ?? _defaultError,
      );
    }
    return response.data?.toEntity();
  }

  @override
  Future<bool> deleteCustomer(String id) async {
    final response = await _customerApi.deleteCustomer(id.toString());
    if (response.response.statusCode != HttpStatus.ok) {
      throw AppException(
        code: response.response.statusCode,
        message: response.response.statusMessage ?? _defaultError,
      );
    }
    return true;
  }

  @override
  Future<Customer?> editCustomer(Customer customer, int id) async {
    final customerModel = ModelHelper.customerConvert(customer);
    final body = customerModel.toJson();
    final response = await _customerApi.editCustomer(body: body);
    if (response.response.statusCode != HttpStatus.ok) {
      throw AppException(
        message: response.response.statusMessage!,
        code: response.response.statusCode,
      );
    }
    final result = response.data?.toEntity();
    return result;
  }

  @override
  Future<List<Customer>> getAllCustomers() async {
    final response = await _customerApi.fetchCustomers();
    if (response.response.statusCode != HttpStatus.ok) {
      throw AppException(
        message: response.response.statusMessage!,
        code: response.response.statusCode,
      );
    }
    final result = response.data?.map((e) => e.toEntity()).toList();
    return result ?? <Customer>[];
  }

  @override
  Future<Customer?> getCustomerById(String id) async {
    final response = await _customerApi.getCustomerById(id);
    if (response.response.statusCode != HttpStatus.ok) {
      throw AppException(
        code: response.response.statusCode,
        message: response.response.statusMessage ?? _defaultError,
      );
    }
    return response.data.toEntity();
  }
}
