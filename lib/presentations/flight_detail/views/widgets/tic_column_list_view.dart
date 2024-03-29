import 'package:flight_booking/core/components/enum/tic_type_enum.dart';
import 'package:flight_booking/presentations/flight_detail/views/widgets/tic_item.dart';
import 'package:flutter/material.dart';

import '../../../../domain/entities/ticket/ticket.dart';
import '../../../../domain/entities/ticket/ticket_information.dart';
import '../../../list_flight/views/widgets/dot_custom.dart';

class TicColumnListView extends StatelessWidget {
  final TicTypeEnum ticType;
  final TicketInformation ticketInformation;
  final List<Ticket> listTics;
  const TicColumnListView({
    super.key,
    required this.ticType,
    required this.ticketInformation,
    required this.listTics,
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
                color: ticType.colorType!,
                full: true,
              ),
              Text(
                ' ${ticType.displayValue}',
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
            // for (int i = 0; i < count; i++) TicItem2(color: ticType.colorType!),
            ...listTics.map((e) => TicItem2(
                  color: ticType.colorType!,
                  tic: e,
                  ticketInformation: ticketInformation,
                ))
          ]
              .expand((element) => [element, const Divider(thickness: 0.5)])
              .toList(),
        )
      ],
    );
  }
}
