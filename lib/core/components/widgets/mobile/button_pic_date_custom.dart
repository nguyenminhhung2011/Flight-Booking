import 'package:flight_booking/app_coordinator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constant/handle_time.dart';

class ButtonPicDateCustom extends StatefulWidget {
  final Color? color;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final Function(DateTime?) onChange;
  final DateTime value;
  const ButtonPicDateCustom(
      {super.key,
      this.color,
      this.width,
      this.padding,
      required this.onChange,
      required this.value});

  @override
  State<ButtonPicDateCustom> createState() => _ButtonPicDateCustomState();
}

class _ButtonPicDateCustomState extends State<ButtonPicDateCustom> {
  void onChangeDate() async {
    final date = await context.pickDate(DatePickerMode.day);
    widget.onChange(date);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onChangeDate,
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
              child: Text(getYmdFormat(widget.value), maxLines: 1),
            ),
            const Icon(CupertinoIcons.calendar),
          ],
        ),
      ),
    );
  }
}
