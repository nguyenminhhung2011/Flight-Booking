import 'package:freezed_annotation/freezed_annotation.dart';
part "total_statistical_data.freezed.dart";

@freezed
class TotalStatisticalData with _$TotalStatisticalData {
  const factory TotalStatisticalData({
    @Default(0) final int totalPaymentToday,
    @Default(0) final int totalCustomerToday,
    @Default(0) final int totalFlightToday,
    @Default(0) final int totalPassengerToday,
  }) = _TotalStatisticalData;
}
