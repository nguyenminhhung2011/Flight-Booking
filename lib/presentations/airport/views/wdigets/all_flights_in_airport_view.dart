import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flutter/material.dart';

import '../../../../domain/entities/flight/flight.dart';
import '../airport_fast_view.dart';
import 'flightIn_airport_wdiget.dart';

class AllFlightsInAirportView extends StatefulWidget {
  final AirportViewEnum view;
  final List<Flight> flights;
  final String header;
  const AllFlightsInAirportView({
    super.key,
    required this.view,
    required this.flights,
    required this.header,
  });

  @override
  State<AllFlightsInAirportView> createState() =>
      _AllFlightsInAirportViewState();
}

class _AllFlightsInAirportViewState extends State<AllFlightsInAirportView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (!widget.view.isAirportStart) _divider(),
        Expanded(
          child: LayoutBuilder(
            builder: (context, constraints) {
              double minWidth = constraints.minWidth - 20;
              return Container(
                width: double.infinity,
                height: 380,
                padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.only(left: 10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).shadowColor.withOpacity(0.3),
                        blurRadius: 10.0,
                      )
                    ],
                    color: Theme.of(context).cardColor),
                child: ListView(
                  children: [
                    //🚑 Refactor code
                    Text(
                      widget.header,
                      style: context.titleMedium.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    FlightInAirportWdiget(
                      width: minWidth,
                      listFlight: widget.flights,
                      time: DateTime.now(),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        if (widget.view.isAirportStart) _divider()
      ],
    );
  }

  Container _divider() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
      width: 1,
      height: 400.0,
      decoration: DottedDecoration(
        shape: Shape.line,
        color: Theme.of(context).primaryColor,
        linePosition: LinePosition.right,
      ),
    );
  }
}
