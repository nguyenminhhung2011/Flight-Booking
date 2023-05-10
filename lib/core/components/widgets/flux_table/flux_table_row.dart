import 'package:flutter/material.dart';

class FluxTableRow<T> extends StatelessWidget {
  const FluxTableRow({
    super.key,
    required this.itemBuilder,
    required this.rowData,
    this.rowDecoration,
    this.padding,
    this.onTap,
    this.margin,
  });
  final Function()? onTap;
  final List<FlexRowTableData> rowData;
  final Widget Function(dynamic data, int columnIndex) itemBuilder;
  final BoxDecoration? rowDecoration;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: padding ?? const EdgeInsets.symmetric(vertical: 10),
        margin: margin,
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          border: Border.all(color: Theme.of(context).canvasColor, width: 0.2),
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
      ),
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
