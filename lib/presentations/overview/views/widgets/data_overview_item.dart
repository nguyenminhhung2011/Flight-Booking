import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/components/widgets/card_custom.dart';

class DataOverviewItem extends StatelessWidget {
  final String headerText;
  final int data;
  final int oldData;
  const DataOverviewItem({
    super.key,
    required this.headerText,
    required this.data,
    required this.oldData,
  });

  bool get isIncrease => data > oldData;
  IconData get icon =>
      isIncrease ? Icons.arrow_upward_outlined : Icons.arrow_downward_sharp;
  double get dataChange => data > oldData ? data / oldData : oldData / data;
  Color get color =>
      isIncrease ? Colors.green.withOpacity(0.2) : Colors.red.withOpacity(0.2);

  @override
  Widget build(BuildContext context) {
    return CardCustom(
        height: 170,
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          boxShadow: const [],
          color: Colors.transparent,
          border: Border.all(width: 1.5, color: Theme.of(context).dividerColor),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              headerText,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    overflow: TextOverflow.ellipsis,
                  ),
              maxLines: 1,
            ),
            const Spacer(),
            Text(
              data.toString(),
              maxLines: 1,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.ellipsis,
                  ),
            ),
            const SizedBox(height: 10.0),
            CardCustom(
              isShowWidth: false,
              isShowHeight: false,
              margin: const EdgeInsets.all(0.0),
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 10.0,
              ),
              decoration: BoxDecoration(
                boxShadow: const [],
                borderRadius: BorderRadius.circular(15.0),
                color: color,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(icon, size: 16.0),
                  Expanded(
                    child: Text(
                      dataChange.toString(),
                      maxLines: 1,
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            fontWeight: FontWeight.bold,
                            overflow: TextOverflow.ellipsis,
                          ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
