import 'package:collection/collection.dart';
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/components/widgets/mobile/custom_template_screen_stack_scroll.dart';
import 'package:flight_booking/core/components/widgets/mobile/flight_custom.dart';
import 'package:flight_booking/core/components/widgets/mobile/sort_button.dart';
import 'package:flight_booking/core/constant/handle_time.dart';
import 'package:flight_booking/presentations/list_flight/views/widgets/dot_custom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../core/components/widgets/mobile/appbar.dart';
import '../../../core/components/widgets/mobile/button_custom.dart';
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
  Widget build(BuildContext context) {
    final headerTextStyle =
        context.titleMedium.copyWith(fontWeight: FontWeight.bold);
    return CustomTemplateScreenStackScroll(
      bottomSheet: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
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
              Container(
                constraints: BoxConstraints(maxHeight: context.heightDevice),
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(24.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _cardInformation(
                      context,
                      Column(
                        children: [
                          Row(
                            children: [
                              SortButton(
                                title: 'Nov, 24, 2022',
                                icon: CupertinoIcons.calendar,
                                radius: 20.0,
                                onPress: () {},
                              ),
                              const SizedBox(width: 10.0),
                              SortButton(
                                title: '6h 5min',
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
                          _airlinesInformation(context),
                          const StartAndComePlace(
                            startPlace: 'Semarang',
                            comePlace: 'DenpaSar',
                          ),
                          TimeStartAndFinish(
                            timeStart: DateTime.now(),
                            timeFinish: DateTime.now().add(
                              const Duration(days: 1),
                            ),
                          ),
                        ]
                            .expand((element) =>
                                [element, const SizedBox(height: 10.0)])
                            .toList()
                          ..removeLast(),
                      ),
                    ),
                    _cardInformation(
                      context,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DotCustom(
                            color: Theme.of(context).primaryColor,
                            full: true,
                            radius: 15.0,
                          ),
                          _filedAirportInformation(headerTextStyle, context),
                          DotCustom(
                            color: Theme.of(context).primaryColor,
                            full: true,
                            radius: 15.0,
                          ),
                          _filedAirportInformation(headerTextStyle, context),
                          DotCustom(
                            color: Theme.of(context).primaryColor,
                            full: true,
                            radius: 15.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Container _filedAirportInformation(
      TextStyle headerTextStyle, BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 15.0,
        top: 10.0,
        bottom: 10.0,
      ),
      margin: const EdgeInsets.only(left: 7.5),
      decoration: DottedDecoration(
        linePosition: LinePosition.left,
        strokeWidth: 1.5,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Achnmad Yani',
                    style: headerTextStyle,
                  ),
                  const SizedBox(height: 2.0),
                  Text(
                    'Terminal 1 Domestic',
                    style: context.titleSmall,
                  )
                ],
              ),
              const Spacer(),
              Text(
                getjmFormat(DateTime.now()),
                style: headerTextStyle,
              ),
            ],
          ),
          const SizedBox(height: 15.0),
          Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Theme.of(context).dividerColor.withOpacity(0.05),
            ),
            child: SizedBox(
              height: 90.0,
              width: double.infinity,
              child: Center(
                child: GridView(
                  padding: EdgeInsets.zero,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 5.0,
                    crossAxisCount: 3,
                    childAspectRatio: 2,
                  ),
                  children: <Map<String, dynamic>>[
                    {'header': 'Airlines', 'title': 'Viet Nam air'},
                    {'header': 'class', 'title': 'Business'},
                    {'header': 'Time', 'title': '3h 1min'},
                    {'header': 'Cabin', 'title': '7kg'},
                    {'header': 'Baggage', 'title': '20kg'},
                    {'header': 'Meal', 'title': 'Included'}
                  ]
                      .mapIndexed(
                        (index, e) => Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              e['header'],
                              maxLines: 1,
                              style: context.titleSmall,
                            ),
                            Text(
                              e['title'],
                              maxLines: 1,
                              style: context.titleSmall
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row _airlinesInformation(BuildContext context) {
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
              'Viet Nam air',
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

  Container _cardInformation(BuildContext context, Widget child) {
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
