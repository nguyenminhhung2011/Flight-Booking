import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_tiers_data.freezed.dart';
part 'ticket_tiers_data.g.dart';

@freezed
class TicketTierData with _$TicketTierData {
  const factory TicketTierData({
    @Default(0) final int economy,
    @Default(0) final int premiumEconomy,
    @Default(0) final int business,
    @Default(0) final int first,
  }) = _TicketTierData;

  const TicketTierData._();

  factory TicketTierData.fromJson(Map<String, dynamic> json) =>
      _$TicketTierDataFromJson(json);

  int get getSum {
    int total = economy + premiumEconomy + business + first;
    if (total == 0) {
      return 1;
    }
    return total;
  }
}
