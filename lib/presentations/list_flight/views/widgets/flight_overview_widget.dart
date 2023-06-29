import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';

import '../../../../core/components/enum/tic_type_enum.dart';
import '../../../../core/constant/handle_time.dart';
import '../../../../domain/entities/flight/flight.dart';
import '../../../../domain/entities/ticket/ticket_information.dart';
import '../../../../generated/l10n.dart';
import '../flight_fast_view.dart';
import 'flight_details_widget.dart';

class FlightOverviewWidget extends StatelessWidget {
  const FlightOverviewWidget({
    super.key,
    required Flight? currentFlight,
    required List<TicketInformation> ticInformation,
  })  : _currentFlight = currentFlight,
        _ticInformation = ticInformation;

  final Flight? _currentFlight;
  final List<TicketInformation> _ticInformation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor.withOpacity(0.1),
            blurRadius: 5.0,
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            S.of(context).overview,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          FlightDetailsWidget(
            firstTitle: S.of(context).id,
            firstDesc: '${S.of(context).flight} ${_currentFlight!.id}',
            secondTitle: S.of(context).airport,
            secondDesc: _currentFlight!.airline.airlineName,
          ),
          FlightDetailsWidget(
            firstTitle: _currentFlight!.departureAirport.location,
            firstDesc: getYmdHmFormat(_currentFlight!.timeStart),
            secondTitle: _currentFlight!.arrivalAirport.location,
            secondDesc: getYmdHmFormat(_currentFlight!.timeEnd),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 10.0,
            ),
            width: double.infinity,
            height: 1,
            decoration: DottedDecoration(
              shape: Shape.line,
              linePosition: LinePosition.bottom,
            ),
          ),
          if (_ticInformation.isNotEmpty) ...[
            ..._ticInformation.map((e) => TicItemColorView(
                  ticType: TicTypeEnum.fromInt(e.id.ticketType),
                  price: e.price,
                ))
          ],
        ],
      ),
    );
  }
}
