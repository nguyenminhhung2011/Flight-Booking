import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/const/image_const.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/presentations_mobile/routes_mobile.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';

class SplashMobileScreen extends StatelessWidget {
  const SplashMobileScreen({super.key});
  Future<void> initData() async {
    //Do something
    await Future.delayed(const Duration(seconds: 5));
  }

  @override
  Widget build(BuildContext context) {
    initData().then((value) {
      context.openListPageWithRoute(RoutesMobile.dashboardMobile);
    });
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: context.widthDevice * 0.3,
              height: context.widthDevice * 0.3,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(ImageConst.gif),
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10.0,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10.0),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: 'Go',
                  style: context.titleLarge.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor),
                ),
                TextSpan(
                  text: ' tour',
                  style:
                      context.titleLarge.copyWith(fontWeight: FontWeight.bold),
                ),
              ]),
            ),
            Text(
              S.of(context).youCanTravelToAnyPlaceWithGotour,
              textAlign: TextAlign.center,
              style: context.titleSmall.copyWith(
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
