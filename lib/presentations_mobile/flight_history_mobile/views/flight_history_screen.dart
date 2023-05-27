import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/components/widgets/mobile/appbar.dart';
import 'package:flight_booking/core/components/widgets/mobile/custom_template_screen_stack_scroll.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';

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
      children: [],
    );
  }
}
