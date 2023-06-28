import 'dart:async';

import 'package:flight_booking/domain/usecase/customer_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'customer_detail_model_state.dart';

part 'customer_detail_event.dart';
part 'customer_detail_state.dart';

part 'customer_detail_bloc.freezed.dart';

@injectable
class CustomerDetailBloc
    extends Bloc<CustomerDetailEvent, CustomerDetailState> {
  final int _customerId;
  final CustomerUseCase _customerUseCase;
  CustomerDetailBloc(@factoryParam int customerId, this._customerUseCase)
      : _customerId = customerId,
        super(const CustomerDetailState.initial(
          data: CustomerDetailModelState(),
        )) {
    on<_Started>(_onStarted);
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<CustomerDetailState> emit,
  ) {}
}
