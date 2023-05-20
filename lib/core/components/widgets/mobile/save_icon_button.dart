import 'package:flutter/material.dart';

class SaveIconButton extends StatelessWidget {
  final bool isSaved;
  final Function() onPress;
  final double? posRight;
  final double? posTop;
  const SaveIconButton({
    super.key,
    required this.isSaved,
    required this.onPress,
    this.posRight,
    this.posTop,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: posTop ?? 5.0,
      right: posRight ?? 5.0,
      child: GestureDetector(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: isSaved
                  ? []
                  : [
                      Theme.of(context).shadowColor.withOpacity(0.2),
                      Theme.of(context).shadowColor.withOpacity(0.3)
                    ],
            ),
            color: isSaved ? Theme.of(context).scaffoldBackgroundColor : null,
          ),
          child: const Icon(
            Icons.favorite,
            color: Colors.red,
            size: 15.0,
          ),
        ),
      ),
    );
  }
}
