import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flight_booking/core/components/network/app_exception.dart';
import 'package:flight_booking/presentations/payment/blocs/payment_tab_model_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/ticket/ticket.dart';
import '../../../domain/entities/ticket/ticket_information.dart';
import '../../../domain/usecase/customer_usecase.dart';
import '../../../domain/usecase/flight_usecase.dart';
import '../../../domain/usecase/tic_information_usecase.dart';

part 'payment_tab_event.dart';
part 'payment_tab_state.dart';

part 'payment_tab_bloc.freezed.dart';

@injectable
class PaymentTabBloc extends Bloc<PaymentTabEvent, PaymentTabState> {
  final FlightsUsecase _flightsUsecase;
  final CustomerUseCase _customerUseCase;
  final TicketInformationUsecase _ticketInformationUsecase;
  final List<Ticket> _tics;
  final int _customerId;
  final int _flightId;
  PaymentTabModelState get data => state.data;

  List<Ticket> get tics => _tics;
  int get customerId => _customerId;
  int get flightId => _flightId;

  PaymentTabBloc(
    @factoryParam List<Ticket> tics,
    @factoryParam Map<String, int> ids,
    this._customerUseCase,
    this._flightsUsecase,
    this._ticketInformationUsecase,
  )   : _tics = tics,
        _customerId = ids['customerId'] ?? -1,
        _flightId = ids['flightId'] ?? -1,
        super(
          const PaymentTabState.initial(
            data: PaymentTabModelState(
              priceSummary: {
                'luggage': 200.0,
                'offer': 10.0,
                'ticket': 300.0,
              },
              customerIndex: 0,
            ),
          ),
        ) {
    on<_Started>(_onStarted);
    on<_GetFlightById>(_onGetFlightById);
    on<_GetCustomerById>(_onGetCustomerById);
    on<_GetTicInformation>(_onGetTicInformation);
    on<_ChangeCustomerIndexView>(_onChangeCustomerIndexView);
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<PaymentTabState> emit,
  ) {}

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
      // Map<String, double> priceResult = data.priceSummary;

      response.sort((a, b) => a.id.ticketType.compareTo(b.id.ticketType));

      for (var element in response) {
        result[element.id.ticketType] = element;
      }

      // for (var item in _tics) {
      //   priceResult['luggage'] = (priceResult['luggage']!) + item.luggage;
      //   priceResult['ticket'] =
      //       (priceResult['ticket']!) + result[item.type]!.price;
      // }

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
    if (customerId != -1) {
      emit(_Loading(data: data, loadingField: 0));
      try {
        final response =
            await _customerUseCase.getCustomerById(_customerId.toString());
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
