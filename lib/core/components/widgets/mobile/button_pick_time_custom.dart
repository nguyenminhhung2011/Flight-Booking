import 'package:flight_booking/app_coordinator.dart';
import 'package:flutter/material.dart';

class ButtonPickTimeCustom extends StatefulWidget {
  final Color? color;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final Function(TimeOfDay?) onChange;
  final TimeOfDay value;

  const ButtonPickTimeCustom({
    super.key,
    this.color,
    this.width,
    this.padding,
    required this.onChange,
    required this.value,
  });

  @override
  State<ButtonPickTimeCustom> createState() => _ButtonPickTimeCustomState();
}

class _ButtonPickTimeCustomState extends State<ButtonPickTimeCustom> {
  void onChangeTime() async {
    final timePick = await context.pickTime();
    widget.onChange(timePick);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onChangeTime,
      child: Container(
        width: widget.width ?? double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12.0),
        decoration: BoxDecoration(
          color: widget.color ?? Colors.transparent,
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(
            width: 1,
            color: Theme.of(context).dividerColor,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(widget.value.format(context), maxLines: 1),
            ),
            const Icon(Icons.timelapse),
          ],
        ),
      ),
    );
  }
}
