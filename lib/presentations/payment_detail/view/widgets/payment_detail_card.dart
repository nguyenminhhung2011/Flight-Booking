import 'package:flight_booking/core/config/common_ui_config.dart';
import 'package:flight_booking/core/constant/handle_time.dart';
import 'package:flight_booking/generated/l10n.dart';
import 'package:flight_booking/presentations/payment/view/widgets/payment_screen.dart';
import 'package:flight_booking/presentations_mobile/checkout/views/checkout_screen.dart';
import 'package:flutter/material.dart';

class PaymentDetailCard extends StatelessWidget {
  const PaymentDetailCard({super.key});

  Widget _buildDataFieldDisplay(
    BuildContext context, {
    required String fieldName,
    required String data,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            fieldName,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: Text(
            data,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).textTheme.headlineLarge?.color,
                ),
          ),
        ),
      ],
    );
  }

  Widget _buildPassengerTicketListTile(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: const EdgeInsets.all(0),
      leading: Image.asset(
        "images/avatar.jpg",
        width: 50,
        filterQuality: FilterQuality.high,
        fit: BoxFit.contain,
      ),
      title: Text(
        "Truong Huynh Duc Hoang",
        style: Theme.of(context)
            .textTheme
            .bodyLarge
            ?.copyWith(fontWeight: FontWeight.bold),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "x2",
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).textTheme.headlineLarge?.color),
          ),
          const SizedBox(width: 30),
          Text(
            "100\$",
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
      subtitle: Text(
        "Ticket Tiers",
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).textTheme.headlineLarge?.color),
      ),
    );
  }

  Widget _buildPaymentListTileComponent(
    BuildContext context, {
    required String imageUrl,
    required String title,
    required String value,
  }) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      dense: true,
      leading: Image.asset(
        imageUrl,
        height: 50,
        width: 50,
        filterQuality: FilterQuality.high,
        fit: BoxFit.contain,
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(
            value,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: CommonAppUIConfig.primaryRadiusBorder,
        side: BorderSide(
          width: 0.5,
          color: Theme.of(context).dividerColor,
        ),
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.payment,
                      size: 50,
                      color: Theme.of(context).primaryColor,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "Payment Information",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Text(
                  "Payment",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                const Divider(height: 30, thickness: 1.5),
                _buildDataFieldDisplay(context,
                    fieldName: "Payment Id", data: "0123456789"),
                const SizedBox(height: 10),
                _buildDataFieldDisplay(
                  context,
                  fieldName: "Date of Payment",
                  data: getYmdHmFormat(DateTime.now()),
                ),
                const SizedBox(height: 30),
                Text(
                  "Customer",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                const Divider(height: 40, thickness: 1.5),
                _buildDataFieldDisplay(
                  context,
                  fieldName: S.of(context).name,
                  data: "Truong Huynh Duc Hoang",
                ),
                const SizedBox(height: 10),
                _buildDataFieldDisplay(
                  context,
                  fieldName: S.of(context).name,
                  data: "Truong Huynh Duc Hoang",
                ),
                const SizedBox(height: 10),
                _buildDataFieldDisplay(
                  context,
                  fieldName: S.of(context).name,
                  data: "Truong Huynh Duc Hoang",
                ),
                const SizedBox(height: 30),
                Text(
                  "Booking Detail",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                const Divider(
                  thickness: 1.5,
                  height: 30,
                ),
                Text(
                  "Ticket Detail",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: 250),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) =>
                        _buildPassengerTicketListTile(context),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "Total Payment",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                _buildPaymentListTileComponent(
                  context,
                  imageUrl: "icons/fare.png",
                  title: "Fare",
                  value: 1234.toString(),
                ),
                const SizedBox(height: 20),
                _buildPaymentListTileComponent(
                  context,
                  imageUrl: "icons/tax.png",
                  title: "Tax",
                  value: "\$12342143",
                ),
                Divider(
                  thickness: 1,
                  height: 30,
                  color: Theme.of(context).dividerColor,
                ),
                _buildPaymentListTileComponent(
                  context,
                  imageUrl: "icons/receive-amount.png",
                  title: "Total",
                  value: "\$12342143",
                ),
                const SizedBox(height: 20),
                TextButton.icon(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const PaymentScreen(),
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                    minimumSize: const Size(double.maxFinite, 50),
                    backgroundColor: Theme.of(context).primaryColor,
                    foregroundColor: Theme.of(context).disabledColor,
                  ),
                  icon: Icon(
                    Icons.payment,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  label: Text(
                    "Payment Now",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
