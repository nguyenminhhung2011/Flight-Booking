import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flight_booking/presentations/payment/bloc/payment_tab_model_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/ticket/ticket.dart';

part 'payment_tab_event.dart';
part 'payment_tab_state.dart';

part 'payment_tab_bloc.freezed.dart';

@injectable
class PaymentTabBloc extends Bloc<PaymentTabEvent, PaymentTabState> {
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
  )   : _tics = tics,
        _customerId = ids['customerId'] ?? -1,
        _flightId = ids['flightId'] ?? -1,
        super(
          const PaymentTabState.initial(
            data: PaymentTabModelState(),
          ),
        ) {
    on<_Started>(_onStarted);
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<PaymentTabState> emit,
  ) {}
}
