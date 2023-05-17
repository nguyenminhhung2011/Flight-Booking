import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  final String? headerText;
  final TextStyle? headerTextStyle;
  final TextStyle? hintStyle;
  final TextStyle? textStyle;
  final TextEditingController? controller;
  final double? spacingText;
  final double? paddingLeft;
  final double? paddingRight;
  final double? paddingTop;
  final double? paddingBottom;
  final double? widthBorder;
  final double? radius;
  final double? hPaddingField;
  final double? vPaddingField;
  final String? hintText;
  final Color? borderColor;
  final Widget? suffix;
  final bool isNumberInputType;
  final bool isPasswordField;
  final bool isPhoneNumberField;
  final Function()? prefixPress;
  const TextFieldCustom({
    super.key,
    this.headerText,
    this.controller,
    this.headerTextStyle,
    this.spacingText,
    this.paddingLeft,
    this.paddingRight,
    this.paddingTop,
    this.paddingBottom,
    this.hintText,
    this.hintStyle,
    this.textStyle,
    this.widthBorder,
    this.radius,
    this.hPaddingField,
    this.vPaddingField,
    this.borderColor,
    this.suffix,
    this.isNumberInputType = false,
    this.isPasswordField = false,
    this.isPhoneNumberField = false,
    this.prefixPress,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: paddingLeft ?? 0.0,
        right: paddingRight ?? 0.0,
        top: paddingTop ?? 0.0,
        bottom: paddingBottom ?? 0.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (headerText != null)
            Text(
              headerText!,
              style: headerTextStyle ?? Theme.of(context).textTheme.titleMedium,
            ),
          SizedBox(height: spacingText ?? 5.0),
          SizedBox(
            width: double.infinity,
            child: TextFormField(
              keyboardType: (isNumberInputType || isPhoneNumberField)
                  ? TextInputType.number
                  : null,
              style: textStyle,
              controller: controller,
              decoration: InputDecoration(
                hintStyle: hintStyle,
                hintText: hintText ?? '',
                contentPadding: EdgeInsets.symmetric(
                  horizontal: hPaddingField ?? 10.0,
                  vertical: vPaddingField ?? 8.0,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(radius ?? 10),
                  borderSide: BorderSide(
                    color: borderColor ?? Colors.grey[300]!,
                    width: widthBorder ?? 1,
                  ),
                ),
                suffixIcon: suffix,
                prefixIcon: isPhoneNumberField
                    ? GestureDetector(
                        onTap: prefixPress,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(width: 10.0),
                            Text(
                              '+84',
                              style: textStyle,
                            ), //update
                            const SizedBox(width: 10.0),
                            const Icon(Icons.arrow_drop_down),
                            const SizedBox(
                              height: 20.0,
                              child: VerticalDivider(width: 1),
                            ),
                            const SizedBox(width: 10.0),
                          ],
                        ),
                      )
                    : null,
              ),
            ),
          )
        ],
      ),
    );
  }
}
