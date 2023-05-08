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
  });
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
              itemBuilder: (context, index) =>
                  rowBuilder(data.elementAt(index)),
            ),
          ),
        ],
      ),
    );
  }
}
