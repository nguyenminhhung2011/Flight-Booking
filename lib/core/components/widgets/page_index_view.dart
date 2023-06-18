import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flutter/material.dart';

class PageIndexView extends StatelessWidget {
  final int currentPage;
  final int totalPage;
  final Function(int) selected;
  const PageIndexView({
    super.key,
    required this.currentPage,
    required this.totalPage,
    required this.selected,
  });

  int get right => (currentPage + 5) < totalPage ? currentPage + 5 : totalPage;
  int get left => currentPage - (10 - (right - (currentPage + 1))) + 2;
  int get leftField => left < 1 ? 1 : left;
  int get rightField => leftField != 1
      ? right
      : right == totalPage
          ? totalPage
          : 10;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (totalPage < 10)
          for (int i = 1; i <= totalPage; i++) ...[
            _textButton(i, context),
            const SizedBox(width: 8.0)
          ]
        else ...[
          for (int i = leftField; i <= currentPage; i++) ...[
            _textButton(i, context),
            const SizedBox(width: 8.0)
          ],
          for (int i = currentPage + 1; i <= rightField; i++) ...[
            _textButton(i, context),
            const SizedBox(width: 8.0)
          ],
        ]
      ],
    );
  }

  InkWell _textButton(int i, BuildContext context) {
    return InkWell(
      onTap: () => selected.call(i - 1),
      child: Text(
        i.toString(),
        style: context.titleSmall.copyWith(
          fontWeight: FontWeight.w600,
          color:
              ((i - 1) == currentPage) ? Theme.of(context).primaryColor : null,
        ),
      ),
    );
  }
}
