import 'dart:async';

import 'package:flight_booking/presentations/customer/bloc/customer_model_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/customer/customer.dart';
import '../../../domain/usecase/customer_usecase.dart';

part 'customer_event.dart';

part 'customer_state.dart';

part 'customer_bloc.freezed.dart';

@injectable
class CustomerBloc extends Bloc<CustomerEvent, CustomerState> {
  final CustomerUseCase customerUseCase;

  CustomerBloc(this.customerUseCase)
      : super(
          const CustomerState.initial(data: CustomerModelState(customers: [])),
        ) {
    on<_OnStarted>(_onStarted);
    on<_SelectCustomer>(_onSelectCustomer);
    on<_OpenCustomerDetail>(_onOpenCustomerDetail);
    on<_SearchCustomer>(_onSearchCustomer);
    on<_FetchCustomerData>(_onFetchCustomers);
    on<_DeleteCustomer>(_onDeleteCustomer);
    on<_EditCustomer>(_onEditCustomer);
  }

  FutureOr<void> _onStarted(_OnStarted event, Emitter<CustomerState> emit) {}

  FutureOr<void> _onSelectCustomer(
      _SelectCustomer event, Emitter<CustomerState> emit) async {
    final result = await customerUseCase.getCustomerById(event.id);

    if (result != null) {
      print(event.index);
      emit(
        _SelectCustomerSuccess(
          data: state.data.copyWith(
            customers: state.data.customers,
            currentIndex: event.index,
          ),
          customer: result,
        ),
      );
    } else {
      emit(
        _SelectCustomerFailed(
            data: state.data, message: "Get Customer Data Failed"),
      );
    }
  }

  FutureOr<void> _onFetchCustomers(
    _FetchCustomerData event,
    Emitter<CustomerState> emit,
  ) async {
    emit(_Loading(data: state.data));

    final result = await customerUseCase.fetchAllCustomer();

    emit(
      _FetchCustomerDataSuccess(data: CustomerModelState(customers: result)),
    );
  }

  FutureOr<void> _onOpenCustomerDetail(
      _OpenCustomerDetail event, Emitter<CustomerState> emit) async {
    emit(_Loading(data: state.data));

    final result = await customerUseCase.getCustomerById(event.customerId);

    if (result == null) {
    } else {
      emit(_OpenCustomerDetailSuccess(
        data: state.data,
        customer: result,
      ));
    }
  }

  FutureOr<void> _onSearchCustomer(
      _SearchCustomer event, Emitter<CustomerState> emit) {}

  FutureOr<void> _onDeleteCustomer(
      _DeleteCustomer event, Emitter<CustomerState> emit) {}

  FutureOr<void> _onEditCustomer(
      _EditCustomer event, Emitter<CustomerState> emit) {}
}
