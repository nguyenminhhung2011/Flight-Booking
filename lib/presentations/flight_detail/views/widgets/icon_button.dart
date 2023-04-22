import 'package:flutter/material.dart';

import '../../../../core/config/color_config.dart';

class IconButtonCustom extends StatelessWidget {
  final IconData iconData;
  final Function() onPress;
  final bool isSec;

  const IconButtonCustom({
    super.key,
    required this.iconData,
    required this.onPress,
    required this.isSec,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        padding: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3.0),
          color: isSec ? CommonColor.primaryColor : Theme.of(context).cardColor,
        ),
        child: Icon(iconData, size: 14.0),
      ),
    );
  }
}
