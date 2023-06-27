import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flutter/material.dart';

class PageIndexView extends StatefulWidget {
  final int currentPage;
  final int totalPage;
  final Function(int) selected;
  const PageIndexView({
    super.key,
    required this.currentPage,
    required this.totalPage,
    required this.selected,
  });

  @override
  State<PageIndexView> createState() => _PageIndexViewState();
}

class _PageIndexViewState extends State<PageIndexView> {
  int get right => (widget.currentPage + 5) < widget.totalPage
      ? widget.currentPage + 5
      : widget.totalPage;

  int get left =>
      widget.currentPage - (10 - (right - (widget.currentPage + 1))) + 2;

  int get leftField => left < 1 ? 1 : left;

  int get rightField => leftField != 1
      ? right
      : right == widget.totalPage
          ? widget.totalPage
          : 10;

  @override
  Widget build(BuildContext context) {
    print(widget.currentPage);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (widget.totalPage < 10)
          for (int i = 1; i <= widget.totalPage; i++) ...[
            _textButton(i, context),
            const SizedBox(width: 8.0)
          ]
        else ...[
          for (int i = leftField; i <= widget.currentPage; i++) ...[
            _textButton(i, context),
            const SizedBox(width: 8.0)
          ],
          for (int i = widget.currentPage + 1; i <= rightField; i++) ...[
            _textButton(i, context),
            const SizedBox(width: 8.0)
          ],
        ]
      ],
    );
  }

  InkWell _textButton(int i, BuildContext context) {
    return InkWell(
      onTap: () => widget.selected.call(i - 1),
      child: Text(
        i.toString(),
        style: context.titleSmall.copyWith(
          fontWeight: FontWeight.w600,
          color: ((i - 1) == widget.currentPage)
              ? Theme.of(context).primaryColor
              : null,
        ),
      ),
    );
  }
}
