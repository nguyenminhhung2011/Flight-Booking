import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flight_booking/core/components/enum/payment_status_enum.dart';
import 'package:flight_booking/core/components/enum/payment_type.dart';
import 'package:flight_booking/presentations/payment_management/bloc/model_state_data/payment_model_state_data.dart';
import 'package:flight_booking/presentations/payment_management/bloc/model_state_data/payment_status_state_data.dart';
import 'package:flight_booking/presentations/payment_management/bloc/model_state_data/revenue.dart';
import 'package:flight_booking/presentations/payment_management/bloc/model_state_data/ticket_tiers_data.dart';
import 'package:flight_booking/presentations/payment_management/bloc/model_state_data/total_statistical_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/usecase/payment_usecase.dart';

part 'payment_event.dart';
part 'payment_state.dart';
part 'payment_bloc.freezed.dart';

@injectable
class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  final PaymentUseCase _paymentUseCase;

  PaymentBloc(this._paymentUseCase) : super(const _Initial()) {
    on<_OnStarted>((event, emit) => null);
    on<_FetchPaymentData>(_onFetchPaymentData);
    on<_OpenPaymentDetail>((event, emit) => null);
    on<_DeletePayment>(_onDeletePayment);
    on<_FetchListPaymentData>(_onFetchListPaymentData);
  }

  FutureOr<void> _onOnStarted(_OnStarted event, Emitter<PaymentState> emit) {}

  FutureOr<void> _onFetchPaymentData(
    _FetchPaymentData event,
    Emitter<PaymentState> emit,
  ) async {
    emit(_Loading(data: state.data));

    try {
      final response = await _paymentUseCase.fetchPaymentManagementPage(
        event.page,
        event.perPage,
      );

      print("response.payments.length: ${response.payments.length}");

      emit(
        _FetchListPaymentDataSuccess(
          data: response.copyWith(
            payments: response.payments.reversed.toList(),
          ),
        ),
      );
    } catch (e) {
      emit(_PaymentDataFailedState(data: state.data, message: e.toString()));
    }
  }

  FutureOr<void> _onOpenPaymentDetail(
    _OpenPaymentDetail event,
    Emitter<PaymentState> emit,
  ) {}

  FutureOr<void> _onDeletePayment(
      _DeletePayment event, Emitter<PaymentState> emit) async {
    emit(_LoadingDeletePaymentItem(data: state.data, id: event.id));

    try {
      final bool response =
          (await _paymentUseCase.deletePayment(int.parse(event.id))).success;
      if (response) {
        final newList = state.data.payments.toList()
          ..removeWhere((element) => element.id == event.id);
        return emit(
          _DeletePaymentSuccess(
            data: state.data.copyWith(payments: newList),
          ),
        );
      }
      throw Exception("Delete ticket failed !!! Try again later !!!");
    } catch (e) {
      print(e);
      emit(_PaymentDataFailedState(data: state.data, message: e.toString()));
    }
  }

  FutureOr<void> _onFetchListPaymentData(
      _FetchListPaymentData event, Emitter<PaymentState> emit) async {
    emit(_LoadingTable(data: state.data));
    try {
      final response = await _paymentUseCase.getPaymentByPage(
        event.page,
        event.perPage,
      );

      emit(_FetchListPaymentDataSuccess(
          data: state.data.copyWith(
        payments: response.reversed.toList(),
        page: event.page,
        perPage: event.perPage,
      )));
    } catch (e) {
      emit(_PaymentDataFailedState(data: state.data, message: e.toString()));
    }
  }
}
