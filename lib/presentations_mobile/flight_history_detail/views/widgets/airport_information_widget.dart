import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';

class AirportInformationWidget extends StatefulWidget {
  final String airportName;
  final bool isStartAirport;
  final String place;
  final String airportCode;
  const AirportInformationWidget({
    super.key,
    required this.airportName,
    required this.isStartAirport,
    required this.place,
    required this.airportCode,
  });

  @override
  State<AirportInformationWidget> createState() =>
      _AirportInformationWidgetState();
}

class _AirportInformationWidgetState extends State<AirportInformationWidget> {
  Color get colorIcon => widget.isStartAirport ? Colors.green : Colors.red;

  String get typeAirport => widget.isStartAirport
      ? S.of(context).airportStart
      : S.of(context).airportFinish;

  IconData get icon =>
      widget.isStartAirport ? Icons.flight_takeoff : Icons.flight_land_sharp;

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon, color: colorIcon),
            const SizedBox(width: 5.0),
            Text(
              typeAirport,
              style: context.titleSmall.copyWith(
                color: Theme.of(context).hintColor,
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: primaryColor.withOpacity(0.1),
              ),
              child: Text(
                widget.airportCode,
                style: context.titleSmall.copyWith(
                  color: primaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(width: 5.0),
            Text(
              widget.airportName,
              style: context.titleMedium,
            )
          ],
        ),
        Text(
          widget.place,
          style: context.titleMedium.copyWith(
            color: Theme.of(context).hintColor,
          ),
        )
      ].expand((element) => [element, const SizedBox(height: 10.0)]).toList()
        ..removeLast(),
    );
  }
}
