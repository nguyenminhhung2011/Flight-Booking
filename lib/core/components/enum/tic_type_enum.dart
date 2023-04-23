import 'package:flutter/material.dart';

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

  Color get colorType {
    switch (this) {
      case TicTypeEnum.economyClass:
        return Colors.blue;
      case TicTypeEnum.premiumEconomyClass:
        return Colors.green;
      case TicTypeEnum.businessClass:
        return Colors.red;
      case TicTypeEnum.firstClass:
        return Colors.yellow;
    }
  }
}
