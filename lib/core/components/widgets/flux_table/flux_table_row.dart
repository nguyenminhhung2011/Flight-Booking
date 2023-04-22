import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FluxTableRow<T> extends StatelessWidget {
  const FluxTableRow({
    super.key,
    required this.itemBuilder,
    required this.rowData,
    this.rowDecoration,
    this.padding,
  });
  final List<FlexRowTableData> rowData;
  final Widget Function(dynamic data, int columnIndex) itemBuilder;
  final BoxDecoration? rowDecoration;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey, width: 0.2),
        borderRadius: BorderRadius.circular(5),
      ).copyWith(
        color: rowDecoration?.color,
        backgroundBlendMode: rowDecoration?.backgroundBlendMode,
        border: rowDecoration?.border,
        borderRadius: rowDecoration?.borderRadius,
        boxShadow: rowDecoration?.boxShadow,
        gradient: rowDecoration?.gradient,
        image: rowDecoration?.image,
        shape: rowDecoration?.shape,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (int i = 0; i < rowData.length; i++)
            Expanded(
              flex: rowData.elementAt(i).flex,
              child: Align(
                alignment: Alignment.topLeft,
                child: itemBuilder(rowData.elementAt(i).data, i),
              ),
            ),
        ],
      ),
    );
  }
}

class FlexRowTableData<T> {
  final int flex;
  final T data;
  final Alignment alignment;
  FlexRowTableData({
    required this.flex,
    required this.data,
    this.alignment = Alignment.center,
  });
}
