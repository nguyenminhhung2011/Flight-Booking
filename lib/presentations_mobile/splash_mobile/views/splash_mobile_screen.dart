import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/const/image_const.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/presentations_mobile/routes_mobile.dart';
import 'package:flight_booking/presentations_mobile/splash_mobile/views/widgets/app_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../generated/l10n.dart';
import '../../../presentations/login/bloc/authentication_bloc.dart';

class SplashMobileScreen extends StatefulWidget {
  const SplashMobileScreen({super.key});

  @override
  State<SplashMobileScreen> createState() => _SplashMobileScreenState();
}

class _SplashMobileScreenState extends State<SplashMobileScreen> {
  Future<void> checkingAuthentication(BuildContext context) async {
    context.read<AuthenticationBloc>().add(OnStarted());
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    checkingAuthentication(context);
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, authenticateState) {
        if (authenticateState.status == AuthenticationStatus.authenticated) {
          context.openDashboardMobilePage();
        } else if (authenticateState.status != AuthenticationStatus.checking) {
          context.openListPageWithRoute(RoutesMobile.onboard);
        }
      },
      child: Scaffold(
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
              const AppName(),
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
      ),
    );
  }
}
