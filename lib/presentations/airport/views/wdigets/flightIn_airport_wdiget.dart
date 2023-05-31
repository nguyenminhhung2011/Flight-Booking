// ignore_for_file: file_names

import 'package:flight_booking/core/constant/handle_time.dart';
import 'package:flutter/material.dart';

import '../../../../domain/entities/flight/flight.dart';

class FlightInAirportWdiget extends StatelessWidget {
  final double? width;
  final List<Flight> listFlight;
  final DateTime time;
  const FlightInAirportWdiget({
    super.key,
    this.width,
    required this.listFlight,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.only(bottom: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Theme.of(context).primaryColor,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            getjmFormat(time),
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(color: Colors.white),
          ),
          const SizedBox(width: 10.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: listFlight.map((e) => _dataRow(context, e)).toList(),
            ),
          ),
          const Icon(
            Icons.airplane_ticket,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  RichText _dataRow(BuildContext context, Flight flight) {
    return RichText(
      maxLines: 1,
      text: TextSpan(
        style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: Colors.white,
            ),
        children: [
          TextSpan(
            text: '${flight.id} ',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: '(${flight.idStartAirport})',
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
