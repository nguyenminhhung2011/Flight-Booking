import 'package:flutter/material.dart';

class DropdownButotn extends StatelessWidget {
  final Widget child;
  final Function() onPress;
  final Color? backgroundColor;
  const DropdownButotn({
    super.key,
    required this.child,
    required this.onPress,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: backgroundColor ??
                Theme.of(context).primaryColor.withOpacity(0.3),
          ),
          child: child),
    );
  }
}
