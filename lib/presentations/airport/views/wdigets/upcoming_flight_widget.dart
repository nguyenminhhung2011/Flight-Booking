import 'package:flight_booking/core/constant/handle_time.dart';
import 'package:flutter/material.dart';

import '../../../../core/config/color_config.dart';
import '../../../../domain/entities/flight/flight.dart';
import '../../../../generated/l10n.dart';

class UpcomingFlightWdiget extends StatelessWidget {
  final Flight flight;
  const UpcomingFlightWdiget({
    super.key,
    required this.flight,
  });

  @override
  Widget build(BuildContext context) {
    final headerStyle = TextStyle(
        fontWeight: FontWeight.w400, color: Theme.of(context).hintColor);
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Theme.of(context).cardColor,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor.withOpacity(0.1),
            blurRadius: 10.0,
          )
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Theme.of(context).primaryColor,
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).shadowColor.withOpacity(0.1),
                  blurRadius: 5.0,
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(Icons.airplane_ticket, color: Colors.white),
                const SizedBox(height: 2.0),
                Text(
                  getjmFormat(flight.timeStart),
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.titleSmall,
                    children: [
                      TextSpan(
                          text: '${S.of(context).from} ', style: headerStyle),
                      TextSpan(
                        text: flight.departureAirport.location,
                        style: const TextStyle(
                          decoration: TextDecoration.underline,
                          fontStyle: FontStyle.italic,
                        ),
                      )
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.titleSmall,
                    children: [
                      TextSpan(
                          text: '${S.of(context).to} ', style: headerStyle),
                      TextSpan(
                        text: flight.arrivalAirport.location,
                        style: const TextStyle(
                          decoration: TextDecoration.underline,
                          fontStyle: FontStyle.italic,
                        ),
                      )
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.titleSmall,
                    children: [
                      TextSpan(
                          text: '${S.of(context).customer} ',
                          style: headerStyle),
                      const TextSpan(
                        text: '30/100',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontStyle: FontStyle.italic,
                        ),
                      )
                    ],
                  ),
                )
              ]
                  .expand((element) => [element, const SizedBox(height: 5.0)])
                  .toList()
                ..removeLast(),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Text(
              'F ${flight.id}',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: CommonColor.secondaryColor),
            ),
          )
        ],
      ),
    );
  }
}
