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
  final String paymentId;

  final Map<String, dynamic> cachePaymentDetail = {};

  PaymentDetailBloc(@factoryParam payment, this.paymentUseCase)
      : paymentId = payment,
        super(_Initial(
            data: PaymentDetailModelState(
          currentIndex: 1,
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
      int index =
          state.data.payments.indexWhere((element) => element.id == event.id);
      if (cachePaymentDetail.containsKey(event.id)) {
        return emit(_FetchPaymentDetailDataSuccess(
          data: state.data.copyWith(
            paymentDetail: cachePaymentDetail[event.id],
            currentIndex: index,
          ),
        ));
      }

      final response = await paymentUseCase.getPaymentById(int.parse(event.id));

      cachePaymentDetail.addAll({response.id.toString(): response});

      if (response.customer != null) {
        if (state.data.payments.isEmpty) {
          final payments = await paymentUseCase
              .getPaymentByCustomerId(response.customer!.id);
          emit(_FetchPaymentDetailDataSuccess(
            data: state.data.copyWith(
              paymentDetail: response,
              payments: payments,
              currentIndex: index,
            ),
          ));
        } else {
          emit(_FetchPaymentDetailDataSuccess(
            data: state.data.copyWith(
              currentIndex: index,
              paymentDetail: response,
            ),
          ));
        }
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
