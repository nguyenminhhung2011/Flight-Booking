import 'package:dotted_line/dotted_line.dart';
import 'package:flight_booking/core/config/common_ui_config.dart';
import 'package:flight_booking/generated/l10n.dart';
import 'package:flight_booking/presentations/settings/views/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PaymentConfirmationScreen extends StatelessWidget {
  const PaymentConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        centerTitle: true,
        title: SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          child: const ProgressPaymentBar(),
        ),
      ),
      body: const SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(flex: 2, child: PaymentConfirmCard()),
                  Expanded(flex: 3, child: FlightInfoCard()),
                ],
              ),
            ),
            Expanded(child: PaymentDetailCard()),
          ],
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
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 2, color: Theme.of(context).primaryColor),
          ),
          child: Icon(
            Icons.done,
            color: Theme.of(context).primaryColor,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          "Confirm",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w500,
              ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
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
      child: Padding(
        padding: const EdgeInsets.all(50),
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
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  "icons/money.png",
                  height: 50,
                  width: 50,
                  fit: BoxFit.contain,
                  filterQuality: FilterQuality.high,
                ),
                Image.asset(
                  "icons/paypal.png",
                  height: 50,
                  width: 50,
                  fit: BoxFit.contain,
                  filterQuality: FilterQuality.high,
                ),
                Image.asset(
                  "icons/atm-card.png",
                  height: 50,
                  width: 50,
                  fit: BoxFit.contain,
                  filterQuality: FilterQuality.high,
                ),
                Image.asset(
                  "icons/visa.png",
                  height: 50,
                  width: 50,
                  fit: BoxFit.contain,
                  filterQuality: FilterQuality.high,
                ),
              ],
            ),
            Text(
              "Card Number",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            CustomerTextField(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Text("Expiration Date",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontWeight: FontWeight.bold)),
                ),
                Expanded(
                  child: Text("CVC",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(child: CustomerTextField()),
                      const SizedBox(width: 10),
                      Expanded(child: CustomerTextField()),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(child: CustomerTextField()),
              ],
            ),
            Text(
              "Name on card",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            CustomerTextField(
              width: MediaQuery.of(context).size.width,
              hint: "Enter your Card holder name",
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentMethodSelection extends StatefulWidget {
  const PaymentMethodSelection({super.key});

  @override
  State<PaymentMethodSelection> createState() => _PaymentMethodSelectionState();
}

class _PaymentMethodSelectionState extends State<PaymentMethodSelection> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double unSelected = 50;
    double selected = 60;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            border: Border.all(
              width: 5,
              color: Theme.of(context).primaryColor,
            ),
          ),
          child: Image.asset(
            "icons/money.png",
            height: currentIndex == 0 ? unSelected : selected,
            width: currentIndex == 0 ? unSelected : selected,
            fit: BoxFit.contain,
            filterQuality: FilterQuality.high,
          ),
        ),
        Image.asset(
          "icons/paypal.png",
          height: currentIndex == 0 ? unSelected : selected,
          width: currentIndex == 0 ? unSelected : selected,
          fit: BoxFit.contain,
          filterQuality: FilterQuality.high,
        ),
        Image.asset(
          "icons/atm-card.png",
          height: currentIndex == 0 ? unSelected : selected,
          width: currentIndex == 0 ? unSelected : selected,
          fit: BoxFit.contain,
          filterQuality: FilterQuality.high,
        ),
        Image.asset(
          "icons/visa.png",
          height: currentIndex == 0 ? unSelected : selected,
          width: currentIndex == 0 ? unSelected : selected,
          fit: BoxFit.contain,
          filterQuality: FilterQuality.high,
        ),
      ],
    );
  }
}

class PaymentDetailCard extends StatelessWidget {
  const PaymentDetailCard({super.key});

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
      child: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
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
                    "Payment Detail",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Divider(height: 50, thickness: 1.5),
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
                            color: Theme.of(context)
                                .textTheme
                                .headlineLarge
                                ?.color,
                          ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      S.of(context).email,
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
                            color: Theme.of(context)
                                .textTheme
                                .headlineLarge
                                ?.color,
                          ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      S.of(context).phoneNumber,
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
                            color: Theme.of(context)
                                .textTheme
                                .headlineLarge
                                ?.color,
                          ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Text(
                "Booking Detail",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const Divider(
                thickness: 1.5,
                height: 50,
              ),
              Text(
                "Ticket Detail",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 1,
                itemBuilder: (context, index) => ListTile(
                  contentPadding: const EdgeInsets.all(0),
                  dense: true,
                  leading: Image.asset(
                    "images/avatar.jpg",
                    height: 50,
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
                  trailing: Text(
                    "100\$",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Ticket Tiers",
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context)
                                .textTheme
                                .headlineLarge
                                ?.color),
                      ),
                      Text(
                        "Quantity",
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context)
                                .textTheme
                                .headlineLarge
                                ?.color),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Active Balance",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              ListTile(
                contentPadding: const EdgeInsets.all(0),
                dense: true,
                leading: Image.asset(
                  "icons/fare.png",
                  height: 50,
                  width: 50,
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.contain,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Fare",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      "\$23412",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              ListTile(
                contentPadding: const EdgeInsets.all(0),
                dense: true,
                leading: Image.asset(
                  "icons/tax.png",
                  height: 50,
                  width: 50,
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.contain,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Tax", style: Theme.of(context).textTheme.titleLarge),
                    Text(
                      "\$23412",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                height: 50,
                color: Theme.of(context).dividerColor,
              ),
              ListTile(
                contentPadding: const EdgeInsets.all(0),
                dense: true,
                leading: Image.asset(
                  "icons/receive-amount.png",
                  height: 50,
                  width: 50,
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.contain,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      "\$23412",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              TextButton.icon(
                onPressed: () {},
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
    );
  }
}

class FlightInfoCard extends StatelessWidget {
  const FlightInfoCard({super.key});

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
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            const Expanded(child: FlightScheduleComponent()),
            Divider(thickness: 1, color: Theme.of(context).dividerColor),
            const Expanded(flex: 3, child: FlightScheduleInformation())
          ],
        ),
      ),
    );
  }
}

class FlightScheduleComponent extends StatelessWidget {
  const FlightScheduleComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: ListTile(
            dense: true,
            leading: Image.asset(
              "icons/airplane.png",
              height: 50,
              width: 50,
              fit: BoxFit.contain,
              filterQuality: FilterQuality.high,
            ),
            title: Text(
              "Vietnam Airlines",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "Boeing 737-80",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Theme.of(context).hintColor),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "11:00",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "BOM",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: Theme.of(context).hintColor),
                    ),
                  ],
                ),
                const SizedBox(width: 5),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "0h 50m",
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(color: Theme.of(context).hintColor),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          DottedLine(
                            lineLength: 150,
                            direction: Axis.horizontal,
                            lineThickness: 1.0,
                            dashLength: 4.0,
                            dashColor: Theme.of(context).primaryColor,
                            dashRadius: 0.0,
                            dashGapLength: 4.0,
                            dashGapColor: Colors.transparent,
                            dashGapRadius: 0.0,
                          ),
                          RotatedBox(
                            quarterTurns: 1,
                            child: Icon(
                              Icons.flight,
                              color: Theme.of(context).primaryColor,
                            ),
                          )
                        ],
                      ),
                      Text(
                        "1 Stop",
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "11:00",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "BOM",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: Theme.of(context).hintColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Ho Chi Minh City",
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                "(3h 0m)",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Theme.of(context).hintColor),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class FlightScheduleInformation extends StatelessWidget {
  const FlightScheduleInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(
                  Icons.flight_takeoff,
                  color: Theme.of(context).textTheme.titleMedium?.color,
                ),
                title: Text(
                  "Department",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                DateFormat().add_yMMMMEEEEd().format(DateTime.now()),
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                DateFormat().add_yMMMMEEEEd().format(DateTime.now()),
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                DateFormat().add_yMMMMEEEEd().format(DateTime.now()),
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Expanded(child: Column()),
        Expanded(child: Column()),
        Expanded(child: Column()),
      ],
    );
  }
}
