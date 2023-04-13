import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';

class ErrorDialog extends StatelessWidget {
  const ErrorDialog({
    Key? key,
    required this.question,
    required this.title1,
  }) : super(key: key);

  final String question;
  final String title1;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: badges.Badge(
        position: badges.BadgePosition.topStart(
          top: -45,
          start: 150 - 45,
        ),
        stackFit: StackFit.passthrough,
        // badgeContent: CircleAvatar(
        //   radius: 35,
        //   backgroundColor: Colors.blueGrey[50],
        //   child: Image.asset('assets/images/error.png', height: 35, width: 35),
        // ),
        child: SizedBox(
          height: 300,
          width: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  question,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    title1,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      alignment: Alignment.center,
                      fixedSize: const Size(110, 50),
                      elevation: 0,
                    ),
                    child: const Text(
                      'Yes',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
