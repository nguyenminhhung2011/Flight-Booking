import 'package:freezed_annotation/freezed_annotation.dart';
part "total_statistical_data.freezed.dart";

@freezed
class TotalStatisticalData with _$TotalStatisticalData {
  const factory TotalStatisticalData({
    @Default("") final String totalPaymentToday,
    @Default("") final String totalCustomerToday,
    @Default("") final String totalFlightToday,
    @Default("") final String totalPassengerToday,
  }) = _TotalStatisticalData;
}
