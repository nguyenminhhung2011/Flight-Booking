import 'package:freezed_annotation/freezed_annotation.dart';
part 'credit_card.freezed.dart';

@freezed
class CreditCard with _$CreditCard {
  const factory CreditCard(
      {required int id,
      required String creditNum,
      required DateTime expiredDate,
      required String cvc,
      required String nameCard}) = _CreditCard;
}
