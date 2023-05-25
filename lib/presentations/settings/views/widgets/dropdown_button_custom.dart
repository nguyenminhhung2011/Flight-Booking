import 'package:flutter/material.dart';

import '../../../../core/config/common_ui_config.dart';

class CustomDropdownButton<T> extends StatelessWidget {
  const CustomDropdownButton({
    super.key,
    this.padding,
    required this.dropDownMenuItems,
    required this.onTap,
    required this.value,
  });

  final EdgeInsets? padding;
  final List<DropdownMenuItem<T>> dropDownMenuItems;
  final void Function() onTap;
  final T value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: CommonAppUIConfig.primaryRadiusBorder,
        border: Border.all(
          width: 1.5,
          color: Theme.of(context).dividerColor,
        ),
      ),
      child: DropdownButton<T>(
        onTap: onTap,
        value: value,
        borderRadius: CommonAppUIConfig.primaryRadiusBorder,
        isDense: true,
        underline: const SizedBox(),
        items: dropDownMenuItems.map((element) => element).toList(),
        onChanged: (value) {},
      ),
    );
  }
}
