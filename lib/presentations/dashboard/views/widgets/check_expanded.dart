import 'package:flutter/material.dart';

class CheckExpanded extends StatelessWidget {
  final bool check;
  final Widget child;
  const CheckExpanded({super.key, required this.check, required this.child});

  @override
  Widget build(BuildContext context) {
    return check ? Expanded(child: child) : child;
  }
}
