enum PaymentType {
  card,
  cash,
  all;

  static PaymentType getByName(String text) {
    final value = text.toLowerCase();

    switch (value) {
      case "card":
        return PaymentType.card;
      case "cash":
        return PaymentType.cash;
      case "all":
        return PaymentType.all;
      default:
        return PaymentType.cash;
    }
  }
}
