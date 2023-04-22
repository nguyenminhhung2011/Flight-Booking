import 'package:flutter/material.dart';

class RichTextCustom extends StatelessWidget {
  final String firstText;
  final String secondText;
  final TextStyle? style;
  const RichTextCustom({
    super.key,
    required this.firstText,
    required this.secondText,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      maxLines: 1,
      text: TextSpan(
        style: style ??
            Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
        children: [
          TextSpan(text: firstText),
          TextSpan(
            text: secondText,
            style: const TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }
}
