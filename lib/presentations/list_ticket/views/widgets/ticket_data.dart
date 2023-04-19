import 'package:flight_booking/presentations/list_ticket/views/widgets/ticket_details_widget.dart';
import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';

class TicketData extends StatelessWidget {
  const TicketData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Wrap(
          children: [
            Container(
              width: 120.0,
              height: 25.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                border: Border.all(width: 1.0, color: Colors.green),
              ),
              child: Center(
                child: Text(
                  S.of(context).businessClass,
                  style: const TextStyle(color: Colors.green),
                ),
              ),
            ),
            Row(
              children: [
                Text(
                  'LHR',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Icon(
                    Icons.flight_takeoff,
                    color: Colors.pink,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'ISL',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Text(
            S.of(context).flightTickets,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TicketDetailsWidget(
                  firstTitle: S.of(context).passengers,
                  firstDesc: 'Hafiz M Mujahid',
                  secondTitle: S.of(context).date,
                  secondDesc: '28-08-2022'),
              TicketDetailsWidget(
                  firstTitle: S.of(context).flight,
                  firstDesc: '76836A45',
                  secondTitle: S.of(context).gate,
                  secondDesc: '66B'),
              TicketDetailsWidget(
                firstTitle: S.of(context).class1,
                firstDesc: 'Business',
                secondTitle: S.of(context).seat,
                secondDesc: '21B',
              ),
            ],
          ),
        ),
        const Spacer(),
        Text(
          '0000 +9230 2884 5163',
          textAlign: TextAlign.center,
          maxLines: 1,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(height: 30),
        Text(
          'Developer: minhunsocute',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleSmall,
        )
      ],
    );
  }
}
