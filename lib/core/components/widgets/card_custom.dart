import 'package:flutter/material.dart';

class CardCustom extends StatelessWidget {
  final Widget? child;
  final double? width;
  final double? height;
  final double? radius;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final BoxDecoration? decoration;
  final bool isShowHeight;
  final bool isShowWidth;
  final Color? color;

  const CardCustom(
      {super.key,
      this.child,
      this.width,
      this.height,
      this.padding,
      this.margin,
      this.decoration,
      this.isShowHeight = true,
      this.isShowWidth = true,
      this.color,
      this.radius});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isShowWidth ? width ?? double.infinity : null,
      height: isShowHeight ? height ?? double.infinity : null,
      padding: padding ?? const EdgeInsets.all(10.0),
      margin: margin ?? const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: color ?? Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(radius ?? 15.0),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor.withOpacity(0.1),
            blurRadius: 5.0,
          ),
        ],
      ).copyWith(
        color: decoration?.color,
        borderRadius: decoration?.borderRadius,
        boxShadow: decoration?.boxShadow,
        image: decoration?.image,
        border: decoration?.border,
      ),
      child: child,
    );
  }
}
