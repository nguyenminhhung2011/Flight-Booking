import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flight_booking/core/components/enum/payment_status_enum.dart';
import 'package:flight_booking/core/components/enum/payment_type.dart';
import 'package:flight_booking/core/components/network/app_exception.dart';
import 'package:flight_booking/domain/entities/customer/customer.dart';
import 'package:flight_booking/presentations/payment/blocs/payment_tab_model_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../data/models/model_helper.dart';
import '../../../domain/entities/payment/payment.dart';
import '../../../domain/entities/ticket/ticket_information.dart';
import '../../../domain/usecase/customer_usecase.dart';
import '../../../domain/usecase/flight_usecase.dart';
import '../../../domain/usecase/payment_usecase.dart';
import '../../../domain/usecase/tic_information_usecase.dart';
import '../../../domain/usecase/ticket_usecase.dart';

part 'payment_tab_event.dart';
part 'payment_tab_state.dart';

part 'payment_tab_bloc.freezed.dart';

@injectable
class PaymentTabBloc extends Bloc<PaymentTabEvent, PaymentTabState> {
  final FlightsUsecase _flightsUsecase;
  final CustomerUseCase _customerUseCase;
  final TicketInformationUsecase _ticketInformationUsecase;
  final TicketUsecase _ticketUsecase;
  final PaymentUseCase _paymentuseCase;
  final int _flightId;
  final int _paymentId;
  PaymentTabModelState get data => state.data;
  int get flightId => _flightId;

  PaymentTabBloc(
    @factoryParam Map<String, dynamic> ids,
    this._customerUseCase,
    this._flightsUsecase,
    this._ticketInformationUsecase,
    this._ticketUsecase,
    this._paymentuseCase,
  )   : _flightId = ids['flightId'] ?? -1,
        _paymentId = ids['paymentId'] ?? -1,
        super(
          const PaymentTabState.initial(
            data: PaymentTabModelState(
              priceSummary: {
                'luggage': 200.0,
                'offer': 10.0,
                'ticket': 300.0,
              },
              customerIndex: 0,
              tics: [],
            ),
          ),
        ) {
    on<_Started>(_onStarted);
    on<_GetFlightById>(_onGetFlightById);
    on<_GetCustomerById>(_onGetCustomerById);
    on<_GetTicInformation>(_onGetTicInformation);
    on<_ChangeCustomerIndexView>(_onChangeCustomerIndexView);
    on<_UpdateContactCustomer>(_onUpdateContactCustomer);
    on<_AddTicToDB>(_onAddTicToDB);
    on<_GetPaymentById>(_onGetPaymentById);
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<PaymentTabState> emit,
  ) {}

  FutureOr<void> _onGetPaymentById(
      _GetPaymentById event, Emitter<PaymentTabState> emit) async {
    if (_paymentId != -1) {
      emit(_Loading(data: data, loadingField: 0));
      try {
        final response = await _paymentuseCase.getNormalPaymentById(_paymentId);
        emit(_GetPaymentByIdSuccess(
            data: data.copyWith(
          customer: response?.customer ?? ModelHelper.defaultCustomer,
          payment: response,
          tics: response?.ticket ?? [],
        )));
      } catch (e) {
        emit(_GetPaymentByIdFailed(data: data, message: e.toString()));
      }
    }
  }

  FutureOr<void> _onAddTicToDB(
    _AddTicToDB event,
    Emitter<PaymentTabState> emit,
  ) async {
    if (data.payment == null) {
      return emit(_AddTicToDBFailed(data: data, message: 'Failed'));
    }
    emit(_Loading(data: data, loadingField: 2));
    try {
      Payment newPayment = data.payment!;
      newPayment = newPayment.copyWith(
        paymentStatus: PaymentStatus.succeeded,
        paymentType: PaymentType.getByName(event.paymentType.toLowerCase()),
      );
      final response =
          await _paymentuseCase.updatePayment(newPayment.id, newPayment);

      emit(_AddTicToDBSuccess(
        data: data.copyWith(payment: response),
      ));
    } on AppException catch (e) {
      emit(_AddTicToDBFailed(data: data, message: e.toString()));
    } catch (e) {
      emit(_AddTicToDBFailed(data: data, message: e.toString()));
    }
  }

  FutureOr<void> _onUpdateContactCustomer(
    _UpdateContactCustomer event,
    Emitter<PaymentTabState> emit,
  ) async {
    if (data.customer == null) {
      return emit(_UpdateContactCustomerFailed(data: data, message: 'Failed'));
    }
    emit(_Loading(data: data, loadingField: 1));
    try {
      final response = await _customerUseCase.editCustomer(
        Customer(
          id: data.customer!.id,
          name: event.name,
          phone: event.phoneNumber,
          identifyNum: data.customer?.identifyNum ?? '',
          gender: data.customer?.gender ?? 'MALE',
          email: event.email,
          birthday:
              data.customer?.birthday ?? DateTime.now().millisecondsSinceEpoch,
        ),
        data.customer!.id,
      );
      if (response == null) {
        emit(_UpdateContactCustomerFailed(data: data, message: 'Failed'));
        return;
      }
      emit(_UpdateContactCustomerSuccess(
        data: data.copyWith(customer: response),
      ));
    } on AppException catch (e) {
      emit(_UpdateContactCustomerFailed(data: data, message: e.toString()));
    } catch (e) {
      emit(_UpdateContactCustomerFailed(data: data, message: e.toString()));
    }
  }

  Future<void> _onGetTicInformation(
    _GetTicInformation event,
    Emitter<PaymentTabState> emit,
  ) async {
    emit(_Loading(data: data, loadingField: 0));

    try {
      final response =
          await _ticketInformationUsecase.getTicketByFlight(_flightId);
      if (response.isEmpty) {
        emit(_GetTicInformationFailed(data: data, message: 'Failed'));
        return;
      }
      Map<int, TicketInformation> result = {};
      response.sort((a, b) => a.id.ticketType.compareTo(b.id.ticketType));

      for (var element in response) {
        result[element.id.ticketType] = element;
      }

      emit(_GetTicInformationSuccess(
        data: data.copyWith(ticInformation: result),
      ));
    } catch (e) {
      emit(_GetTicInformationFailed(data: data, message: e.toString()));
    }
  }

  FutureOr<void> _onGetCustomerById(
    _GetCustomerById event,
    Emitter<PaymentTabState> emit,
  ) async {
    if ((data.customer?.id ?? -1) != -1) {
      emit(_Loading(data: data, loadingField: 0));
      try {
        final response = await _customerUseCase
            .getCustomerById(data.customer!.id.toString());
        if (response == null) {
          return emit(_GetCustomerByIdFailed(data: data, message: 'Failed'));
        }
        return emit(_GetCustomerByIdSuccess(
          data: data.copyWith(customer: response),
        ));
      } on AppException catch (e) {
        emit(_GetCustomerByIdFailed(data: data, message: e.toString()));
      } catch (e) {
        emit(_GetCustomerByIdFailed(data: data, message: e.toString()));
      }
    }
  }

  FutureOr<void> _onGetFlightById(
    _GetFlightById event,
    Emitter<PaymentTabState> emit,
  ) async {
    if (_flightId != -1) {
      emit(_Loading(data: data, loadingField: 0));
      try {
        final response =
            await _flightsUsecase.getFlightById(_flightId.toString());
        if (response == null) {
          return emit(_GetFlightByIdFailed(data: data, message: 'Failed'));
        }
        return emit(_GetFlightByIdSuccess(
          data: data.copyWith(flight: response),
        ));
      } on AppException catch (e) {
        emit(_GetFlightByIdFailed(data: data, message: e.toString()));
      } catch (e) {
        emit(_GetFlightByIdFailed(data: data, message: e.toString()));
      }
    }
  }

  FutureOr<void> _onChangeCustomerIndexView(
    _ChangeCustomerIndexView event,
    Emitter<PaymentTabState> emit,
  ) {
    emit(_ChangeCustomerTabIndexSuccess(
      data: data.copyWith(customerIndex: event.newIndex),
    ));
  }
}
