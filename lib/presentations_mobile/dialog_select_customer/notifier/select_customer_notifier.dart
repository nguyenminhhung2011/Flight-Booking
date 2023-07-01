import 'dart:async';
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
  SelectCustomerNotifier(
    this._customerUseCase,
  ) {
    getCustomer();
  }

  List<Customer> _listCustomer = <Customer>[];
  List<Customer> get listCustomer => _listCustomer;
  Customer? _customerSelected;
  Customer get customerSelected =>
      _customerSelected ?? ModelHelper.defaultCustomer;

  bool _loading = false;
  bool get loading => _loading;

  bool _loadingSub = false;
  bool get loadingSub => _loadingSub;

  void loadingDisable(int type) {
    type == 0 ? _loading = false : _loadingSub = false;
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
      loadingDisable(0);
      log(e.toString());
    } catch (e) {
      loadingDisable(0);
      log(e.toString());
    }
  }

  Future<void> getCustomerByyId(int id) async {
    _loadingSub = true;
    notifyListeners();
    try {
      final response = await _customerUseCase.getCustomerById(id.toString());
      _customerSelected = response;
      _loadingSub = false;
      notifyListeners();
    } on AppException catch (e) {
      loadingDisable(1);
      log(e.toString());
    } catch (e) {
      loadingDisable(1);
      log(e.toString());
    }
  }

  FutureOr<void> selectCustomer(Customer newCustomer) {
    _customerSelected = newCustomer;
    notifyListeners();
  }

  Future<void> onTextChange(String message) async {
    _loading = true;
    _listCustomer.clear();
    notifyListeners();
    try {
      var result = <Customer>[];
      if (message.isNotEmpty) {
        result = await _customerUseCase.searchCustomer(message);
      } else {
        result = await _customerUseCase.fetchAllCustomer();
      }
      _listCustomer = result;
      _customerSelected = result.isNotEmpty ? result.first : _customerSelected;
      _loading = false;
      notifyListeners();
    } on AppException catch (e) {
      loadingDisable(0);
      log(e.toString());
    } catch (e) {
      loadingDisable(0);
      log(e.toString());
    }
  }
}
