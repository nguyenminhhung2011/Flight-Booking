import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_tiers_data.freezed.dart';

@freezed
class TicketTierData with _$TicketTierData {
  const factory TicketTierData(
      {@Default(0) final int economy,
      @Default(0) final int premiumEconomy,
      @Default(0) final int business,
      @Default(0) final int first}) = _TicketTierData;

  const TicketTierData._();

  int get getSum => economy + premiumEconomy + business + first;
}
