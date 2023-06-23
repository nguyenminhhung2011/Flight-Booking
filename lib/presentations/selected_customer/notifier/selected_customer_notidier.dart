import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/customer/customer.dart';
import '../../../domain/usecase/customer_usecase.dart';

@injectable
class SelectedCustomerNotifier extends ChangeNotifier {
  final CustomerUseCase _customerUseCase;
  SelectedCustomerNotifier(this._customerUseCase) {
    fetchAllCustomer();
  }

  var listCustomer = <Customer>[];
  Customer? customerSelected;
  bool loading = false;

  Future<void> fetchAllCustomer() async {
    loading = true;
    notifyListeners();
    try {
      final response = await _customerUseCase.fetchAllCustomer();
      if (response.isNotEmpty) {
        listCustomer = response;
        customerSelected = response.first;
        notifyListeners();
      }
    } catch (e) {
      log(e.toString());
    }
    loading = false;
    notifyListeners();
  }

  Future<void> getCustomerById(int customerId) async {
    loading = true;
    try {
      final response =
          await _customerUseCase.getCustomerById(customerId.toString());
      customerSelected = response;
      notifyListeners();
    } catch (e) {
      log(e.toString());
    }
    loading = false;
    notifyListeners();
  }
}
