import 'dart:async';

import 'package:flight_booking/core/components/network/app_exception.dart';
import 'package:flight_booking/domain/usecase/customer_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/entities/payment/payment_item.dart';
import '../../../../domain/usecase/flight_usecase.dart';
import '../../../../domain/usecase/payment_usecase.dart';
import '../../../../domain/usecase/tic_information_usecase.dart';
import 'customer_detail_model_state.dart';

part 'customer_detail_event.dart';
part 'customer_detail_state.dart';

part 'customer_detail_bloc.freezed.dart';

@injectable
class CustomerDetailBloc
    extends Bloc<CustomerDetailEvent, CustomerDetailState> {
  final CustomerUseCase _customerUseCase;
  final PaymentUseCase _paymentUseCase;
  final FlightsUsecase _flightUsecase;
  final TicketInformationUsecase _ticketInformationUsecase;

  final int _customerId;
  CustomerDetailBloc(
    @factoryParam int customerId,
    this._customerUseCase,
    this._paymentUseCase,
    this._flightUsecase,
    this._ticketInformationUsecase,
  )   : _customerId = customerId,
        super(const CustomerDetailState.initial(
          data: CustomerDetailModelState(
            payments: <PaymentItem>[],
            ticInformation: [],
          ),
        )) {
    on<_Started>(_onStarted);
    on<_GetPaymentItemsByCustomerId>(_onGetPaymentItemsByCustomerId);
    on<_GetCustomerById>(_onGetCustomerById);
    on<_SelectedPayment>(_onSelectedPayment);
    on<_GetTicInformationByFlightId>(_onGetTicInformationByFlightId);
  }

  CustomerDetailModelState get data => state.data;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<CustomerDetailState> emit,
  ) {}

  FutureOr<void> _onSelectedPayment(
    _SelectedPayment event,
    Emitter<CustomerDetailState> emit,
  ) async {
    emit(_Loading(data: data, loadingGroup: 1));
    try {
      final response =
          await _flightUsecase.getPaymentFlightTics(event.paymentId);
      if (response == null) {
        return emit(_SelectedPaymentFailed(data: data, message: 'Failed'));
      }
      print(response.flight?.airline.airlineName);
      return emit(_SelectedPaymentSuccess(
        data: data.copyWith(
          payment: response,
        ),
      ));
    } on AppException catch (e) {
      emit(_SelectedPaymentFailed(data: data, message: e.toString()));
    } catch (e) {
      emit(_SelectedPaymentFailed(data: data, message: e.toString()));
    }
  }

  FutureOr<void> _onGetPaymentItemsByCustomerId(
    _GetPaymentItemsByCustomerId event,
    Emitter<CustomerDetailState> emit,
  ) async {
    emit(_Loading(data: data, loadingGroup: 0));
    try {
      final response =
          await _paymentUseCase.getPaymentByCustomerId(_customerId);
      emit(_GetPaymentItemsByCustomerIdSuccess(
        data: data.copyWith(payments: response),
      ));
    } catch (e) {
      emit(_GetPaymentItemsByCustomerIdFailed(
        data: data,
        message: e.toString(),
      ));
    }
  }

  FutureOr<void> _onGetCustomerById(
    _GetCustomerById event,
    Emitter<CustomerDetailState> emit,
  ) async {
    emit(_Loading(data: data, loadingGroup: 0));
    try {
      final response =
          await _customerUseCase.getCustomerById(_customerId.toString());
      if (response == null) {
        return emit(_getCustomerByIdFailed(
          data: data,
          message: 'Can\'t found customer',
        ));
      }
      emit(_GetCustomerByIdSuccess(
        data: data.copyWith(customer: response),
      ));
    } on AppException catch (e) {
      emit(_getCustomerByIdFailed(data: data, message: e.toString()));
    } catch (e) {
      emit(_getCustomerByIdFailed(data: data, message: e.toString()));
    }
  }

  FutureOr<void> _onGetTicInformationByFlightId(
    _GetTicInformationByFlightId event,
    Emitter<CustomerDetailState> emit,
  ) async {
    emit(_Loading(data: data, loadingGroup: 1));
    try {
      final response =
          await _ticketInformationUsecase.getTicketByFlight(event.id);
      return emit(_GetTicInformationByFlightIdSuccess(
        data: data.copyWith(
          ticInformation: response,
        ),
      ));
    } on AppException catch (e) {
      emit(_GetTicInformationByFlightIdFailed(
        data: data,
        message: e.toString(),
      ));
    } catch (e) {
      emit(_GetTicInformationByFlightIdFailed(
        data: data,
        message: e.toString(),
      ));
    }
  }
}
