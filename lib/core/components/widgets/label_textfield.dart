import 'package:flutter/material.dart';

class LabelTextField extends StatelessWidget {
  LabelTextField({
    super.key,
    required this.title,
    this.hint,
    this.iconData,
    this.enable = true,
    this.controller,
    this.labelWidth,
    this.isColumn = true,
  });
  final String title;
  final String? hint;
  final IconData? iconData;
  final bool enable;
  final TextEditingController? controller;
  final bool isColumn;
  final double? labelWidth;

  late final textField = TextFormField(
    expands: false,
    controller: controller,
    enabled: enable,
    decoration: InputDecoration(
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      hintText: hint,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: Colors.grey[300]!,
          width: 0.05,
        ),
      ),
      suffixIcon: Icon(iconData),
    ),
  );

  List<Widget> _getListWidget() {
    return [
      SizedBox(
        width: labelWidth ?? 100,
        child: Text(title),
      ),
      const SizedBox(height: 5),
      isColumn ? textField : Expanded(child: textField),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return isColumn
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _getListWidget(),
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: _getListWidget(),
          );
  }
}
