import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  double get widthDevice => MediaQuery.of(this).size.width;
  double get heightDevice => MediaQuery.of(this).size.height;

  // text

  TextStyle get headerStyle => Theme.of(this).textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w400,
      );
  TextStyle get timeStyle => Theme.of(this).textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.bold,
      );
  TextStyle get textStyle => Theme.of(this).textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
        color: Theme.of(this).primaryColor,
      );
  TextStyle get subTextStyle => textStyle.copyWith(fontWeight: FontWeight.w400);
}
