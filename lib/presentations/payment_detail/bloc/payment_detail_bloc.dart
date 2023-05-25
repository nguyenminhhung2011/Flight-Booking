import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flight_booking/presentations/payment_detail/bloc/payment_detail_model_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'payment_detail_event.dart';
part 'payment_detail_state.dart';

part 'payment_detail_bloc.freezed.dart';

@injectable
class PaymentDetailBloc extends Bloc<PaymentDetailEvent, PaymentDetailState> {
  final String paymentId;
  PaymentDetailBloc(this.paymentId)
      : super(_Initial(data: PaymentDetailModelState(paymentId: paymentId))) {
    on<_OnStarted>(_onStarted);

    on<_FetchPaymentDetailData>(_onFetchPaymentDetailData);

    on<_SelectOldPayment>(_onSelectOldPayment);

    on<_ChangePaymentMethod>(_onChangePaymentMethod);

    on<_OpenPaymentPage>(_onOpenPaymentPage);
  }

  FutureOr<void> _onStarted(
      _OnStarted event, Emitter<PaymentDetailState> emit) {
    emit(_Loading(data: state.data));
  }

  FutureOr<void> _onFetchPaymentDetailData(
      _FetchPaymentDetailData event, Emitter<PaymentDetailState> emit) {
    emit(_Loading(data: state.data));
  }

  FutureOr<void> _onSelectOldPayment(
      _SelectOldPayment event, Emitter<PaymentDetailState> emit) {
    emit(_Loading(data: state.data));
  }

  FutureOr<void> _onChangePaymentMethod(
      _ChangePaymentMethod event, Emitter<PaymentDetailState> emit) {
    emit(_Loading(data: state.data));
  }

  FutureOr<void> _onOpenPaymentPage(
      _OpenPaymentPage event, Emitter<PaymentDetailState> emit) {
    emit(_Loading(data: state.data));
  }
}
