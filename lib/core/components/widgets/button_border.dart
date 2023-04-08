import 'package:flutter/material.dart';

class ButtonBorder extends StatelessWidget {
  final Function() onPress;
  final List<Widget> children;
  const ButtonBorder({
    super.key,
    required this.onPress,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            width: 1,
            color: Theme.of(context).dividerColor,
          ),
        ),
        child: Row(
          children: [...children]
              .expand((element) => [element, const SizedBox(width: 5.0)])
              .toList()
            ..removeLast(),
        ),
      ),
    );
  }
}
