import 'package:flight_booking/presentations/routes/routes.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  Future<void> initData() async {
    //Do something
    await Future.delayed(const Duration(seconds: 5));
  }

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    initData().then((value) {
      Navigator.of(context).pushNamed(Routes.login);
    });
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Align(
        alignment: Alignment.center,
        child: Container(
          width: (deviceWidth * 0.4),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage("assets/images/splash_gif.gif"),
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
            ),
          ),
        ),
      ),
    );
  }
}
