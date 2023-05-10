import 'package:flight_booking/core/components/widgets/swiper_custom.dart';
import 'package:flight_booking/core/config/color_config.dart';
import 'package:flight_booking/domain/entities/flight/flight.dart';
import 'package:flight_booking/presentations/airport/views/wdigets/all_flights_in_airport_view.dart';
import 'package:flight_booking/presentations/airport/views/wdigets/upcoming_flight_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../generated/l10n.dart';
import '../bloc/airport_bloc.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

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
      width: 500,
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
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            child: Text(
              S.of(context).airportOverview,
              maxLines: 1,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          SwiperCustom(
            height: 300,
            itemCount: 10,
            autoPlay: true,
            spacingItem: 10.0,
            itemBuilder: (index) => Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context).shadowColor.withOpacity(0.1),
                  ),
                ],
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://www.travelandleisure.com/thmb/qUyMl5D6VbtM9hxxtBlFMAY5cCU=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/portland-international-airport-00-USAIRPORTSWB21-35b7a73d8c0c4a86a9f9e5b27a7c3bbe.jpg',
                  ),
                ),
              ),
            ),
            swiperLayout: SwiperLayout.DEFAULT,
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
                  icon: const Icon(
                    Icons.change_circle,
                    size: 18,
                    color: CommonColor.primaryColor,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              S.of(context).commingFlights,
              maxLines: 1,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          for (int i = 0; i < 6; i++)
            UpcomingFlightWdiget(
              flight: Flight(
                id: 'DX-3135',
                idStartAirport: 'Hai Phong',
                idComeAirport: 'Ha Noi',
                timeStart: DateTime.now(),
                timeEnd: DateTime.now(),
                noCustomer: 100,
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
