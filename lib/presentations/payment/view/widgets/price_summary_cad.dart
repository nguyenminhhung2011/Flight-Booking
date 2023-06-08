import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flutter/material.dart';

import '../../../../core/config/common_ui_config.dart';
import '../../../../generated/l10n.dart';

const _hPaddingCard = 15.0;

class PriceSummaryCard extends StatelessWidget {
  const PriceSummaryCard({super.key});

  final double paddingHorizontal = 15;

  @override
  Widget build(BuildContext context) {
    final headerStyle =
        context.titleMedium.copyWith(fontWeight: FontWeight.w600);
    final titleStyle = context.titleSmall.copyWith(
      fontWeight: FontWeight.w400,
      color: Theme.of(context).hintColor,
      fontStyle: FontStyle.italic,
    );
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: CommonAppUIConfig.primaryRadiusBorder,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: _hPaddingCard),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(Icons.attach_money),
                  Text(
                    S.of(context).priceSummary,
                    style: context.titleLarge
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            _divider(context),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "ADULT x 1",
                    style: context.titleMedium
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 10.0),
                  ...<Map<String, dynamic>>[
                    {'header': 'Base Fare x 1', 'title': 'BDT 6.942'},
                    {'header': 'Tax x 1', 'title': 'BDT 6.942'},
                    {'header': 'Total Airfare', 'title': 'BDT 6.942'},
                  ]
                      .map(
                        (e) => Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(e['header'].toString(), style: headerStyle),
                            Text(e['title'].toString(), style: titleStyle),
                          ],
                        ),
                      )
                      .expand(
                          (element) => [element, const SizedBox(height: 5.0)])
                ],
              ),
            ),
            const SizedBox(height: 10.0),
            _divider(context),
            const SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      S.of(context).totalAirfare,
                      style: context.titleMedium.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).primaryColor),
                    ),
                    Text(
                      "BDT 6.942",
                      style: titleStyle.copyWith(fontSize: 16.0),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Divider _divider(BuildContext context) {
    return Divider(
      color: Theme.of(context).dividerColor,
      thickness: 1,
    );
  }
}
