import 'package:flight_booking/domain/entities/credit_card/credit_card.dart';
import 'package:json_annotation/json_annotation.dart';

part 'credit_card_model.g.dart';

@JsonSerializable(explicitToJson: true)
class CreditCardModel {
  @JsonKey(name: 'id')
  late int id;

  @JsonKey(name: 'credit_num')
  late String creditNum;

  @JsonKey(name: 'expired_date')
  late int expiredDate;

  @JsonKey(name: 'cvc')
  late String cvc;

  @JsonKey(name: 'name_card')
  late String nameCard;

  CreditCardModel();

  Map<String, dynamic> toJson() => _$CreditCardModelToJson(this);

  factory CreditCardModel.fromJson(Map<String, dynamic> json) =>
      _$CreditCardModelFromJson(json);

  CreditCard get toEntity => CreditCard(
        id: id,
        creditNum: creditNum,
        expiredDate: DateTime.fromMillisecondsSinceEpoch(expiredDate),
        cvc: cvc,
        nameCard: nameCard,
      );
}
