import 'package:flight_booking/core/config/common_ui_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomerTextField extends StatefulWidget {
  const CustomerTextField({
    super.key,
    this.title,
    this.maxLine,
    this.trailingIcon,
    this.hint,
    this.prefixWidget,
    this.width,
    this.hintStyle,
    this.borderSide,
    this.isPasswordField,
    this.controller,
    this.validator,
    this.onTap,
    this.readOnly,
    this.checkFormat = true,
  });
  final String? title;
  final double? width;
  final int? maxLine;
  final BorderSide? borderSide;
  final String? hint;
  final Widget? trailingIcon;
  final Widget? prefixWidget;
  final TextStyle? hintStyle;
  final bool? isPasswordField;
  final Function()? onTap;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool? readOnly;
  final bool checkFormat;
  @override
  State<CustomerTextField> createState() => _CustomerTextFieldState();
}

class _CustomerTextFieldState extends State<CustomerTextField> {
  bool isObscure = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width ?? double.infinity,
      child: TextFormField(
        readOnly: widget.readOnly ?? false,
        onTap: widget.onTap,
        validator: widget.validator,
        controller: widget.controller,
        obscureText: isObscure,
        maxLines: widget.maxLine,
        inputFormatters: !widget.checkFormat
            ? [
                FilteringTextInputFormatter.allow(
                    RegExp(r'[0-9]+[,.]{0,1}[0-9]*'))
              ]
            : [],
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: widget.title,
          labelStyle: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          hintText: widget.hint,
          hintStyle: widget.hintStyle,
          border: OutlineInputBorder(
            borderRadius: CommonAppUIConfig.primaryRadiusBorder,
            borderSide: widget.borderSide ??
                BorderSide(color: Colors.grey[350]!, width: 0.4),
          ),
          suffixIcon: SizedBox(
            height: 50,
            width: 50,
            child: InkWell(
              onTap: () {
                if (widget.isPasswordField ?? false) {
                  setState(() {
                    isObscure = !isObscure;
                  });
                }
              },
              child: widget.trailingIcon,
            ),
          ),
          prefixIcon: widget.prefixWidget,
        ),
      ),
    );
  }
}