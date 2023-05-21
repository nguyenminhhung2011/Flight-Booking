import 'package:flutter/material.dart';

enum TextFieldType {
  backgroundShadow,
  noBackgroundShadow;

  bool get isBackgroundShadow => this == TextFieldType.backgroundShadow;
}

class TextFieldCustom extends StatefulWidget {
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
  final Color? color;
  final Widget? suffix;
  final Widget? prefix;
  final bool isNumberInputType;
  final bool isPasswordField;
  final bool isPhoneNumberField;
  final Function()? prefixPress;
  final TextFieldType type;
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
    this.prefixPress,
    this.prefix,
    this.suffix,
    this.type = TextFieldType.noBackgroundShadow,
    this.isNumberInputType = false,
    this.isPasswordField = false,
    this.isPhoneNumberField = false,
    this.color,
  });

  @override
  State<TextFieldCustom> createState() => _TextFieldCustomState();
}

class _TextFieldCustomState extends State<TextFieldCustom> {
  final ValueNotifier<bool> _isShowPass = ValueNotifier<bool>(false);
  void changeShowPass() {
    _isShowPass.value = !_isShowPass.value;
  }

  @override
  Widget build(BuildContext context) {
    if (widget.type.isBackgroundShadow) {
      return ValueListenableBuilder(
        valueListenable: _isShowPass,
        builder: (context, isShowPass, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (widget.headerText != null)
                Padding(
                  padding: EdgeInsets.only(
                    left: widget.paddingLeft ?? 0.0,
                    right: widget.paddingRight ?? 0.0,
                    top: widget.paddingTop ?? 0.0,
                    bottom: widget.paddingBottom ?? 0.0,
                  ),
                  child: Text(
                    widget.headerText!,
                    style: widget.headerTextStyle ??
                        Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              SizedBox(height: widget.spacingText ?? 5.0),
              Container(
                margin: EdgeInsets.only(
                  left: widget.paddingLeft ?? 0.0,
                  right: widget.paddingRight ?? 0.0,
                  top: widget.paddingTop ?? 0.0,
                  bottom: widget.paddingBottom ?? 0.0,
                ),
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: widget.hPaddingField ?? 10.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(widget.radius ?? 10.0),
                  ),
                  color: widget.color ?? Theme.of(context).cardColor,
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).shadowColor.withOpacity(0.1),
                      blurRadius: 5.0,
                    )
                  ],
                ),
                child: Row(
                  children: [
                    if (widget.prefix != null) ...[
                      widget.prefix!,
                      const SizedBox(width: 5.0),
                    ],
                    Expanded(
                      child: TextFormField(
                        obscureText: isShowPass,
                        controller: widget.controller,
                        keyboardType: (widget.isNumberInputType ||
                                widget.isPhoneNumberField)
                            ? TextInputType.number
                            : null,
                        style: widget.textStyle,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintStyle: widget.hintStyle,
                          hintText: widget.hintText ?? '',
                          suffixIcon: widget.suffix,
                        ),
                      ),
                    ),
                    if (widget.isPasswordField)
                      IconButton(
                        onPressed: changeShowPass,
                        icon: Icon(
                          isShowPass
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: Colors.grey,
                        ),
                      )
                  ],
                ),
              ),
            ],
          );
        },
      );
    }
    return Padding(
      padding: EdgeInsets.only(
        left: widget.paddingLeft ?? 0.0,
        right: widget.paddingRight ?? 0.0,
        top: widget.paddingTop ?? 0.0,
        bottom: widget.paddingBottom ?? 0.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.headerText != null)
            Text(
              widget.headerText!,
              style: widget.headerTextStyle ??
                  Theme.of(context).textTheme.titleMedium,
            ),
          SizedBox(height: widget.spacingText ?? 5.0),
          SizedBox(
            width: double.infinity,
            child: TextFormField(
              keyboardType:
                  (widget.isNumberInputType || widget.isPhoneNumberField)
                      ? TextInputType.number
                      : null,
              style: widget.textStyle,
              controller: widget.controller,
              decoration: InputDecoration(
                hintStyle: widget.hintStyle,
                hintText: widget.hintText ?? '',
                contentPadding: EdgeInsets.symmetric(
                  horizontal: widget.hPaddingField ?? 10.0,
                  vertical: widget.vPaddingField ?? 8.0,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(widget.radius ?? 10),
                  borderSide: BorderSide(
                    color: widget.borderColor ?? Colors.grey[300]!,
                    width: widget.widthBorder ?? 1,
                  ),
                ),
                suffixIcon: widget.suffix,
                prefixIcon: widget.isPhoneNumberField
                    ? GestureDetector(
                        onTap: widget.prefixPress,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(width: 10.0),
                            Text(
                              '+84',
                              style: widget.textStyle,
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
