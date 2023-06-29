import 'package:flight_booking/domain/entities/payment/payment_detail_item.dart';
import 'package:flight_booking/domain/entities/payment/payment_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_detail_model_state.freezed.dart';

@freezed
class PaymentDetailModelState with _$PaymentDetailModelState {
  const PaymentDetailModelState._();

  const factory PaymentDetailModelState({
    required final int currentIndex,
    required final List<PaymentItem> payments,
    required final PaymentDetailItem paymentDetail,
  }) = _PaymentDetailModelState;
}
