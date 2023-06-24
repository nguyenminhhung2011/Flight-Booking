import 'package:flight_booking/presentations/payment_management/bloc/model_state_data/payment_status_state_data.dart';
import 'package:flight_booking/presentations/payment_management/bloc/model_state_data/revenue.dart';
import 'package:flight_booking/presentations/payment_management/bloc/model_state_data/ticket_tiers_data.dart';
import 'package:flight_booking/presentations/payment_management/bloc/model_state_data/total_statistical_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/payment/payment_item.dart';
part 'payment_model_state_data.freezed.dart';

@freezed
class PaymentModelStateData with _$PaymentModelStateData {
  const factory PaymentModelStateData({
    @Default(0) final int page,
    @Default(10) final int perPage,
    required final List<PaymentItem> payments,
    required final TotalStatisticalData totalData,
    required final Revenue revenue,
    required final PaymentStatusStateData statusData,
    required final TicketTierData ticketTierData,
  }) = _PaymentModelStateData;
}
