// ignore_for_file: deprecated_member_use

import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/const/image_const.dart';
import 'package:flight_booking/core/components/enum/search_enum.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/components/widgets/mobile/appbar.dart';
import 'package:flight_booking/core/components/widgets/mobile/calendar_custom.dart';
import 'package:flight_booking/core/components/widgets/mobile/custom_template_screen_stack_scroll.dart';
import 'package:flight_booking/presentations_mobile/routes_mobile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/components/widgets/mobile/flight_custom.dart';
import '../../../generated/l10n.dart';

class ListFlightMobileScreen extends StatelessWidget {
  const ListFlightMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final heightDevice = MediaQuery.of(context).size.height;
    return CustomTemplateScreenStackScroll(
      appbar: AppbarCustom(
        backgroundColor: Theme.of(context).primaryColor,
        title: [
          IconButton(
            onPressed: () => context.pop(),
            icon: const Icon(Icons.arrow_back),
          ),
          Text(
            S.of(context).flight,
            style: context.headerAppBarTextStyle,
          ),
          IconButton(
            onPressed: () => context.openPageWithRouteAndParams(
              RoutesMobile.searchMobile,
              SearchEnum.flightSearch,
            ),
            icon: SvgPicture.asset(
              ImageConst.searchIcon,
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
          ),
        ].expand((element) => [element, const Spacer()]).toList()
          ..removeLast(),
      ),
      children: [
        SliverList(
          delegate: SliverChildListDelegate(
            <Widget>[
              CalendarCustom(
                type: CalendarType.timelineCalendar,
                headerText: S.of(context).listFlights,
                onSelectedDate: (date) {},
              ),
              const SizedBox(height: 20.0),
              Container(
                constraints: BoxConstraints(minHeight: heightDevice),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                  ),
                  color: Theme.of(context).primaryColor,
                ),
                child: FlightField(
                  items: [
                    for (int i = 0; i < 5; i++)
                      FlightStyle(
                        timeStart: DateTime.now(),
                        timeFinish: DateTime.now()
                            .add(const Duration(hours: 4, minutes: 50)),
                        startPlace: 'Comilia',
                        comePlace: 'Sylhet',
                        price: (i + 1) * 100,
                        onPress: () => context.openListPageWithRoute(
                            RoutesMobile.flightDetailMobile),
                      )
                  ],
                ),
                //     Column(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   children: <Widget>[
                //     const SizedBox(height: 20.0),

                // ],
                // ),
              ),
            ],
          ),
        )
      ],
    );
  }
}