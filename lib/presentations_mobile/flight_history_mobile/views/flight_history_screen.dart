import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/components/widgets/mobile/appbar.dart';
import 'package:flight_booking/core/components/widgets/mobile/calendar_custom.dart';
import 'package:flight_booking/core/components/widgets/mobile/custom_template_screen_stack_scroll.dart';
import 'package:flight_booking/core/components/widgets/mobile/header_custom.dart';
import 'package:flight_booking/presentations_mobile/flight_history_detail/views/flight_history_detail_screen.dart';
import 'package:flight_booking/presentations_mobile/flight_history_mobile/views/widgets/flight_history_item.dart';
import 'package:flight_booking/presentations_mobile/routes_mobile.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';

const _hMarginCard = 15.0;

class FlightHistoryScreen extends StatefulWidget {
  const FlightHistoryScreen({super.key});

  @override
  State<FlightHistoryScreen> createState() => _FlightHistoryScreenState();
}

class _FlightHistoryScreenState extends State<FlightHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomTemplateScreenStackScroll(
      appbar: AppbarCustom(
        backgroundColor: Theme.of(context).primaryColor,
        title: [
          IconButton(
            onPressed: () => context.pop(),
            icon: const Icon(Icons.arrow_back),
          ),
          const Spacer(),
          Text(
            S.of(context).flightHistory,
            style: context.headerAppBarTextStyle,
          ),
          const Spacer(),
          IconButton(onPressed: () {}, icon: const SizedBox())
        ],
      ),
      children: [
        SliverList(
          delegate: SliverChildListDelegate(
            <Widget>[
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.all(_hMarginCard),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Theme.of(context).cardColor,
                    boxShadow: [
                      BoxShadow(
                          color: Theme.of(context).shadowColor.withOpacity(0.1),
                          blurRadius: 5.0)
                    ]),
                child: CalendarCustom(
                  style: CalenderStyleCustom(onSelected: (value) {}),
                  type: CalendarType.dayCalendar,
                  onSelectedDate: (value) {},
                  headerText: S.of(context).view,
                ),
              ),
              const DividerCustomWithAirplane(),
              const SizedBox(height: _hMarginCard),
              HeaderTextCustom(
                headerText: S.of(context).upcoming,
                textStyle:
                    context.titleMedium.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10.0),
              FlightHistoryItem(
                onPress: () => context
                    .openListPageWithRoute(RoutesMobile.flightHistoryDetail),
                flight: 'Viet Nam air',
                flightId: 'GSSDNDGN',
                airportStart: 'SGB',
                airportFinish: 'GAM',
                placeStart: 'Ho Chi Minh City',
                placeFinish: 'Binh Dinh',
                timeStart: DateTime.now(),
                timeFinish: DateTime.now().add(const Duration(hours: 15)),
                noPeople: 3,
                price: 124.14,
                isDone: false,
              ),
              const SizedBox(height: _hMarginCard),
              const DividerCustomWithAirplane(),
              const SizedBox(height: _hMarginCard),
              Column(
                children: [
                  for (int index = 0; index < 5; index++)
                    FlightHistoryItem(
                      onPress: () => context.openListPageWithRoute(
                          RoutesMobile.flightHistoryDetail),
                      flight: 'Viet Nam air',
                      flightId: 'GSSDNDGN',
                      airportStart: 'SGB',
                      airportFinish: 'GAM',
                      placeStart: 'Ho Chi Minh City',
                      placeFinish: 'Binh Dinh',
                      timeStart: DateTime.now(),
                      timeFinish: DateTime.now().add(const Duration(hours: 15)),
                      noPeople: 3,
                      price: 124.14,
                      isDone: true,
                    ),
                ]
                    .expand((element) => [element, const SizedBox(height: 5.0)])
                    .toList(),
              )
            ],
          ),
        )
      ],
    );
  }
}
