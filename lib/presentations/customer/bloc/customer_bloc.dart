import 'dart:async';

import 'package:flight_booking/core/components/network/app_exception.dart';
import 'package:flight_booking/presentations/customer/bloc/customer_model_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/customer/customer.dart';
import '../../../domain/usecase/customer_usecase.dart';
import '../../../domain/usecase/payment_usecase.dart';

part 'customer_event.dart';

part 'customer_state.dart';

part 'customer_bloc.freezed.dart';

@injectable
class CustomerBloc extends Bloc<CustomerEvent, CustomerState> {
  final CustomerUseCase customerUseCase;
  final PaymentUseCase paymentUseCase;
  CustomerModelState get data => state.data;

  CustomerBloc(
    this.customerUseCase,
    this.paymentUseCase,
  ) : super(
          const CustomerState.initial(
              data: CustomerModelState(
            customers: <Customer>[],
          )),
        ) {
    on<_OnStarted>(_onStarted);
    on<_SelectCustomer>(_onSelectCustomer);
    on<_OpenCustomerDetail>(_onOpenCustomerDetail);
    on<_SearchCustomer>(_onSearchCustomer);
    on<_FetchCustomerData>(_onFetchCustomers);
    on<_DeleteCustomer>(_onDeleteCustomer);
    on<_EditCustomer>(_onEditCustomer);
    on<_AddCustomer>(_onAddCustomer);
    on<_UpdateCustomers>(_onUpdateCustomers);
    on<_GetLatestPaymentOfCustomer>(_onGetPaymentOfCustomer);
  }

  FutureOr<void> _onStarted(_OnStarted event, Emitter<CustomerState> emit) {}

  FutureOr<void> _onSelectCustomer(
      _SelectCustomer event, Emitter<CustomerState> emit) async {
    emit(_Loading(data: data, loadingField: 1));
    final result = await customerUseCase.getCustomerById(event.id);
    if (result != null) {
      emit(
        _SelectCustomerSuccess(
          data: data.copyWith(
            customers: data.customers,
            currentIndex: event.index,
            customerSelected: result,
          ),
          customer: result,
        ),
      );
    } else {
      emit(
        _SelectCustomerFailed(data: data, message: "Get Customer Data Failed"),
      );
    }
  }

  FutureOr<void> _onFetchCustomers(
    _FetchCustomerData event,
    Emitter<CustomerState> emit,
  ) async {
    emit(_Loading(data: data, loadingField: 0));

    try {
      final response = await customerUseCase.fetchAllCustomer();
      emit(_FetchCustomerDataSuccess(
          data: data.copyWith(
        customers: response,
      )));
    } on AppException catch (e) {
      emit(_FetchCustomerDataFailed(data: data, message: e.toString()));
    } catch (e) {
      emit(_FetchCustomerDataFailed(data: data, message: e.toString()));
    }
  }

  FutureOr<void> _onOpenCustomerDetail(
      _OpenCustomerDetail event, Emitter<CustomerState> emit) async {
    emit(_Loading(data: data, loadingField: 0));

    final result = await customerUseCase.getCustomerById(event.customerId);

    if (result == null) {
    } else {
      emit(_OpenCustomerDetailSuccess(
        data: data,
        customer: result,
      ));
    }
  }

  FutureOr<void> _onSearchCustomer(
      _SearchCustomer event, Emitter<CustomerState> emit) {}

  FutureOr<void> _onDeleteCustomer(
    _DeleteCustomer event,
    Emitter<CustomerState> emit,
  ) async {
    emit(_Loading(data: data, loadingField: 0));
    try {
      final response = await customerUseCase.deleteCustomer(event.id);
      if (response) {
        return emit(_DeleteCustomerSuccess(
          data: data.copyWith(
            customers: data.customers
                .where((element) => element.id != event.id)
                .toList(),
          ),
        ));
      }
    } on AppException catch (e) {
      emit(_DeleteCustomerFailed(
        data: data,
        message: e.toString(),
      ));
    } catch (e) {
      emit(_DeleteCustomerFailed(
        data: data,
        message: e.toString(),
      ));
    }
  }

  FutureOr<void> _onEditCustomer(
      _EditCustomer event, Emitter<CustomerState> emit) {}

  FutureOr<void> _onAddCustomer(
    _AddCustomer event,
    Emitter<CustomerState> emit,
  ) {}

  FutureOr<void> _onUpdateCustomers(
    _UpdateCustomers event,
    Emitter<CustomerState> emit,
  ) {
    if (event.isEdit) {
      emit(_UpdateCustomerSuccess(
          data: data.copyWith(
        customers: data.customers.map((e) {
          if (e.id == event.customer.id) {
            return event.customer;
          }
          return e;
        }).toList(),
      )));
    } else {
      emit(_UpdateCustomerSuccess(
          data: data.copyWith(
        customers: [...data.customers, event.customer],
      )));
    }
  }

  FutureOr<void> _onGetPaymentOfCustomer(
    _GetLatestPaymentOfCustomer event,
    Emitter<CustomerState> emit,
  ) async {
    emit(_Loading(data: data, loadingField: 1));
    try {
      final response =
          await paymentUseCase.getLatestPaymentOfCustomer(event.customerId);
      if (response == null) {
        return emit(_GetPaymentOfCustomerFailed(
          data: data,
          message: 'Can\'t get latest payment',
        ));
      }
      return emit(_GetPaymentOfCustomerSuccess(
        data: data.copyWith(
          paymentSelected: response,
        ),
        flightId: 0,
      ));
    } catch (e) {
      emit(_GetPaymentOfCustomerFailed(
        data: data,
        message: e.toString(),
      ));
    }
  }
}
