import 'package:flutter/material.dart';

class FilterCategory extends StatelessWidget {
  const FilterCategory({
    super.key,
    required this.title,
    required this.hint,
    required this.iconData,
    this.enable = true,
  });
  final String title;
  final String hint;
  final IconData iconData;
  final bool enable;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
        ),
        const SizedBox(height: 5),
        TextFormField(
          enabled: enable,
          decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
              hintText: hint,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.grey[300]!,
                  width: 0.05,
                ),
              ),
              suffixIcon: Icon(iconData)),
        ),
      ],
    );
  }
}
