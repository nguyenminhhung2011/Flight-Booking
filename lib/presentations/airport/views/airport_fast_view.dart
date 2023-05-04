import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flight_booking/core/config/color_config.dart';
import 'package:flight_booking/domain/entities/flight/flight.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../../../generated/l10n.dart';
import '../bloc/airport_bloc.dart';

enum AirportViewEnum {
  airportStart,
  airportEnd;

  bool get isAirportStart => this == AirportViewEnum.airportStart;
}

class AirportFastView extends StatefulWidget {
  final AirportState state;
  const AirportFastView({super.key, required this.state});

  @override
  State<AirportFastView> createState() => _AirportFastViewState();
}

class _AirportFastViewState extends State<AirportFastView> {
  PageController pageController =
      PageController(initialPage: 0, keepPage: true);
  void onButtonTape(int index) {
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 600),
        curve: Curves.fastOutSlowIn);
  }

  void pageViewChange() {
    context.read<AirportBloc>().add(const AirportEvent.changePageView());
    onButtonTape(widget.state.data.pageView);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
      padding: const EdgeInsets.all(15.0),
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Theme.of(context).cardColor,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor.withOpacity(0.1),
            blurRadius: 10.0,
          )
        ],
      ),
      child: ListView(
        children: [
          Text(
            S.of(context).airportOverview,
            maxLines: 1,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(
            width: double.infinity,
            height: 420,
            child: PageView.builder(
              controller: pageController,
              itemCount: 2,
              itemBuilder: (context, index) => const [
                AllFlightsInAirportView(view: AirportViewEnum.airportStart),
                AllFlightsInAirportView(view: AirportViewEnum.airportEnd),
              ][index],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 10,
                width: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) => buildIndicator(
                      widget.state.data.pageView == index,
                      MediaQuery.of(context).size),
                ),
              ),
              IconButton(
                onPressed: pageViewChange,
                icon: const Icon(
                  Icons.change_circle,
                  size: 18,
                  color: CommonColor.primaryColor,
                ),
              )
            ],
          ),
          Text(
            S.of(context).commingFlights,
            maxLines: 1,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ].expand((element) => [element, const SizedBox(height: 5.0)]).toList()
          ..removeLast(),
      ),
    );
  }

  Widget buildIndicator(bool isActive, Size size) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 10,
      width: isActive ? 30 : 10,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        //container with border
        color: isActive
            ? CommonColor.primaryColor
            : CommonColor.primaryColor.withOpacity(0.2),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        boxShadow: const [
          BoxShadow(color: Colors.black38, offset: Offset(2, 3), blurRadius: 3)
        ],
      ),
    );
  }
}

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
                height: 400,
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
        color: CommonColor.primaryColor,
        linePosition: LinePosition.right,
      ),
    );
  }
}

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
        color: CommonColor.primaryColor,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            DateFormat().add_jm().format(time),
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
