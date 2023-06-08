import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flutter/material.dart';

import '../../../../core/components/widgets/mobile/flight_custom.dart';
import '../../../../core/config/common_ui_config.dart';
import '../../../../core/constant/handle_time.dart';
import '../../../../generated/l10n.dart';
import '../../../../presentations_mobile/flight_history_detail/views/flight_history_detail_screen.dart';
import '../../../../presentations_mobile/flight_history_detail/views/widgets/customer_information_field.dart';

const _hPaddingCard = 15.0;

class TicInformation extends StatelessWidget {
  const TicInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).primaryColor;

    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: CommonAppUIConfig.primaryRadiusBorder,
      ),
      child: Padding(
        padding: const EdgeInsets.all(_hPaddingCard),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.connecting_airports_rounded,
                  color: primaryColor,
                ),
                const SizedBox(width: 5.0),
                Expanded(
                  child: Text(
                    'Viet Nam air',
                    style: context.titleLarge.copyWith(
                      fontWeight: FontWeight.w500,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                const SizedBox(width: 5.0),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Icon(Icons.share, color: primaryColor, size: 16.0),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Text(
              '1h 20m',
              style: context.titleSmall.copyWith(color: Colors.grey),
            ),
            const SizedBox(height: 10.0),
            TimeFlightRow(
              timeStart: DateTime.now(),
              timeEnd: DateTime.now().add(
                const Duration(hours: 14),
              ),
            ),
            const SizedBox(height: 10.0),
            Row(
              //🚑Hard code
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ...['Ho Chi Minh', 'Thailand'].map((e) => Text(
                      e,
                      style: context.titleMedium.copyWith(),
                    ))
              ],
            ),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InformationColumnItem(
                  context: context,
                  header: S.of(context).dateStart,
                  title: getYmdFormat(
                    DateTime.now(),
                  ),
                  isStart: true,
                  titleStyle: context.titleMedium.copyWith(
                    fontWeight: FontWeight.w600,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                InformationColumnItem(
                  context: context,
                  header: S.of(context).dateFinish,
                  title: getYmdFormat(
                    DateTime.now().add(
                      const Duration(hours: 14),
                    ),
                  ),
                  isStart: false,
                  titleStyle: context.titleMedium.copyWith(
                    fontWeight: FontWeight.w600,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ].expand((element) => [Expanded(child: element)]).toList(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ClipPath(
                clipper: FlightClipper(),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        S.of(context).bookingCode,
                        style: context.titleSmall,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'LHPMQF',
                            style: context.titleMedium.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          const SizedBox(width: 5.0),
                          InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.copy,
                              color: Theme.of(context).primaryColor,
                              size: 16,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Text(
              S.of(context).useThisCode,
              style: context.titleSmall,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
