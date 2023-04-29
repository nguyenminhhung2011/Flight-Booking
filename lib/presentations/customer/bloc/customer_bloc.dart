import 'dart:async';

import 'package:flight_booking/presentations/customer/bloc/customer_model_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'customer_event.dart';

part 'customer_state.dart';

part 'customer_bloc.freezed.dart';

@injectable
class CustomerBloc extends Bloc<CustomerEvent, CustomerState> {
  CustomerBloc()
      : super(
          const CustomerState.initial(
            data: CustomerModelState(customers: []),
          ),
        ) {
    on<_Started>(_onStarted);
    on<_CustomerDetail>(_onCustomerDetail);
    on<_SearchCustomer>(_onSearchCustomer);
    on<_GetCustomers>(_onGetCustomers);
  }

  FutureOr<void> _onStarted(_Started event, Emitter<CustomerState> emit) {}

  FutureOr<void> _onCustomerDetail(
      _CustomerDetail event, Emitter<CustomerState> emit) {}

  FutureOr<void> _onSearchCustomer(
      _SearchCustomer event, Emitter<CustomerState> emit) {}

  FutureOr<void> _onGetCustomers(
      _GetCustomers event, Emitter<CustomerState> emit) {}
}
