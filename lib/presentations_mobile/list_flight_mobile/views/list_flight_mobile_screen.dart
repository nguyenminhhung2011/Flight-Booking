import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/const/image_const.dart';
import 'package:flight_booking/core/components/widgets/mobile/appbar.dart';
import 'package:flight_booking/core/components/widgets/mobile/calendar_custom.dart';
import 'package:flight_booking/core/components/widgets/mobile/custom_template_screen_stack_scroll.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../generated/l10n.dart';

class ListFlightMobileScreen extends StatelessWidget {
  const ListFlightMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final heightDevice = MediaQuery.of(context).size.height;
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
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              ImageConst.searchIcon,
              color: Colors.white,
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
            ],
          ),
        )
      ],
    );
  }
}
