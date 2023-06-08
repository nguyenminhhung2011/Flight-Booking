import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flutter/material.dart';

import '../../../../core/components/const/image_const.dart';
import '../../../../core/components/widgets/mobile/button_custom.dart';
import '../../../../core/config/common_ui_config.dart';
import '../../../../core/constant/handle_time.dart';
import '../../../../generated/l10n.dart';

const _hPaddingCard = 15.0;

class FlightSummaryCard extends StatelessWidget {
  const FlightSummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: CommonAppUIConfig.primaryRadiusBorder,
      ),
      child: Padding(
        padding: const EdgeInsets.all(_hPaddingCard),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "DAC - ZYL",
                  style:
                      context.titleLarge.copyWith(fontWeight: FontWeight.w600),
                ),
                TextButton.icon(
                  onPressed: () {},
                  // style: TextButton.styleFrom(),
                  icon: Icon(
                    Icons.edit,
                    color: primaryColor,
                    size: 16,
                  ),
                  label: Text(
                    S.of(context).editFlight,
                    style: context.titleSmall.copyWith(
                      color: primaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            ListTile(
              dense: true,
              contentPadding: EdgeInsets.zero,
              leading: Image.asset(
                ImageConst.planeIcons,
                height: 40,
                fit: BoxFit.contain,
                filterQuality: FilterQuality.high,
              ),
              title: Text(
                "Vietname Airlines",
                style: context.titleSmall.copyWith(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "Boeing 737-80",
                style: context.titleSmall.copyWith(
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).hintColor,
                ),
              ),
            ),
            const SizedBox(height: 15.0),
            Container(
              decoration: BoxDecoration(
                color: primaryColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(5),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: Text(
                getFlightTime(
                  from: DateTime.now(),
                  to: DateTime.now().add(const Duration(hours: 3)),
                ),
                style: context.titleSmall.copyWith(
                  color: primaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 15.0),
            SizedBox(
              width: double.infinity,
              height: 40.0,
              child: ButtonCustom(
                onPress: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.read_more),
                    const SizedBox(width: 7.0),
                    Text(
                      S.of(context).detail,
                      style: context.titleMedium.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
