import 'package:flutter/material.dart';

class FlightDetailsWidget extends StatelessWidget {
  final String firstTitle;
  final String firstDesc;
  final String secondTitle;
  final String secondDesc;
  const FlightDetailsWidget({
    super.key,
    required this.firstTitle,
    required this.firstDesc,
    required this.secondTitle,
    required this.secondDesc,
  });

  @override
  Widget build(BuildContext context) {
    final TextStyle titleStyle =
        Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.grey);

    final TextStyle? descStyle = Theme.of(context).textTheme.titleMedium;

    return ListTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            firstTitle,
            maxLines: 1,
            style: titleStyle,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Text(
              firstDesc,
              maxLines: 1,
              style: descStyle,
            ),
          )
        ],
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            secondTitle,
            maxLines: 1,
            style: titleStyle,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Text(
              secondDesc,
              maxLines: 1,
              style: descStyle,
            ),
          )
        ],
      ),
    );
  }
}
