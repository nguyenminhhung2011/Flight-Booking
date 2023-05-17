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

  TextStyle get primaryMediumText =>
      Theme.of(this).textTheme.titleMedium!.copyWith(
            color: Theme.of(this).primaryColor,
            fontWeight: FontWeight.w600,
          );

  TextStyle get headlineMedium => Theme.of(this).textTheme.headlineMedium!;
  TextStyle get headlineSmall => Theme.of(this).textTheme.headlineSmall!;

  TextStyle get titleSmall => Theme.of(this).textTheme.titleSmall!;
  TextStyle get titleMedium => Theme.of(this).textTheme.titleMedium!;
  TextStyle get titleLarge => Theme.of(this).textTheme.titleLarge!;

  TextStyle get headerAppBarTextStyle =>
      Theme.of(this).textTheme.titleMedium!.copyWith(
            fontWeight: FontWeight.bold,
            color: Theme.of(this).scaffoldBackgroundColor,
          );
}
