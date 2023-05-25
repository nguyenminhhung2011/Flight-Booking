import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flutter/material.dart';

class AppName extends StatelessWidget {
  final double? fontSize;
  const AppName({
    super.key,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
          text: 'Go',
          style: context.titleLarge.copyWith(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor,
              fontSize: fontSize),
        ),
        TextSpan(
          text: ' tour',
          style: context.titleLarge
              .copyWith(fontWeight: FontWeight.bold, fontSize: fontSize),
        ),
      ]),
    );
  }
}
