import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';

import '../../../../domain/entities/flight/flight.dart';
import '../airport_fast_view.dart';
import 'flightIn_airport_wdiget.dart';

class AllFlightsInAirportView extends StatefulWidget {
  final AirportViewEnum view;
  const AllFlightsInAirportView({
    super.key,
    required this.view,
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
                height: 360,
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
                    for (int i = 0; i < 3; i++)
                      FlightInAirportWdiget(
                        width: minWidth,
                        listFlight: [
                          Flight(
                            id: 'DA-0123',
                            idStartAirport: 'Ha Noi',
                            idComeAirport: 'Ho Chi Minh',
                            timeStart: DateTime.now(),
                            timeEnd: DateTime.now(),
                            noCustomer: 20,
                          ),
                          if (i < 1)
                            Flight(
                              id: 'DA-0124',
                              idStartAirport: 'Nha Trang',
                              idComeAirport: 'Ho Chi Minh',
                              timeStart: DateTime.now(),
                              timeEnd: DateTime.now(),
                              noCustomer: 20,
                            ),
                          if (i < 2)
                            Flight(
                              id: 'DA-0123',
                              idStartAirport: 'Da Nang',
                              idComeAirport: 'Ho Chi Minh',
                              timeStart: DateTime.now(),
                              timeEnd: DateTime.now(),
                              noCustomer: 20,
                            ),
                        ],
                        time: DateTime.now().add(Duration(minutes: i * 10)),
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
