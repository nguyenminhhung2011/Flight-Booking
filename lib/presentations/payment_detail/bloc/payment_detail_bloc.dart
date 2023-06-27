import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flight_booking/domain/entities/payment/payment_detail_item.dart';
import 'package:flight_booking/domain/usecase/payment_usecase.dart';
import 'package:flight_booking/presentations/payment_detail/bloc/payment_detail_model_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'payment_detail_event.dart';
part 'payment_detail_state.dart';

part 'payment_detail_bloc.freezed.dart';

@injectable
class PaymentDetailBloc extends Bloc<PaymentDetailEvent, PaymentDetailState> {
  final PaymentUseCase paymentUseCase;

  String paymentId;
  PaymentDetailBloc(@factoryParam payment, this.paymentUseCase)
      : paymentId = payment,
        super(_Initial(
            data: PaymentDetailModelState(
          paymentDetail: PaymentDetailItem(),
          payments: [],
        ))) {
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
      _FetchPaymentDetailData event, Emitter<PaymentDetailState> emit) async {
    emit(_Loading(data: state.data));
    try {
      final response =
          await paymentUseCase.getPaymentById(int.parse(paymentId));
      if (response.customer != null) {
        final payments =
            await paymentUseCase.getPaymentByCustomerId(response.customer!.id);

        emit(_FetchPaymentDetailDataSuccess(
          data: state.data.copyWith(
            paymentDetail: response,
            payments: payments,
          ),
        ));
      }
      throw Exception("Error Customer was null");
    } catch (e) {
      emit(_FailedState(data: state.data));
    }
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
