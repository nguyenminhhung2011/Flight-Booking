import 'package:flutter/material.dart';
import 'package:ticket_widget/ticket_widget.dart';

import '../../../../core/components/enum/tic_type_enum.dart';
import '../../../../generated/l10n.dart';
import '../../../list_flight/views/widgets/flight_details_widget.dart';

class FastViewTic extends StatelessWidget {
  final TicTypeEnum ticType;
  const FastViewTic({
    super.key,
    required this.ticType,
  });

  @override
  Widget build(BuildContext context) {
    return TicketWidget(
      width: double.infinity,
      height: 300,
      isCornerRounded: true,
      color: Theme.of(context).cardColor,
      padding: const EdgeInsets.all(20),
      shadow: [
        BoxShadow(
          color: Theme.of(context).shadowColor.withOpacity(0.1),
          blurRadius: 5.0,
        )
      ],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(width: 1, color: Colors.amber),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.star, color: Colors.amber, size: 14.0),
                    Text(
                      ' ${ticType.displayValue}',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.amber,
                          ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Text(
                  'DA-403',
                  textAlign: TextAlign.right,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          FlightDetailsWidget(
              firstTitle: S.of(context).name,
              firstDesc: 'Nguyen Minh Hung',
              secondTitle: S.of(context).gender,
              secondDesc: S.of(context).boy),
          FlightDetailsWidget(
              firstTitle: S.of(context).phoneNumber,
              firstDesc: '+84.4340040340430',
              secondTitle: S.of(context).luggage,
              secondDesc: '+4'),
          const Spacer(),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 60.0,
                  child: Image.asset(
                    'assets/images/bardcode.png',
                    fit: BoxFit.cover,
                    color: Theme.of(context).disabledColor,
                  ),
                ),
              ),
              const SizedBox(width: 5.0),
              Container(
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Theme.of(context).primaryColor,
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).shadowColor.withOpacity(0.1),
                      blurRadius: 10.0,
                    )
                  ],
                ),
                child: Center(
                  child: Text(
                    'B10',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              )
            ],
          )
        ]
            .expand((element) => [
                  element,
                  const SizedBox(
                    height: 10.0,
                  )
                ])
            .toList()
          ..removeLast(),
      ),
    );
  }
}
