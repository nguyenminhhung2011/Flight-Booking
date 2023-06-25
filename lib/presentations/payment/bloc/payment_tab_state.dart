part of 'payment_tab_bloc.dart';

@freezed
class PaymentTabState with _$PaymentTabState {
  const factory PaymentTabState.initial({
    required PaymentTabModelState data,
  }) = _Initial;

  const factory PaymentTabState.loading({
    required PaymentTabModelState data,
  }) = _Loading;
}
