import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_detail_model_state.freezed.dart';

@freezed
class PaymentDetailModelState with _$PaymentDetailModelState {
  const PaymentDetailModelState._();

  const factory PaymentDetailModelState({
    required final String paymentId,
  }) = _PaymentDetailModelState;
}
