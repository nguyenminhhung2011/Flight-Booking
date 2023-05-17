import 'package:flight_booking/core/config/common_ui_config.dart';
import 'package:flight_booking/presentations/settings/views/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  Widget _buildStatisticRow(BuildContext context) {
    return Row(
      children: [
        Expanded(child: PaymentStatisticComponent()),
        const SizedBox(width: 10),
        Expanded(child: PaymentStatisticComponent()),
        const SizedBox(width: 10),
        Expanded(child: PaymentStatisticComponent()),
        const SizedBox(width: 10),
        Expanded(child: PaymentStatisticComponent()),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Icon(
                Icons.payment,
                size: 30,
                color: Theme.of(context).primaryColor,
              ),
              title: Text(
                "Payment Management",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              height: 20,
              thickness: 0.5,
              color: Theme.of(context).dividerColor,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton.icon(
                  style: TextButton.styleFrom(
                    backgroundColor: Theme.of(context).cardColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: CommonAppUIConfig.primaryRadiusBorder,
                      side: BorderSide(
                          color: Theme.of(context).dividerColor, width: 1),
                    ),
                    padding: const EdgeInsets.all(10),
                  ),
                  onPressed: () {},
                  icon: Icon(
                    Icons.calendar_month,
                    color: Theme.of(context).dividerColor.withOpacity(0.5),
                  ),
                  label: Text(
                    "Date Range",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).dividerColor.withOpacity(0.6)),
                  ),
                ),
                const SizedBox(width: 10),
                TextButton.icon(
                  style: TextButton.styleFrom(
                    backgroundColor: Theme.of(context).cardColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: CommonAppUIConfig.primaryRadiusBorder,
                      side: BorderSide(
                          color: Theme.of(context).dividerColor, width: 1),
                    ),
                    padding: const EdgeInsets.all(10),
                  ),
                  onPressed: () {},
                  icon: Icon(
                    Icons.flag,
                    color: Theme.of(context).dividerColor.withOpacity(0.5),
                  ),
                  label: Text(
                    "Status",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).dividerColor.withOpacity(0.6)),
                  ),
                ),
                const SizedBox(width: 10),
                TextButton.icon(
                  style: TextButton.styleFrom(
                    backgroundColor: Theme.of(context).cardColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: CommonAppUIConfig.primaryRadiusBorder,
                      side: BorderSide(
                          color: Theme.of(context).dividerColor, width: 1),
                    ),
                    padding: const EdgeInsets.all(10),
                  ),
                  onPressed: () {},
                  icon: Icon(
                    Icons.credit_card,
                    color: Theme.of(context).dividerColor.withOpacity(0.5),
                  ),
                  label: Text(
                    "Payment Method",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).dividerColor.withOpacity(0.6)),
                  ),
                ),
                const Spacer(),
                Expanded(
                  child: CustomerTextField(
                    prefixWidget: Icon(Icons.search),
                    isDense: true,
                    hint: "Search By Account Id, Payment Method,...",
                    hintStyle: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: Theme.of(context).disabledColor),
                  ),
                ),
              ],
            ),
            _buildStatisticRow(context),
          ],
        ),
      ),
    );
  }
}

class PaymentStatisticComponent extends StatelessWidget {
  const PaymentStatisticComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).cardColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("icons/credit-card.png"),
                    fit: BoxFit.contain,
                    filterQuality: FilterQuality.high,
                  )),
                ),
                const SizedBox(width: 10),
                Text(
                  "Total Payments Today",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "352",
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).iconTheme.color),
                ),
                const Spacer(),
                Icon(
                  Icons.show_chart,
                  color: Theme.of(context).primaryColor,
                  size: 50,
                ),
                Text(
                  "+20%",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(color: Theme.of(context).primaryColor),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
