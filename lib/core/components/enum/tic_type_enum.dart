enum TicTypeEnum {
  economyClass,
  premiumEconomyClass,
  businessClass,
  firstClass;

  String get displayValue {
    switch (this) {
      case TicTypeEnum.economyClass:
        return "Economy Class";
      case TicTypeEnum.premiumEconomyClass:
        return "Premium Economy Class";
      case TicTypeEnum.businessClass:
        return "Business Class";
      case TicTypeEnum.firstClass:
        return "First Class";
    }
  }
}
