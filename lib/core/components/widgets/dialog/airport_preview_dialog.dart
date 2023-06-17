import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/presentations/list_flight/views/widgets/dot_custom.dart';
import 'package:flutter/material.dart';

import '../../../../domain/entities/airport/airport.dart';
import '../../../../generated/l10n.dart';

class AirportPreviewDialog extends StatelessWidget {
  final Airport airport;
  const AirportPreviewDialog({super.key, required this.airport});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 459.0,
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Theme.of(context).cardColor,
        border: Border.all(width: 1, color: Theme.of(context).primaryColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            S.of(context).airportOverview,
            style: context.titleMedium.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10.0),
          ...<String>[
            airport.id.toString(),
            airport.name,
            airport.description,
            airport.location,
            '${airport.openTime.hour}h :${airport.openTime.minute}m',
            '${airport.closeTime.hour}h :${airport.closeTime.minute}m'
          ]
              .map(
                (e) => Row(
                  children: [
                    DotCustom(
                      color: Theme.of(context).primaryColor,
                      full: true,
                      radius: 5.0,
                    ),
                    const SizedBox(width: 10.0),
                    Expanded(
                      child: Text(
                        e,
                        style: context.titleSmall
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              )
              .expand((element) => [element, const SizedBox(height: 5)]),
        ],
      ),
    );
  }
}
