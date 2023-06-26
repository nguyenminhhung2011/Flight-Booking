import 'package:flutter/material.dart';

class ChairButton extends StatelessWidget {
  const ChairButton({
    super.key,
    required this.text,
    required this.check,
    required this.onPress,
  });

  final Function() onPress;

  final String text;
  final bool check;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: check ? Colors.red : Theme.of(context).hoverColor,
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
