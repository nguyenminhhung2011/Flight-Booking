import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';

class HeaderTextCustom extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final String headerText;
  final TextStyle? textStyle;
  final bool isShowSeeMore;
  final Function()? onPress;
  const HeaderTextCustom({
    super.key,
    this.padding,
    this.textStyle,
    this.isShowSeeMore = false,
    required this.headerText,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              headerText,
              style: textStyle ??
                  Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
            ),
          ),
          if (isShowSeeMore)
            TextButton(
              onPressed: onPress ?? () {},
              child: Text(
                S.of(context).seeMore,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).primaryColor,
                    ),
              ),
            )
        ],
      ),
    );
  }
}
