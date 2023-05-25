import 'package:freezed_annotation/freezed_annotation.dart';
part 'payment.freezed.dart';

@freezed
class Payment with _$Payment {
  const factory Payment({
    required String id,
    required String customerId,
    required String flightId,
    required String paymentMethod,
    required double amount,
    required DateTime creDate,
    required String status,
  }) = _Payment;
}
