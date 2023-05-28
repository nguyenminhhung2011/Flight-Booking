import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/handle_time.dart';

const _hMarginCard = 15.0;

class FlightHistoryItem extends StatelessWidget {
  final Function() onPress;
  final String flight;
  final String flightId;
  final String airportStart;
  final String airportFinish;
  final String placeStart;
  final String placeFinish;
  final DateTime timeStart;
  final DateTime timeFinish;
  final int noPeople;
  final double price;
  final bool isDone;
  const FlightHistoryItem({
    super.key,
    required this.onPress,
    required this.flight,
    required this.flightId,
    required this.airportStart,
    required this.airportFinish,
    required this.placeStart,
    required this.placeFinish,
    required this.timeStart,
    required this.timeFinish,
    required this.noPeople,
    required this.price,
    required this.isDone,
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = context.titleLarge
        .copyWith(fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis);

    final greyTextStyle = context.titleSmall.copyWith(
        fontWeight: FontWeight.w500,
        overflow: TextOverflow.ellipsis,
        color: Theme.of(context).hintColor);
    final textDecoration =
        isDone ? TextDecoration.lineThrough : TextDecoration.none;
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.symmetric(horizontal: _hMarginCard),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Theme.of(context).cardColor,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).shadowColor.withOpacity(0.07),
              blurRadius: 5.0,
            )
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Theme.of(context).cardColor,
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).shadowColor.withOpacity(0.4),
                        blurRadius: 2.0,
                      )
                    ],
                  ),
                  child: Icon(
                    Icons.connecting_airports_rounded,
                    color: isDone ? Colors.red : Colors.green,
                  ),
                ),
                const SizedBox(width: 5.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        flight,
                        style: context.titleMedium.copyWith(
                            fontWeight: FontWeight.bold,
                            decoration: textDecoration),
                      ),
                      Text(
                        '${getYmdHmFormat(timeStart)} - ${getYmdHmFormat(timeFinish)}',
                        style:
                            greyTextStyle.copyWith(decoration: textDecoration),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const Divider(),
            Row(
              children: [
                Text('$airportStart ', style: textStyle),
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Expanded(child: _dot()),
                      Icon(Icons.airplane_ticket,
                          color: Theme.of(context).primaryColor),
                      Expanded(child: _dot()),
                    ],
                  ),
                ),
                Text(' $airportFinish', style: textStyle),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    placeStart,
                    style: greyTextStyle,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Expanded(
                  child: Text(
                    placeFinish,
                    textAlign: TextAlign.end,
                    style:
                        greyTextStyle.copyWith(overflow: TextOverflow.ellipsis),
                  ),
                )
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '#$flightId',
                  style: greyTextStyle.copyWith(fontWeight: FontWeight.bold),
                ),
                RichText(
                    text: TextSpan(
                  style: greyTextStyle,
                  children: [
                    TextSpan(
                      text: '\$$price',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor),
                    ),
                    TextSpan(
                      text: '/$noPeople person',
                      style: TextStyle(
                        color: Theme.of(context).hintColor,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ))
                // Text(
                //   '\$302.00',

                // )
              ],
            ),
          ].expand((element) => [element, const SizedBox(height: 7.0)]).toList()
            ..removeLast(),
        ),
      ),
    );
  }

  Widget _dot() {
    return Container(
      width: double.infinity,
      height: 0.5,
      decoration: DottedDecoration(linePosition: LinePosition.bottom),
    );
  }
}
