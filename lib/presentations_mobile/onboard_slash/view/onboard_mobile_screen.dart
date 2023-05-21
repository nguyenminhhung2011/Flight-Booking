import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/components/widgets/mobile/button_custom.dart';
import 'package:flight_booking/presentations_mobile/onboard_slash/notifier/onboard_notifier.dart';
import 'package:flight_booking/presentations_mobile/routes_mobile.dart';
import 'package:flight_booking/presentations_mobile/splash_mobile/views/widgets/app_name.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../generated/l10n.dart';

class OnboardMobileScreen extends StatefulWidget {
  const OnboardMobileScreen({super.key});

  @override
  State<OnboardMobileScreen> createState() => _OnboardMobileScreenState();
}

class _OnboardMobileScreenState extends State<OnboardMobileScreen> {
  PageController pageController =
      PageController(initialPage: 0, keepPage: true);
  void onButtonTape(int index) {
    pageController.animateToPage(index,
        duration: const Duration(seconds: 1), curve: Curves.fastOutSlowIn);
  }

  @override
  Widget build(BuildContext context) {
    final heightDevice = context.heightDevice;
    return Consumer<OnboardNotifier>(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AppName(fontSize: 17),
            ],
          ),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              height: heightDevice * 0.45,
              child: PageView.builder(
                controller: pageController,
                onPageChanged: model.changePage,
                itemCount: 3,
                itemBuilder: (context, index) => model.pages[index]['image'],
              ),
            ),
            const SizedBox(height: 10.0),
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        for (int index = 0; index < 3; index++)
                          dotAnimated(model.index == index)
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      model.pages[model.index!]['topic'],
                      textAlign: TextAlign.center,
                      style: context.headlineSmall.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text(
                        model.pages[model.index!]['description'],
                        maxLines: 3,
                        textAlign: TextAlign.center,
                        style: context.titleSmall.copyWith(
                            fontWeight: FontWeight.w400, color: Colors.grey),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    SizedBox(
                      width: 150,
                      child: ButtonCustom(
                        onPress: () {
                          if (model.index! >= 2) {
                            context.openListPageWithRoute(RoutesMobile.login);
                          } else {
                            int newIndex = model.index! + 1;
                            onButtonTape(newIndex);
                            model.changePage(newIndex);
                          }
                        },
                        child: Text(S.of(context).continueText),
                      ),
                    ),
                    TextButton(
                      onPressed: () => context.openListPageWithRoute(
                        RoutesMobile.dashboardMobile,
                      ),
                      child: Text(
                        S.of(context).skipForNow,
                        style: context.titleSmall.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }

  Widget dotAnimated(bool isSelect) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      width: isSelect ? 10.0 : 6.0,
      height: isSelect ? 10.0 : 6.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelect ? Theme.of(context).primaryColor : Colors.grey,
      ),
    );
  }
}
