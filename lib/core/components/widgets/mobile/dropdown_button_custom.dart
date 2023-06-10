import 'package:flutter/material.dart';

class DropdownButtonCustom<T> extends StatelessWidget {
  final double? width;
  final double? height;
  final double? radius;
  final Color? color;
  final Color? borderColor;
  final EdgeInsetsGeometry? padding;
  final List<DropdownMenuItem<T>> items;
  final T value;
  final Function(T?) onChange;
  const DropdownButtonCustom({
    super.key,
    this.width,
    this.height,
    this.radius,
    this.color,
    this.padding,
    this.borderColor,
    required this.items,
    required this.value,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        color: color ?? Colors.transparent,
        borderRadius: BorderRadius.circular(radius ?? 15.0),
        border: Border.all(
          width: 1,
          color: borderColor ?? Theme.of(context).dividerColor,
        ),
      ),
      child: DropdownButtonFormField<T>(
        borderRadius: BorderRadius.circular(10),
        decoration: const InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
        icon: const Icon(Icons.keyboard_arrow_down_rounded),
        focusColor: Theme.of(context).primaryColor,
        padding: const EdgeInsets.all(0.0),
        items: items,
        onChanged: onChange,
        value: value,
      ),
    );
  }
}
