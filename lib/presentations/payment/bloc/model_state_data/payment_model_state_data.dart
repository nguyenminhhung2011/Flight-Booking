import 'package:flight_booking/domain/entities/payment/payment.dart';
import 'package:flight_booking/presentations/payment/bloc/model_state_data/payment_status_state_data.dart';
import 'package:flight_booking/presentations/payment/bloc/model_state_data/revenue.dart';
import 'package:flight_booking/presentations/payment/bloc/model_state_data/ticket_tiers_data.dart';
import 'package:flight_booking/presentations/payment/bloc/model_state_data/total_statistical_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'payment_model_state_data.freezed.dart';

@freezed
class PaymentModelStateData with _$PaymentModelStateData {
  const factory PaymentModelStateData({
    required final List<Payment> payments,
    required final TotalStatisticalData totalData,
    required final Revenue revenue,
    required final PaymentStatusStateData statusData,
    required final TicketTierData ticketTierData,
  }) = _PaymentModelStateData;
}
