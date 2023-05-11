import 'package:flutter/material.dart';

class CustomRowColumn extends StatelessWidget {
  final List<FlexItemRowColumData> children;
  final double? spacing;
  final bool isRow;
  const CustomRowColumn({
    super.key,
    required this.children,
    this.isRow = true,
    this.spacing,
  });

  @override
  Widget build(BuildContext context) {
    return isRow
        ? Row(
            children: [
              ...children.map((e) => Expanded(
                    flex: e.flex,
                    child: e.data,
                  ))
            ]
                .expand((element) => [element, SizedBox(width: spacing ?? 5.0)])
                .toList()
              ..removeLast(),
          )
        : Column(
            children: [...children.map((e) => e.data)]
                .expand(
                    (element) => [element, SizedBox(height: spacing ?? 5.0)])
                .toList()
              ..removeLast(),
          );
  }
}

class CustomRowColumnNotFlex extends StatelessWidget {
  final List<IsExpandItemRowColumData> children;
  final double? spacing;
  final bool isRow;
  const CustomRowColumnNotFlex({
    super.key,
    required this.children,
    this.isRow = true,
    this.spacing,
  });

  @override
  Widget build(BuildContext context) {
    return isRow
        ? Row(
            children: [
              ...children
                  .map((e) => e.isExpand ? Expanded(child: e.data) : e.data),
            ]
                .expand((element) => [element, SizedBox(width: spacing ?? 5.0)])
                .toList()
              ..removeLast(),
          )
        : Column(
            children: [...children.map((e) => e.data)]
                .expand(
                    (element) => [element, SizedBox(height: spacing ?? 5.0)])
                .toList()
              ..removeLast(),
          );
  }
}

class IsExpandItemRowColumData {
  final bool isExpand;
  final Widget data;
  IsExpandItemRowColumData({
    this.isExpand = false,
    required this.data,
  });
}

class FlexItemRowColumData {
  final int flex;
  final Widget data;
  FlexItemRowColumData({this.flex = 1, required this.data});
}
