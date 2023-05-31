import 'dart:math';

import 'package:flight_booking/core/components/enum/action_enum.dart';
import 'package:flight_booking/core/components/enum/payment_status_enum.dart';
import 'package:flight_booking/core/components/widgets/flux_table/flux_table_row.dart';
import 'package:flight_booking/core/components/widgets/flux_table/flux_ticket_table.dart';
import 'package:flight_booking/core/components/widgets/payment_status_utils.dart';
import 'package:flight_booking/domain/entities/payment/payment.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flight_booking/generated/l10n.dart';
import 'package:flight_booking/core/constant/handle_time.dart';
import 'package:flight_booking/core/config/common_ui_config.dart';
import 'package:flight_booking/core/components/enum/payment_type.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/presentations/settings/views/widgets/custom_textfield.dart';

class PaymentConfirmationScreen extends StatelessWidget {
  const PaymentConfirmationScreen({super.key});

  Widget _buildPaymentStatusComponent(
    BuildContext context,
    PaymentStatus status,
  ) {
    return Container(
      width: 150,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      decoration: BoxDecoration(
        color: status.getColorBaseOnStatus().shade200,
        borderRadius: CommonAppUIConfig.primaryRadiusBorder,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            status.getIconBaseOnStatus(),
            color: status.getColorBaseOnStatus().shade900,
          ),
          const SizedBox(width: 5),
          Text(
            status.name,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: status.getColorBaseOnStatus().shade900,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ],
      ),
    );
  }

  Widget _buildPaymentTable(BuildContext context) {
    return FluxTicketTable<Payment>(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      tableDecoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: CommonAppUIConfig.primaryRadiusBorder,
        border: Border.all(color: Theme.of(context).dividerColor, width: 1),
      ),
      data: [
        for (int i = 0; i < 30; i++)
          Payment(
            id: "id$i",
            customerId: "customerId$i",
            flightId: "flightId$i",
            paymentMethod: "paymentMethod$i",
            amount: (i + 1) * 5.9,
            creDate: DateTime.now().add(Duration(seconds: i)),
            status: "status $i",
          )
      ],
      rowBuilder: (data) {
        return FluxTableRow(
          rowDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).scaffoldBackgroundColor,
            border:
                Border.all(width: 0.15, color: Theme.of(context).disabledColor),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          itemBuilder: (data, int columnIndex) {
            if (columnIndex == 6) {
              return _buildPaymentStatusComponent(context, data);
            }
            if (columnIndex == 7) {
              return PopupMenuButton<ActionEnum>(
                itemBuilder: (context) => [
                  PopupMenuItem<ActionEnum>(
                    value: ActionEnum.detail,
                    child: Text(
                      ActionEnum.detail.name,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                  PopupMenuItem<ActionEnum>(
                    child: Text(
                      ActionEnum.edit.name,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                  PopupMenuItem<ActionEnum>(
                    child: Text(
                      ActionEnum.delete.name,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ],
                onSelected: (value) {},
                icon: const Icon(Icons.more_vert),
              );
            }
            return Text(
              data.toString(),
              style: Theme.of(context).textTheme.bodyMedium,
            );
          },
          rowData: [
            FlexRowTableData<String>(flex: 2, data: data.id),
            FlexRowTableData<String>(flex: 2, data: data.customerId),
            FlexRowTableData<String>(flex: 2, data: data.flightId),
            FlexRowTableData<String>(flex: 2, data: data.paymentMethod),
            FlexRowTableData<String>(flex: 2, data: data.amount.toString()),
            FlexRowTableData<String>(
                flex: 2,
                data:
                    DateFormat().add_MMMMEEEEd().add_Hm().format(data.creDate)),
            FlexRowTableData<PaymentStatus>(flex: 2, data: getRandomStatus()),
            FlexRowTableData<String>(flex: 1),
          ],
        );
      },
      rowSelectedDecoration: BoxDecoration(
          border: Border.all(width: 2, color: Theme.of(context).primaryColor)),
      titleRow: FluxTableRow(
        margin: const EdgeInsets.symmetric(vertical: 5.0),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        rowDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).scaffoldBackgroundColor,
          border:
              Border.all(width: 0.15, color: Theme.of(context).disabledColor),
        ),
        itemBuilder: (data, index) {
          if (data == null) return const SizedBox();
          return Text(data.toString());
        },
        rowData: [
          FlexRowTableData<String>(flex: 2, data: S.of(context).id),
          FlexRowTableData<String>(flex: 2, data: S.of(context).customerId),
          FlexRowTableData<String>(flex: 2, data: S.of(context).flightId),
          FlexRowTableData<String>(flex: 2, data: S.of(context).paymentMethod),
          FlexRowTableData<String>(flex: 2, data: S.of(context).amount),
          FlexRowTableData<String>(flex: 2, data: S.of(context).creDate),
          FlexRowTableData<String>(flex: 2, data: S.of(context).status),
          FlexRowTableData<String>(flex: 1, data: S.of(context).actions),
        ],
      ),
      isSelectable: true,
    );
  }

  PaymentStatus getRandomStatus() {
    final status = [
      PaymentStatus.create,
      PaymentStatus.declined,
      PaymentStatus.pending,
      PaymentStatus.succeeded
    ];
    return status.elementAt(Random().nextInt(4));
  }

  final double cardSpace = 15;

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
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Expanded(flex: 2, child: PaymentConfirmCard()),
                        SizedBox(width: cardSpace),
                        const Expanded(flex: 3, child: FlightInfoCard()),
                      ],
                    ),
                  ),
                  SizedBox(height: cardSpace),
                  Expanded(
                    child: _buildPaymentTable(context),
                  ),
                ],
              ),
            ),
            SizedBox(width: cardSpace),
            const Expanded(child: PaymentDetailCard()),
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

class PaymentConfirmCard extends StatefulWidget {
  const PaymentConfirmCard({super.key});

  @override
  State<PaymentConfirmCard> createState() => _PaymentConfirmCardState();
}

class _PaymentConfirmCardState extends State<PaymentConfirmCard> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: CommonAppUIConfig.primaryRadiusBorder),
      child: Padding(
        padding: const EdgeInsets.all(20),
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Radio<PaymentType>(
                      groupValue: PaymentType.card,
                      onChanged: (value) {},
                      value: PaymentType.card,
                    ),
                    const SizedBox(width: 15),
                    PaymentMethodSelection(),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Radio<PaymentType>(
                      groupValue: PaymentType.card,
                      onChanged: (value) {},
                      value: PaymentType.cash,
                    ),
                    const SizedBox(width: 20),
                    Image.asset(
                      "icons/money.png",
                      height: 50,
                      width: 50,
                      fit: BoxFit.contain,
                      filterQuality: FilterQuality.high,
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Text(
              "Card Number",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const CustomerTextField(),
            const Spacer(),
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
                      SizedBox(width: 10),
                      Expanded(child: CustomerTextField()),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Expanded(child: CustomerTextField()),
              ],
            ),
            const Spacer(),
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
  int _currentIndex = 0;

  Map<int, String> selectionData = {
    0: "icons/paypal.png",
    1: "icons/atm-card.png",
    2: "icons/visa.png",
  };
  Widget _buildImageSelectable(String imageUrl, int index) {
    return InkWell(
      borderRadius: CommonAppUIConfig.primaryRadiusBorder,
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: CommonAppUIConfig.primaryRadiusBorder,
          border: _currentIndex == index
              ? Border.all(
                  width: 3,
                  style: BorderStyle.solid,
                  color: Theme.of(context).primaryColor,
                )
              : null,
        ),
        child: Image.asset(
          imageUrl,
          height: 50,
          width: 50,
          fit: BoxFit.contain,
          filterQuality: FilterQuality.high,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: selectionData.entries
          .map((e) => _buildImageSelectable(e.value, e.key))
          .toList(),
    );
  }
}

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
                      "Payment Detail",
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
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          children: [
            const Expanded(child: FlightScheduleComponent()),
            Divider(thickness: 1, color: Theme.of(context).dividerColor),
            const Expanded(child: FlightScheduleInformation()),
            Divider(thickness: 1, color: Theme.of(context).dividerColor),
            const Expanded(child: FlightDestinationComponent()),
          ],
        ),
      ),
    );
  }
}

class FlightDestinationComponent extends StatelessWidget {
  const FlightDestinationComponent({super.key});

  Widget _buildColumnDataDisplay(
    BuildContext context, {
    required String headline,
    required String title,
    String? airportCode,
    String? subtitle,
  }) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            headline,
            style:
                context.titleSmall.copyWith(color: Theme.of(context).hintColor),
          ),
          Text.rich(
            style: Theme.of(context).textTheme.titleMedium,
            TextSpan(
              children: [
                TextSpan(
                  text: title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                if (airportCode != null)
                  TextSpan(
                    text: " $airportCode",
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
              ],
            ),
          ),
          if (subtitle != null)
            Text(
              subtitle,
              style: context.titleSmall
                  .copyWith(color: Theme.of(context).hintColor),
            ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 3,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: _buildColumnDataDisplay(
                  context,
                  headline: 'From',
                  title: "Ho Chi Minh",
                  airportCode: "SGN",
                  subtitle: "Tan Son Nhat International Airport",
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).cardColor,
                ),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              Expanded(
                child: _buildColumnDataDisplay(
                  context,
                  headline: 'To',
                  title: "Ha Noi",
                  airportCode: "HAN",
                  subtitle: "Noi Bai International Airport",
                ),
              ),
            ],
          ),
        ),
        const VerticalDivider(color: Colors.grey, thickness: 0.5, width: 20),
        Expanded(
          flex: 1,
          child: _buildColumnDataDisplay(
            context,
            headline: 'Total Passenger',
            title: "30",
          ),
        ),
      ],
    );
  }
}

class FlightScheduleComponent extends StatelessWidget {
  const FlightScheduleComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: ListTile(
            dense: true,
            minLeadingWidth: 0,
            contentPadding: const EdgeInsets.all(0),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.flight_takeoff,
                    color: Theme.of(context).textTheme.titleMedium?.color,
                  ),
                  const SizedBox(width: 15),
                  Text(
                    "Department",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Text(
                DateFormat().add_yMMMMEEEEd().format(DateTime.now()),
                style: context.titleSmall.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                DateFormat().add_jm().format(DateTime.now()),
                style: context.titleSmall.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).hintColor),
              ),
              Text(
                "Ho Chi Minh City, Pleiku Gia Lai",
                style: context.titleSmall.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).hintColor),
              )
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                isThreeLine: true,
                leading: Icon(
                  Icons.airline_stops,
                  color: Theme.of(context).textTheme.titleMedium?.color,
                ),
                title: Text(
                  "Layover at Daklak Airport CCU",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  DateFormat().add_jm().format(DateTime.now()),
                  style: context.titleSmall.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).hintColor),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.flight_land,
                      color: Theme.of(context).textTheme.titleMedium?.color,
                    ),
                    const SizedBox(width: 15),
                    Text(
                      "Arrival",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Text(
                  DateFormat().add_yMMMMEEEEd().format(DateTime.now()),
                  style:
                      context.titleSmall.copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  DateFormat().add_jm().format(DateTime.now()),
                  style: context.titleSmall.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).hintColor),
                ),
                Text(
                  "Ho Chi Minh City, Pleiku Gia Lai",
                  style: context.titleSmall.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).hintColor),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
