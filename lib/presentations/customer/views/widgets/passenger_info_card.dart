import 'package:flight_booking/core/components/widgets/extension/interger_extension.dart';
import 'package:flight_booking/core/config/common_ui_config.dart';
import 'package:flight_booking/core/constant/handle_time.dart';
import 'package:flutter/material.dart';

import '../../../../core/components/enum/tic_type_enum.dart';
import '../../../../domain/entities/ticket/ticket.dart';
import '../../../../domain/entities/ticket/ticket_information.dart';
import '../../../../generated/l10n.dart';

class PassengerInfoCard extends StatelessWidget {
  final Ticket ticket;
  final TicketInformation? ticInformation;
  const PassengerInfoCard({
    super.key,
    this.ticInformation,
    required this.ticket,
  });

  TicTypeEnum get typeTic => ticket.type.ticClass;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.4,
          color: Theme.of(context).dividerColor.withOpacity(0.4),
        ),
        borderRadius: CommonAppUIConfig.primaryRadiusBorder,
      ),
      padding: const EdgeInsets.all(5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            dense: true,
            leading: FittedBox(
              child: Text(
                ticket.name,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            trailing: FittedBox(
              child: Container(
                // height: 25.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  border: Border.all(
                    width: 1.0,
                    color: typeTic.colorType ?? Colors.transparent,
                  ),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
                child: Center(
                  child: Text(
                    //🐼Update
                    typeTic.displayValue,
                    style: TextStyle(color: typeTic.colorType),
                  ),
                ),
              ),
            ),
          ),
          Divider(
            color: Theme.of(context).dividerColor,
            thickness: 0.5,
            height: 15,
          ),
          ListTile(
            minVerticalPadding: 0,
            leading: Text(
              S.of(context).seat,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).dividerColor.withOpacity(0.4),
                  ),
            ),
            //🐼Update
            trailing: Text(
              '${ticInformation?.seatHeader ?? 'A'} - ${ticket.seat}',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).dividerColor.withOpacity(0.4),
                  ),
            ),
          ),
          Divider(
            color: Theme.of(context).dividerColor,
            thickness: 0.5,
            height: 15,
          ),
          ListTile(
            minVerticalPadding: 0,
            leading: Text(
              S.of(context).dateBorn,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).dividerColor.withOpacity(0.4),
                  ),
            ),
            trailing: Text(
              getYmdFormat(ticket.dateBorn),
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).dividerColor.withOpacity(0.4),
                  ),
            ),
          ),
          Divider(
            color: Theme.of(context).dividerColor,
            thickness: 0.5,
            height: 15,
          ),
          ListTile(
            minVerticalPadding: 0,
            dense: true,
            leading: Text(
              S.of(context).gender,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).dividerColor.withOpacity(0.4),
                  ),
            ),
            trailing: Text(
              ticket.gender,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).dividerColor.withOpacity(0.4),
                  ),
            ),
          ),
          Divider(
            color: Theme.of(context).dividerColor,
            thickness: 0.5,
            height: 15,
          ),
          ListTile(
            minVerticalPadding: 0,
            dense: true,
            leading: Text(
              "Checked Baggage Allowance",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).dividerColor.withOpacity(0.4),
                  ),
            ),
            trailing: Text(
              "${ticket.luggage} KG",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).dividerColor.withOpacity(0.4),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
