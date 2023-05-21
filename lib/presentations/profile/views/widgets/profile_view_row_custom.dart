import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flutter/material.dart';

class ProfileViewRowCustom extends StatelessWidget {
  final String header;
  final TextStyle? headerStyle;
  final Widget? suffix;
  final double? hPadding;
  final double? vPadding;
  final Function()? onPress;
  const ProfileViewRowCustom({
    super.key,
    required this.header,
    this.suffix,
    this.hPadding,
    this.vPadding,
    this.headerStyle,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: hPadding ?? 0.0, vertical: vPadding ?? 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              header,
              style: headerStyle ??
                  context.titleMedium.copyWith(fontWeight: FontWeight.w500),
            ),
            suffix ?? const Icon(Icons.arrow_forward_ios_sharp, size: 15)
          ],
        ),
      ),
    );
  }
}
