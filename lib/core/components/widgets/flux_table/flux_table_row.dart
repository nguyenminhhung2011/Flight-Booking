import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FluxTableRow<T> extends StatelessWidget {
  const FluxTableRow({
    super.key,
    required this.itemBuilder,
    required this.rowData,
    this.rowDecoration,
    this.padding,
    this.margin,
  });
  final List<FlexRowTableData> rowData;
  final Widget Function(dynamic data, int columnIndex) itemBuilder;
  final BoxDecoration? rowDecoration;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.symmetric(vertical: 10),
      margin: margin,
      decoration: rowDecoration ??
          BoxDecoration(
            color: Theme.of(context).cardColor,
            border:
                Border.all(color: Theme.of(context).canvasColor, width: 0.2),
            borderRadius: BorderRadius.circular(5),
          ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (int i = 0; i < rowData.length; i++)
            rowData.elementAt(i).haveColumn
                ? Expanded(
                    flex: rowData.elementAt(i).flex,
                    child: Align(
                      alignment: rowData.elementAt(i).alignment,
                      child: itemBuilder(rowData.elementAt(i).data, i),
                    ),
                  )
                : Align(
                    alignment: rowData.elementAt(i).alignment,
                    child: itemBuilder(rowData.elementAt(i).data, i),
                  ),
        ],
      ),
    );
  }

  FluxTableRow<T> copyWith({
    List<FlexRowTableData>? rowData,
    Widget Function(dynamic data, int columnIndex)? itemBuilder,
    BoxDecoration? rowDecoration,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
  }) {
    return FluxTableRow<T>(
      itemBuilder: itemBuilder ?? this.itemBuilder,
      rowData: rowData ?? this.rowData,
      margin: margin ?? this.margin,
      padding: padding ?? this.padding,
      rowDecoration: rowDecoration ?? this.rowDecoration,
    );
  }
}

class FlexRowTableData<T> {
  final int flex;
  final T? data;
  final Alignment alignment;
  final bool haveColumn;
  FlexRowTableData({
    this.haveColumn = true,
    this.flex = 1,
    this.data,
    this.alignment = Alignment.centerLeft,
  });
}
