import 'dart:developer';

import 'package:flight_booking/core/components/network/app_exception.dart';
import 'package:flight_booking/data/models/model_helper.dart';
import 'package:flight_booking/domain/entities/customer/customer.dart';
import 'package:flight_booking/domain/usecase/customer_usecase.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class SelectCustomerNotifier extends ChangeNotifier {
  final CustomerUseCase _customerUseCase;
  SelectCustomerNotifier(this._customerUseCase) {}

  final List<Customer> _listCustomer = <Customer>[];
  List<Customer> get listCustomer => _listCustomer;
  Customer? _customerSelected;
  Customer get customerSelected =>
      _customerSelected ?? ModelHelper.defaultCustomer;

  bool _loading = false;
  bool get loading => _loading;

  void loadingDisable() {
    _loading = false;
    notifyListeners();
  }

  Future<void> getCustomer() async {
    _loading = true;
    notifyListeners();
    try {
      final response = await _customerUseCase.fetchAllCustomer();
      listCustomer.clear();
      listCustomer.addAll(response);
      if (listCustomer.isNotEmpty) {
        _customerSelected = listCustomer.first;
      }
      _loading = false;
      notifyListeners();
    } on AppException catch (e) {
      loadingDisable();
      log(e.toString());
    } catch (e) {
      loadingDisable();
      log(e.toString());
    }
  }
}
