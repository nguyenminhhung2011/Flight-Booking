import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_status_state_data.freezed.dart';

@freezed
class PaymentStatusStateData with _$PaymentStatusStateData {
  const factory PaymentStatusStateData({
    @Default(0) final int create,
    @Default(0) final int declined,
    @Default(0) final int pending,
    @Default(0) final int succeeded,
  }) = _PaymentStatusStateData;
}
