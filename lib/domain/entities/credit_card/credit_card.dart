import 'package:freezed_annotation/freezed_annotation.dart';
part 'credit_card.freezed.dart';
part 'credit_card.g.dart';

@freezed
class CreditCard with _$CreditCard {
  const factory CreditCard({
    @Default(0) final int id,
    @Default("") final String creditNum,
    @Default(0) final int expiredDate,
    @Default("") final String cvc,
    @Default("") final String nameCard,
  }) = _CreditCard;

  factory CreditCard.fromJson(Map<String, dynamic> json) =>
      _$CreditCardFromJson(json);
}
