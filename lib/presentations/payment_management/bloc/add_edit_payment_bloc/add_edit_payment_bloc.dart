import 'dart:async';

import 'package:flight_booking/domain/entities/payment/payment.dart';
import 'package:flight_booking/domain/usecase/payment_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
part 'add_edit_payment_state.dart';

@injectable
class AddEditPaymentBloc extends Cubit<AddEditPaymentState> {
  final PaymentUseCase paymentUseCase;
  AddEditPaymentBloc(this.paymentUseCase)
      : super(InitialAddEditState(const Payment()));

  void onStarted(int id) {
    emit(LoadingDialogState(state.payment));
  }

  FutureOr<void> getPaymentDetail(int id) async {
    emit(LoadingDialogState(state.payment));
    try {
      final response = await paymentUseCase.getPaymentById(id);

      emit(FetchPaymentDetailSuccess(response));
    } catch (e) {
      print(e.toString());
      emit(AddEditPaymentStateFailed(state.payment, "Error: $e"));
    }
  }

  FutureOr<void> updateCustomerField(int id, Payment newPayment) async {
    emit(LoadingCustomerFieldState(state.payment));
    try {
      final response = await paymentUseCase.updatePayment(id, newPayment);
      emit(FetchPaymentDetailSuccess(response));
    } catch (e) {
      emit(AddEditPaymentStateFailed(state.payment, "Error: $e"));
    }
  }

  FutureOr<void> updatePaymentField(int id, Payment newPayment) async {
    emit(LoadingPaymentInfoFieldState(state.payment));
    try {
      final response = await paymentUseCase.updatePayment(id, newPayment);
      emit(FetchPaymentDetailSuccess(response));
    } catch (e) {
      emit(AddEditPaymentStateFailed(state.payment, "Error: $e"));
    }
  }
}
