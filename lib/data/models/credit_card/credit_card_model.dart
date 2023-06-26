import 'package:flight_booking/domain/entities/credit_card/credit_card.dart';
import 'package:json_annotation/json_annotation.dart';

part 'credit_card_model.g.dart';

@JsonSerializable(explicitToJson: true)
class CreditCardModel {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'creditNum')
  final String creditNum;

  @JsonKey(name: 'expiredDate')
  final int expiredDate;

  @JsonKey(name: 'cvc')
  final String cvc;

  @JsonKey(name: 'nameCard')
  final String nameCard;

  CreditCardModel({
    required this.id,
    required this.creditNum,
    required this.expiredDate,
    required this.cvc,
    required this.nameCard,
  });

  Map<String, dynamic> toJson() => _$CreditCardModelToJson(this);

  factory CreditCardModel.fromJson(Map<String, dynamic> json) =>
      _$CreditCardModelFromJson(json);

  CreditCard get toEntity => CreditCard(
        id: id,
        creditNum: creditNum,
        expiredDate: expiredDate,
        cvc: cvc,
        nameCard: nameCard,
      );
}
