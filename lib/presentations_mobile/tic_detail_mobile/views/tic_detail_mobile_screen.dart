import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/widgets/mobile/appbar.dart';
import 'package:flight_booking/core/components/widgets/mobile/custom_template_screen_stack_scroll.dart';
import 'package:flutter/material.dart';

class TicDetailMobileScreen extends StatefulWidget {
  const TicDetailMobileScreen({super.key});

  @override
  State<TicDetailMobileScreen> createState() => _TicDetailMobileScreenState();
}

class _TicDetailMobileScreenState extends State<TicDetailMobileScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomTemplateScreenStackScroll(
      appbar: AppbarCustom(
        backgroundColor: Colors.transparent,
        title: [
          IconButton(
            onPressed: () => context.pop(),
            icon: const Icon(Icons.arrow_back),
          )
        ],
      ),
      children: [],
    );
  }
}
