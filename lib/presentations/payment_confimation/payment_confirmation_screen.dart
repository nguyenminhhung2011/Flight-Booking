import 'package:flight_booking/core/config/common_ui_config.dart';
import 'package:flight_booking/generated/l10n.dart';
import 'package:flight_booking/presentations/settings/views/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class PaymentConfirmationScreen extends StatelessWidget {
  const PaymentConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}

class ProgressPaymentBar extends StatefulWidget {
  const ProgressPaymentBar({super.key});

  @override
  State<ProgressPaymentBar> createState() => _ProgressPaymentBarState();
}

class _ProgressPaymentBarState extends State<ProgressPaymentBar> {
  Widget _buildProgressPaymentComponent() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Theme.of(context).primaryColor),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border:
                  Border.all(width: 2, color: Theme.of(context).primaryColor),
            ),
            child: Icon(
              Icons.done,
              color: Theme.of(context).primaryColor,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            "Confirm",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildProgressPaymentComponent(),
        _buildProgressPaymentComponent(),
        _buildProgressPaymentComponent(),
      ],
    );
  }
}

class PaymentConfirmCard extends StatelessWidget {
  const PaymentConfirmCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: CommonAppUIConfig.primaryRadiusBorder),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Credit Card Information",
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const Divider(
            height: 20,
            thickness: 1,
          ),
          Text(
            "Card Number",
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              const Expanded(flex: 3, child: CustomerTextField()),
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      "assets/images/money.png",
                      height: 50,
                      width: 50,
                      fit: BoxFit.contain,
                      filterQuality: FilterQuality.high,
                    ),
                    Image.asset(
                      "assets/images/paypal.png",
                      height: 50,
                      width: 50,
                      fit: BoxFit.contain,
                      filterQuality: FilterQuality.high,
                    ),
                    Image.asset(
                      "assets/images/atm-card.png",
                      height: 50,
                      width: 50,
                      fit: BoxFit.contain,
                      filterQuality: FilterQuality.high,
                    ),
                    Image.asset(
                      "assets/images/visa.png",
                      height: 50,
                      width: 50,
                      fit: BoxFit.contain,
                      filterQuality: FilterQuality.high,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Text("Expiration Date",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.bold)),
              ),
              Expanded(
                child: Text("CVC",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Expanded(
                flex: 2,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(child: CustomerTextField()),
                    Expanded(child: CustomerTextField()),
                  ],
                ),
              ),
              Expanded(child: CustomerTextField()),
            ],
          ),
          Text(
            "Name on card",
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          CustomerTextField(
            width: MediaQuery.of(context).size.width,
            hint: "Enter your Card holder name",
          ),
        ],
      ),
    );
  }
}

class PaymentDetailCard extends StatelessWidget {
  const PaymentDetailCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Payment Detail",
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const Divider(
            height: 20,
            thickness: 1.5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  S.of(context).fullName,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: Text(
                  "Truong Huynh Duc Hoang",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).dividerColor,
                      ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  S.of(context).fullName,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: Text(
                  "Truong Huynh Duc Hoang",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).dividerColor,
                      ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  S.of(context).fullName,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: Text(
                  "Truong Huynh Duc Hoang",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).dividerColor,
                      ),
                ),
              ),
            ],
          ),
          Text(
            "Order Detail",
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const Divider(height: 20, thickness: 1.5),
          Text(
            "Ticket Detail",
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          ListTile(
            contentPadding: const EdgeInsets.all(0),
            dense: true,
            leading: Image.asset(
              "assets/images/avatar.png",
              height: 50,
              width: 50,
              filterQuality: FilterQuality.high,
              fit: BoxFit.contain,
            ),
            title: Text(
              "Truong Huynh Duc Hoang",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            trailing: Text(
              "100\$",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Ticket Tiers",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: Theme.of(context).dividerColor),
                ),
                Text(
                  "Quantity",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: Theme.of(context).dividerColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// class PaymentInfoDetailCard extends StatelessWidget {
//   const PaymentInfoDetailCard({super.key});

//   @override
//   Widget build(BuildContext context) {}
// }
