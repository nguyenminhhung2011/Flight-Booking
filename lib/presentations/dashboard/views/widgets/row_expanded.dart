import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class RowExpanded extends StatelessWidget {
  final List<Widget> children;
  const RowExpanded({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [...children]
          .expandIndexed(
            (index, element) => [
              Expanded(
                flex: index == 0 ? 4 : 1,
                child: element,
              )
            ],
          )
          .toList(),
    );
  }
}
