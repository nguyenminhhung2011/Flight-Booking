import 'package:collection/collection.dart';
import 'package:flight_booking/core/components/widgets/card_custom.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/components/widgets/swiper_custom.dart';
import 'package:flight_booking/core/constant/constant.dart';
import 'package:flight_booking/domain/entities/airport/airport.dart';
import 'package:flight_booking/domain/entities/flight/flight.dart';
import 'package:flight_booking/presentations/airport/views/wdigets/all_flights_in_airport_view.dart';
import 'package:flight_booking/presentations/airport/views/wdigets/upcoming_flight_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../generated/l10n.dart';
import '../../list_flight/views/widgets/dot_custom.dart';
import '../bloc/airport_bloc.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

enum AirportViewEnum {
  departure,
  arrival;

  bool get isDeparture => this == AirportViewEnum.departure;
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
  AirportBloc get _bloc => context.read<AirportBloc>();
  Map<String, List<Flight>> get _flightsDeparture =>
      _bloc.data.flightDepartures;
  Map<String, List<Flight>> get _flightsArrival => _bloc.data.flightArrival;
  Airport? get _airportPreview => _bloc.data.airportView;

  void onButtonTape(int index) {
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 600),
      curve: Curves.fastOutSlowIn,
    );
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
      child: widget.state.isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView(
              children: [
              const SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15.0, vertical: 10.0),
                child: Text(
                  S.of(context).airportOverview,
                  maxLines: 1,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              if (_airportPreview != null)
                Container(
                  padding: const EdgeInsets.all(10.0),
                  margin: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Theme.of(context).cardColor,
                    border: Border.all(
                        width: 1, color: Theme.of(context).primaryColor),
                  ),
                  child: Column(
                    children: [
                      ...<String>[
                        _airportPreview!.id.toString(),
                        _airportPreview!.name,
                        _airportPreview!.description,
                        _airportPreview!.location,
                        '${_airportPreview!.openTime.hour}h :${_airportPreview!.openTime.minute}m',
                        '${_airportPreview!.closeTime.hour}h :${_airportPreview!.closeTime.minute}m'
                      ]
                          .mapIndexed<Widget>(
                            (index, e) => Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 5.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  DotCustom(
                                    color: Theme.of(context).primaryColor,
                                    full: true,
                                    radius: 5.0,
                                  ),
                                  const SizedBox(width: 5.0),
                                  Text(
                                    headerAirport[index],
                                    style: context.titleSmall.copyWith(
                                        fontWeight: FontWeight.w300,
                                        color: Theme.of(context).hintColor),
                                  ),
                                  const SizedBox(width: 10.0),
                                  Expanded(
                                    child: Text(
                                      e,
                                      textAlign: TextAlign.end,
                                      style: context.titleMedium.copyWith(
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                          .toList(),
                    ],
                  ),
                ),
              SwiperCustom(
                height: 260,
                itemCount: 10,
                autoPlay: true,
                spacingItem: 10.0,
                itemBuilder: (index) => const CardCustom(
                  margin: EdgeInsets.all(0.0),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://www.travelandleisure.com/thmb/qUyMl5D6VbtM9hxxtBlFMAY5cCU=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/portland-international-airport-00-USAIRPORTSWB21-35b7a73d8c0c4a86a9f9e5b27a7c3bbe.jpg'),
                  )),
                ),
                swiperLayout: SwiperLayout.DEFAULT,
              ),
              SizedBox(
                width: double.infinity,
                height: 400,
                child: PageView.builder(
                  controller: pageController,
                  itemCount: 2,
                  itemBuilder: (context, index) => [
                    AllFlightsInAirportView(
                      view: AirportViewEnum.departure,
                      flights: _flightsDeparture,
                      header: S.of(context).departureFlight,
                    ),
                    AllFlightsInAirportView(
                      view: AirportViewEnum.arrival,
                      flights: _flightsArrival,
                      header: S.of(context).arrivalFlight,
                    ),
                  ][index],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
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
                      icon: Icon(
                        Icons.change_circle,
                        size: 18,
                        color: Theme.of(context).primaryColor,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  'Coming ${S.of(context).departureFlight}',
                  maxLines: 1,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              ..._flightsDeparture.entries
                  .map((e) => SizedBox(
                        child: Column(children: [
                          ...e.value.map(
                            (item) => (item.timeStart.isAfter(DateTime.now()))
                                ? UpcomingFlightWdiget(flight: item)
                                : const SizedBox(),
                          )
                        ]),
                      ))
                  .toList(),
              const SizedBox(height: 10.0)
            ]
                  .expand((element) => [element, const SizedBox(height: 5.0)])
                  .toList()),
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
            ? Theme.of(context).primaryColor
            : Theme.of(context).primaryColor.withOpacity(0.2),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        boxShadow: const [
          BoxShadow(color: Colors.black38, offset: Offset(2, 3), blurRadius: 3)
        ],
      ),
    );
  }
}
