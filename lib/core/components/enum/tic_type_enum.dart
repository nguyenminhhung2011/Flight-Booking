import 'package:flutter/material.dart';

enum TicTypeEnum {
  economyClass,
  premiumEconomyClass,
  businessClass,
  firstClass;

  String get displayValue => switch (this) {
        TicTypeEnum.economyClass => "Economy Class",
        TicTypeEnum.premiumEconomyClass => "Premium Class",
        TicTypeEnum.businessClass => "Business Class",
        _ => "First Class"
      };

  Color get colorType => switch (this) {
        TicTypeEnum.economyClass => Colors.blue,
        TicTypeEnum.premiumEconomyClass => Colors.green,
        TicTypeEnum.businessClass => Colors.red,
        _ => Colors.yellow,
      };
}
