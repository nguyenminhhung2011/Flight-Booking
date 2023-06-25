import 'package:freezed_annotation/freezed_annotation.dart';
part 'credit_card.freezed.dart';

@freezed
class CreditCard with _$CreditCard {
  const factory CreditCard({
    @Default(0) final int id,
    @Default("") final String creditNum,
    @Default(0) final int expiredDate,
    @Default("") final String cvc,
    @Default("") final String nameCard,
  }) = _CreditCard;
}
