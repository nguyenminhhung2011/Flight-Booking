import 'package:flight_booking/presentations/flight_detail/views/widgets/tic_item.dart';
import 'package:flutter/material.dart';

import '../../../list_flight/views/widgets/dot_custom.dart';

class TicColumnListView extends StatelessWidget {
  final String tit;
  final Color color;
  final int count;

  const TicColumnListView({
    super.key,
    required this.tit,
    required this.color,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Theme.of(context).cardColor,
          ),
          child: Row(
            children: [
              DotCustom(
                color: color,
                full: true,
              ),
              Text(
                ' $tit',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10.0),
        Column(
          children: [
            for (int i = 0; i < count; i++) TicItem2(color: color),
          ]
              .expand((element) => [element, const Divider(thickness: 0.5)])
              .toList(),
        )
      ],
    );
  }
}
