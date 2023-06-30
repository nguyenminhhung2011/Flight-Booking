import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/components/widgets/extension/string_extension.dart';
import 'package:flight_booking/core/components/widgets/mobile/custom_template_screen_stack_scroll.dart';
import 'package:flight_booking/core/components/widgets/mobile/flight_custom.dart';
import 'package:flight_booking/core/components/widgets/mobile/sort_button.dart';
import 'package:flight_booking/core/constant/handle_time.dart';
import 'package:flight_booking/presentations/list_flight/views/widgets/dot_custom.dart';
import 'package:flight_booking/presentations_mobile/flight_mobile_detail/notifier/fmd_notifier.dart';
import 'package:flight_booking/presentations_mobile/flight_mobile_detail/views/widgets/skelton_flight_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/components/widgets/mobile/appbar.dart';
import '../../../core/components/widgets/mobile/button_custom.dart';
import '../../../domain/entities/airport/stop_airport.dart';
import '../../../domain/entities/flight/flight.dart';
import '../../../generated/l10n.dart';
import '../../routes_mobile.dart';

class FlightDetailMobileScreen extends StatefulWidget {
  const FlightDetailMobileScreen({super.key});

  @override
  State<FlightDetailMobileScreen> createState() =>
      _FlightDetailMobileScreenState();
}

class _FlightDetailMobileScreenState extends State<FlightDetailMobileScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<FmdNotifier>(
      builder: (context, model, child) {
        final flight = model.flight;
        final duration = durationBetweenDate(flight.timeStart, flight.timeEnd);
        final textDuration =
            '${duration.inHours}h ${duration.inMinutes - duration.inHours * 60}';

        return CustomTemplateScreenStackScroll(
          bottomSheet: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
            child: ButtonCustom(
              height: 50,
              child: Text(S.of(context).bookingTime),
              onPress: () =>
                  context.openListPageWithRoute(RoutesMobile.selectScott),
            ),
          ),
          color: Theme.of(context).primaryColor,
          appbar: AppbarCustom(
            leading: IconButton(
              onPressed: () => context.pop(),
              icon: const Icon(Icons.arrow_back),
            ),
            backgroundColor: Colors.transparent,
            isCenterTitle: true,
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert_rounded),
              )
            ],
            title: [
              Text(
                S.of(context).flightDetail,
                style: context.headerAppBarTextStyle,
              ),
            ],
          ),
          children: [
            SliverList(
              delegate: SliverChildListDelegate(
                <Widget>[
                  if (model.loading)
                    const SkeltonFlightDetail()
                  else
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 5.0),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(24.0),
                            bottom: Radius.circular(24.0)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CardInformation(
                              context: context,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      SortButton(
                                        title: getYmdFormat(flight.timeStart),
                                        icon: CupertinoIcons.calendar,
                                        radius: 20.0,
                                        onPress: () {},
                                      ),
                                      const SizedBox(width: 10.0),
                                      SortButton(
                                        title: textDuration,
                                        icon: CupertinoIcons.time,
                                        radius: 20.0,
                                        onPress: () {},
                                      )
                                    ],
                                  ),
                                  Container(
                                    height: 0.5,
                                    width: double.infinity,
                                    decoration: DottedDecoration(
                                      linePosition: LinePosition.bottom,
                                      color: Theme.of(context).dividerColor,
                                    ),
                                  ),
                                  _airlinesInformation(context, flight),
                                  StartAndComePlace(
                                    startPlace: flight
                                        .departureAirport.location.subString,
                                    sCode: flight.departureAirport.code,
                                    comePlace: flight
                                        .arrivalAirport.location.subString,
                                    cCode: flight.arrivalAirport.code,
                                  ),
                                  TimeStartAndFinish(
                                    timeStart: flight.timeStart,
                                    timeFinish: flight.timeEnd,
                                  ),
                                ]
                                    .expand((element) =>
                                        [element, const SizedBox(height: 10.0)])
                                    .toList()
                                  ..removeLast(),
                              )),
                          CardInformation(
                              context: context,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        S.of(context).schedule,
                                        textAlign: TextAlign.center,
                                        style: context.titleLarge.copyWith(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 15.0),
                                  const SizedBox(height: 7.0),
                                  DotCustom(
                                    color: Theme.of(context).primaryColor,
                                    full: true,
                                    radius: 15.0,
                                  ),
                                  ...flight.stopAirports
                                      .map<Widget>(
                                        (e) => _filedAirportInformation(
                                            e, context),
                                      )
                                      .expand(
                                        (element) => [
                                          element,
                                          DotCustom(
                                            color:
                                                Theme.of(context).primaryColor,
                                            full: true,
                                            radius: 15.0,
                                          ),
                                        ],
                                      ),
                                  const SizedBox(height: 7.0),
                                ],
                              )),
                        ],
                      ),
                    ),
                  const SizedBox(height: 60.0),
                ],
              ),
            )
          ],
        );
      },
    );
  }

  Container _filedAirportInformation(StopAirport e, BuildContext context) {
    final headerTextStyle = context.titleMedium.copyWith(
      fontWeight: FontWeight.bold,
      overflow: TextOverflow.ellipsis,
    );

    return Container(
      padding: const EdgeInsets.only(
        left: 15.0,
        top: 5.0,
        bottom: 5.0,
      ),
      margin: const EdgeInsets.only(left: 7.0),
      decoration: DottedDecoration(
        linePosition: LinePosition.left,
        strokeWidth: 1.5,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            getYmdFormat(e.stopTime),
            style: context.titleSmall.copyWith(
              color: Theme.of(context).primaryColor,
              fontStyle: FontStyle.italic,
            ),
          ),
          Row(
            children: [
              const SizedBox(width: 10.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      e.airport.name,
                      style: headerTextStyle,
                    ),
                    const SizedBox(height: 2.0),
                    Text(
                      e.airport.code,
                      style: context.titleSmall.copyWith(
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).hintColor,
                      ),
                    )
                  ],
                ),
              ),
              Text(
                getjmFormat(e.stopTime),
                style: headerTextStyle,
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Container(
            padding: const EdgeInsets.all(10.0),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Theme.of(context).dividerColor.withOpacity(0.05),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...<Map<String, dynamic>>[
                  {'header': S.of(context).description, 'text': e.description},
                  {'header': S.of(context).location, 'text': e.airport.location}
                ].map(
                  (e) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        e['header'].toString(),
                        style: context.titleSmall
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        e['text'],
                        style: context.titleSmall.copyWith(
                          fontWeight: FontWeight.w400,
                          color: Theme.of(context).hintColor,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row _airlinesInformation(BuildContext context, Flight flight) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).airlines,
              style: context.titleSmall,
            ),
            const SizedBox(height: 7.0),
            Text(
              flight.airline.airlineName,
              style: context.titleMedium.copyWith(
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              S.of(context).flightType,
              style: context.titleSmall,
            ),
            const SizedBox(height: 7.0),
            Text(
              'HT_16',
              style: context.titleMedium.copyWith(
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ],
    );
  }
}

class CardInformation extends StatelessWidget {
  const CardInformation({
    super.key,
    required this.context,
    required this.child,
  });

  final BuildContext context;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
              color: Theme.of(context).shadowColor.withOpacity(0.1),
              blurRadius: 7.0)
        ],
      ),
      child: child,
    );
  }
}
