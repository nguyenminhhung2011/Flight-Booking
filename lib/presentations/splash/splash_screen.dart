import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/const/image_const.dart';
import 'package:flight_booking/core/components/utils/bencrypt_utils.dart';
import 'package:flight_booking/presentations/login/bloc/authentication_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  Future<void> checkingAuthentication(BuildContext context) async {
    //Do something
    context.read<AuthenticationBloc>().add(OnStarted());
  }

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    checkingAuthentication(context);
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, authenticateState) {
        if (authenticateState.status == AuthenticationStatus.authenticated) {
          context.openDashboardPage();
        } else if (authenticateState.status != AuthenticationStatus.checking) {
          context.openLoginPage();
        }
      },
      child: Scaffold(
        backgroundColor: Colors.pink,
        body: Align(
          alignment: Alignment.center,
          child: Container(
            width: (deviceWidth * 0.4),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(ImageConst.splashIcon),
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
