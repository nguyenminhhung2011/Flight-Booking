import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flutter/material.dart';

class FlightDetailsWidget extends StatelessWidget {
  final String firstTitle;
  final String firstDesc;
  final String secondTitle;
  final String secondDesc;
  final double? padding;

  const FlightDetailsWidget({
    super.key,
    required this.firstTitle,
    required this.firstDesc,
    required this.secondTitle,
    required this.secondDesc,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    final TextStyle titleStyle = context.titleMedium
        .copyWith(color: Colors.grey, overflow: TextOverflow.ellipsis);

    final TextStyle descStyle =
        context.titleMedium.copyWith(overflow: TextOverflow.ellipsis);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding ?? 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
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
          ),
          Expanded(
            child: Column(
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
          ),
        ],
      ),
    );
  }
}
