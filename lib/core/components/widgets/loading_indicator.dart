import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator(
      {super.key, this.strokeWidth, this.radius, this.color});
  final double? strokeWidth;
  final double? radius;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
            height: radius,
            width: radius,
            child: CircularProgressIndicator(
              strokeWidth: strokeWidth ?? 4.0,
              color: color ?? Theme.of(context).primaryColor,
            )));
  }
}
