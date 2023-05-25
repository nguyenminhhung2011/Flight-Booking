import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_status_state_data.freezed.dart';

@freezed
class PaymentStatusStateData with _$PaymentStatusStateData {
  const factory PaymentStatusStateData({
    @Default("") final String create,
    @Default("") final String declined,
    @Default("") final String pending,
    @Default("") final String succeeded,
  }) = _PaymentStatusStateData;
}
