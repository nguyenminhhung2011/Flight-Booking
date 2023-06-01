import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/components/widgets/swiper_custom.dart';
import 'package:flight_booking/core/config/common_ui_config.dart';
import 'package:flight_booking/core/constant/handle_time.dart';
import 'package:flight_booking/presentations/customer/views/widgets/customer_detail_card.dart';
import 'package:flight_booking/presentations/customer/views/widgets/passenger_info_card.dart';
import 'package:flight_booking/presentations/payment_detail/view/payment_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:intl/intl.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).cardColor,
        iconTheme: Theme.of(context).iconTheme,
        elevation: 0,
        centerTitle: true,
        title: const ProgressPaymentBar(),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Expanded(child: const FlightSummaryCard()),
                    Expanded(
                      flex: 3,
                      child: const CustomerTicketInformationCard(),
                    ),
                    Expanded(child: const PriceSummaryCard()),
                  ],
                ),
              ),
              const SizedBox(width: 15),
              Expanded(flex: 3, child: const Placeholder()),
            ],
          ),
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
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: CommonAppUIConfig.primaryRadiusBorder,
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.attach_money),
                    const SizedBox(width: 10),
                    Text(
                      "Price Summary",
                      style: context.titleLarge
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Theme.of(context).dividerColor,
                thickness: 1,
              ),
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
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Base Fare x 1",
                          style: context.titleMedium
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "BDT 6.942",
                          style: context.titleMedium
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Tax x 1",
                          style: context.titleMedium
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "BDT 6.942",
                          style: context.titleMedium
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Airfare:",
                          style: context.titleMedium
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "BDT 6.942",
                          style: context.titleMedium
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                color: Theme.of(context).dividerColor,
                thickness: 1,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Airfare:",
                        style: context.titleMedium
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "BDT 6.942",
                        style: context.titleMedium
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FlightSummaryCard extends StatelessWidget {
  const FlightSummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 10,
        ),
        child: Column(
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
                    color: Theme.of(context).primaryColor,
                  ),
                  label: Text(
                    "Edit Flight",
                    style: context.titleMedium
                        .copyWith(color: Theme.of(context).primaryColor),
                  ),
                ),
              ],
            ),
            ListTile(
              dense: true,
              contentPadding: EdgeInsets.zero,
              leading: Image.asset(
                "icons/plane.png",
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
                style: context.titleSmall.copyWith(fontWeight: FontWeight.w500),
              ),
            ),
            const Spacer(),
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(5),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: Text(
                getFlightTime(
                  from: DateTime.now(),
                  to: DateTime.now().add(const Duration(hours: 3)),
                ),
                style: context.titleSmall.copyWith(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const Spacer(),
            TextButton.icon(
              icon:
                  Icon(Icons.read_more, color: Theme.of(context).primaryColor),
              onPressed: () {},
              label: Text(
                "Detail",
                style: context.titleMedium
                    .copyWith(color: Theme.of(context).primaryColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
