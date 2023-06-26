import 'package:freezed_annotation/freezed_annotation.dart';

enum PaymentType {
  @JsonValue("CARD") card,
  @JsonValue("CASH") cash,
  @JsonValue("UNKNOWN") unknown;

  static PaymentType getByName(String text) {
    final value = text.toLowerCase();

    switch (value) {
      case "card":
        return PaymentType.card;
      case "cash":
        return PaymentType.cash;
      case "unknown":
        return PaymentType.unknown;
      default:
        return PaymentType.unknown;
    }
  }

  String get displayValue => switch (this) {
        PaymentType.card => "card",
        PaymentType.cash => "cash",
        _ => "unknown",
      };
}
