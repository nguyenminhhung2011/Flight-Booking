enum PaymentType {
  card,
  cash,
  unknown;

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
