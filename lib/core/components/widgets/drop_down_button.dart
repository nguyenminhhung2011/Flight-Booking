import 'package:flutter/material.dart';

class DropdownButotn extends StatelessWidget {
  final Widget child;
  final Function() onPress;
  const DropdownButotn({
    super.key,
    required this.child,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Theme.of(context).primaryColor.withOpacity(0.3),
          ),
          child: child),
    );
  }
}
