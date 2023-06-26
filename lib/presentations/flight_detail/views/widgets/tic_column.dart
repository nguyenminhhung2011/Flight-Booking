import 'package:flight_booking/domain/entities/ticket/ticket.dart';
import 'package:flight_booking/domain/entities/ticket/ticket_information.dart';
import 'package:flight_booking/presentations/flight_detail/views/widgets/tic_item.dart';
import 'package:flutter/material.dart';

import '../../../list_flight/views/widgets/dot_custom.dart';

class TicColumn extends StatelessWidget {
  final String header;
  final Color color;
  final List<Ticket> tics;
  final TicketInformation ticInformation;
  const TicColumn({
    super.key,
    required this.header,
    required this.color,
    required this.tics,
    required this.ticInformation,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
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
          ...tics.map((e) => TicItem(tic: e, ticInformation: ticInformation))
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
