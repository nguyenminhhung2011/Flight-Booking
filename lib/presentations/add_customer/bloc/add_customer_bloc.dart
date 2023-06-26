import 'dart:async';

import 'package:flight_booking/core/components/network/app_exception.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/customer/customer.dart';
import '../../../domain/usecase/customer_usecase.dart';
import 'add_customer_model_state.dart';

part 'add_customer_event.dart';
part 'add_customer_state.dart';

part 'add_customer_bloc.freezed.dart';

@injectable
class AddCustomerBloc extends Bloc<AddCustomerEvent, AddCustomerState> {
  final int _customerId;
  final CustomerUseCase _customerUseCase;
  AddCustomerModelState get data => state.data;
  int get customerId => _customerId;

  AddCustomerBloc(
    @factoryParam int customerId,
    this._customerUseCase,
  )   : _customerId = customerId,
        super(const AddCustomerState.initial(
          data: AddCustomerModelState(),
        )) {
    on<_Started>(_onStarted);
    on<_AddCustomer>(_onAddCustomer);
    on<_EditCustomer>(_onEditCustomer);
    on<_GetCustomerById>(_onGetCustomerById);
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<AddCustomerState> emit,
  ) {}

  FutureOr<void> _onAddCustomer(
    _AddCustomer event,
    Emitter<AddCustomerState> emit,
  ) async {
    emit(AddCustomerState.loading(data: data, loadingField: 1));
    try {
      if (event.name.isEmpty ||
          event.phoneNumber.isEmpty ||
          event.email.isEmpty ||
          event.identifyNum.isEmpty) {
        return emit(AddCustomerState.addCustomerFailed(
            data: data, message: 'Field is not null'));
      }
      final response = await _customerUseCase.addNewCustomer(Customer(
        id: 0,
        name: event.name,
        phone: event.phoneNumber,
        email: event.email,
        identifyNum: event.identifyNum,
        gender: event.gender,
        birthday: event.dob.millisecondsSinceEpoch,
      ));
      if (response == null) {
        return emit(AddCustomerState.addCustomerFailed(
          data: data,
          message: 'Cam\'t add new customer',
        ));
      }
      return emit(AddCustomerState.addCustomerSuccess(
        data: data,
        customer: response,
      ));
    } on AppException catch (e) {
      emit(AddCustomerState.addCustomerFailed(
        data: data,
        message: e.toString(),
      ));
    } catch (e) {
      emit(AddCustomerState.addCustomerFailed(
        data: data,
        message: e.toString(),
      ));
    }
  }

  FutureOr<void> _onEditCustomer(
    _EditCustomer event,
    Emitter<AddCustomerState> emit,
  ) async {
    emit(AddCustomerState.loading(data: data, loadingField: 1));
    try {
      if (event.name.isEmpty ||
          event.phoneNumber.isEmpty ||
          event.email.isEmpty ||
          event.identifyNum.isEmpty) {
        return emit(AddCustomerState.editCustomerFailed(
          data: data,
          message: 'Field is not null',
        ));
      }
      final response = await _customerUseCase.editCustomer(
        Customer(
          id: _customerId,
          name: event.name,
          phone: event.phoneNumber,
          email: event.email,
          identifyNum: event.identifyNum,
          gender: event.gender,
          birthday: event.dob.millisecondsSinceEpoch,
        ),
        _customerId,
      );
      if (response == null) {
        return emit(AddCustomerState.editCustomerFailed(
          data: data,
          message: 'Cam\'t edit customer',
        ));
      }
      return emit(AddCustomerState.editCustomerSuccess(
        data: data,
        customer: response,
      ));
    } on AppException catch (e) {
      emit(AddCustomerState.editCustomerFailed(
        data: data,
        message: e.toString(),
      ));
    } catch (e) {
      emit(AddCustomerState.editCustomerFailed(
        data: data,
        message: e.toString(),
      ));
    }
  }

  FutureOr<void> _onGetCustomerById(
    _GetCustomerById event,
    Emitter<AddCustomerState> emit,
  ) async {
    emit(AddCustomerState.loading(data: data, loadingField: 0));
    try {
      final response =
          await _customerUseCase.getCustomerById(_customerId.toString());
      if (response == null) {
        emit(AddCustomerState.getCustomerByIdFailed(
          data: data,
          message: 'Can\'t get customer',
        ));
      }
      emit(AddCustomerState.getCustomerByIdSuccess(
        data: data,
        customer: response!,
      ));
    } on AppException catch (e) {
      emit(AddCustomerState.getCustomerByIdFailed(
        data: data,
        message: e.toString(),
      ));
    } catch (e) {
      emit(AddCustomerState.getCustomerByIdFailed(
        data: data,
        message: e.toString(),
      ));
    }
  }
}
