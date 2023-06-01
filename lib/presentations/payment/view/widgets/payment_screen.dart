import 'package:flight_booking/core/components/const/image_const.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/components/widgets/mobile/button_custom.dart';
import 'package:flight_booking/core/config/common_ui_config.dart';
import 'package:flight_booking/core/constant/handle_time.dart';
import 'package:flight_booking/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';

import '../../../customer/views/widgets/customer_detail_card.dart';
import '../../../payment_detail/view/widgets/process_payment_bar.dart';

const _hPaddingCard = 15.0;

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).cardColor,
        iconTheme: Theme.of(context).iconTheme,
        elevation: 0,
        centerTitle: true,
        title: const ProgressPaymentBar(),
      ),
      body: SafeArea(
        child: Row(
          children: [
            if (context.widthDevice > 1000) ...[
              Container(
                width: 400,
                margin: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                height: context.heightDevice,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: const [
                    FlightSummaryCard(),
                    CustomerTicketInformationCard(),
                    PriceSummaryCard(),
                  ],
                ),
              ),
            ],
            Expanded(
              child: Row(
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
                    "Price Summary",
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
                      style: context.titleMedium
                          .copyWith(fontWeight: FontWeight.w500),
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
