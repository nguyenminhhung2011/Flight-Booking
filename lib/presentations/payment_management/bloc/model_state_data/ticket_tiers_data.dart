import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_tiers_data.freezed.dart';

@freezed
class TicketTierData with _$TicketTierData {
  const factory TicketTierData({
    @Default("") final String economy,
    @Default("") final String premiumEconomy,
    @Default("") final String business,
    @Default("") final String first,
  }) = _TicketTierData;
}
