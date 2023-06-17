import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  final Color? color;
  final double? radius;
  final double? width;
  final double? height;
  final Widget child;
  final Function() onPress;
  final bool enableWidth;
  final bool loading;
  const ButtonCustom({
    super.key,
    this.color,
    this.radius,
    this.width,
    this.height,
    this.enableWidth = true,
    this.loading = false,
    required this.child,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: enableWidth ? width ?? double.infinity : null,
      height: height,
      child: ElevatedButton(
        onPressed: loading ? null : onPress,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            color ?? Theme.of(context).primaryColor,
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(radius ?? 10.0),
              ),
              side: BorderSide(color: color ?? Theme.of(context).primaryColor),
            ),
          ),
        ),
        child: loading
            ? const Center(
                child: CircularProgressIndicator(
                color: Colors.white,
              ))
            : child,
      ),
    );
  }
}
