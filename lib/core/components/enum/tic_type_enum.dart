import 'package:flutter/material.dart';

enum TicTypeEnum {
  none,
  economyClass,
  premiumEconomyClass,
  businessClass,
  firstClass;

  String get displayValue => switch (this) {
        TicTypeEnum.economyClass => "Economy Class",
        TicTypeEnum.premiumEconomyClass => "Premium Class",
        TicTypeEnum.businessClass => "Business Class",
        TicTypeEnum.firstClass => "First Class",
        _ => "None"
      };

  Color? get colorType => switch (this) {
        TicTypeEnum.economyClass => Colors.blue,
        TicTypeEnum.premiumEconomyClass => Colors.green,
        TicTypeEnum.businessClass => Colors.red,
        TicTypeEnum.firstClass => Colors.yellow,
        _ => null,
      };
}
