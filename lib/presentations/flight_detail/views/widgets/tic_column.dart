import 'package:flight_booking/presentations/flight_detail/views/widgets/tic_item.dart';
import 'package:flutter/material.dart';

import '../../../list_flight/views/widgets/dot_custom.dart';

class TicColumn extends StatelessWidget {
  final String header;
  final int count;
  final Color color;
  const TicColumn({
    super.key,
    required this.header,
    required this.count,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: Column(
        children: [
          Row(
            children: [
              DotCustom(
                color: color,
                full: true,
              ),
              Text(' $header'),
              const Spacer(),
              InkWell(
                onTap: () {},
                child: const Icon(Icons.more_horiz),
              )
            ],
          ),
          for (int i = 0; i < count; i++) const TicItem(),
        ]
            .expand((element) => [
                  element,
                  const SizedBox(
                    height: 10.0,
                  )
                ])
            .toList(),
      ),
    );
  }
}
