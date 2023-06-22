import 'dart:async';

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

  AddCustomerBloc(
    @factoryParam int customerId,
    this._customerUseCase,
  )   : _customerId = customerId,
        super(const AddCustomerState.initial(
          data: AddCustomerModelState(),
        )) {
    on<_Started>(_onStarted);
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<AddCustomerState> emit,
  ) {}
}
