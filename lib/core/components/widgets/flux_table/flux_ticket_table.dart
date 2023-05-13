import "package:flight_booking/core/components/widgets/flux_table/flux_table_row.dart";
import "package:flutter/material.dart";

class FluxTicketTable<T> extends StatelessWidget {
  const FluxTicketTable({
    super.key,
    this.tableBackgroundColor,
    this.rowBackgroundColor,
    required this.data,
    required this.rowBuilder,
    required this.titleRow,
    this.padding,
    this.rowSeparatorBuilder,
    this.distanceRow,
    this.scrollController,
    this.expand = true,
    this.isSelectable = false,
    this.onTap,
    this.rowSelectedDecoration,
    this.currentIndex,
  });

  final int? currentIndex;
  final bool isSelectable;
  final Color? tableBackgroundColor;
  final Color? rowBackgroundColor;
  final List<T> data;
  final Widget Function(T data) rowBuilder;
  final Widget titleRow;
  final EdgeInsetsGeometry? padding;
  final Widget Function(BuildContext, int)? rowSeparatorBuilder;
  final double? distanceRow;
  final ScrollController? scrollController;
  final bool expand;
  final BoxDecoration? rowSelectedDecoration;
  final Function(int index)? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueGrey, width: 0.1),
        borderRadius: BorderRadius.circular(10),
        color: tableBackgroundColor,
      ),
      child: Column(
        children: [
          titleRow,
          const SizedBox(height: 10),
          Flexible(
            fit: FlexFit.tight,
            child: ListView.separated(
              shrinkWrap: !expand,
              controller: scrollController,
              separatorBuilder: (context, index) {
                if (rowSeparatorBuilder != null) {
                  return rowSeparatorBuilder!(context, index);
                } else {
                  return SizedBox(height: distanceRow ?? 5);
                }
              },
              itemCount: data.length,
              itemBuilder: (context, index) {
                var result = rowBuilder(data.elementAt(index));

                if (isSelectable &&
                    currentIndex != null &&
                    result is FluxTableRow &&
                    currentIndex == index) {
                  if (result.rowDecoration != null) {
                    result = result.copyWith(
                        rowDecoration: result.rowDecoration?.copyWith(
                      color: rowSelectedDecoration?.color,
                      backgroundBlendMode:
                          rowSelectedDecoration?.backgroundBlendMode,
                      border: rowSelectedDecoration?.border,
                      borderRadius: rowSelectedDecoration?.borderRadius,
                      boxShadow: rowSelectedDecoration?.boxShadow,
                      gradient: rowSelectedDecoration?.gradient,
                      image: rowSelectedDecoration?.image,
                      shape: rowSelectedDecoration?.shape,
                    ));
                  } else {
                    result =
                        result.copyWith(rowDecoration: rowSelectedDecoration);
                  }
                }
                return InkWell(
                    onTap: () {
                      if (onTap != null) {
                        onTap!(index);
                      }
                    },
                    child: result);
              },
            ),
          ),
        ],
      ),
    );
  }
}
