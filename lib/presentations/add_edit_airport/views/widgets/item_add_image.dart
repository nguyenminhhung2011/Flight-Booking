import 'package:dotted_border/dotted_border.dart';
import 'package:flight_booking/core/config/color_config.dart';
import 'package:flutter/material.dart';

class ItemAddImage extends StatelessWidget {
  final int index;
  final Function() onPress;

  const ItemAddImage({
    super.key,
    required this.index,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: SizedBox(
        width: 80,
        height: 80,
        child: DottedBorder(
          dashPattern: const [8, 5],
          color: CommonColor.primaryColor,
          borderType: BorderType.RRect,
          radius: const Radius.circular(12),
          padding: const EdgeInsets.all(0),
          child: const Center(
            child: Icon(
              Icons.camera_alt,
              color: CommonColor.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
