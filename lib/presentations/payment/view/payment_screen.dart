import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flight_booking/core/components/enum/action_enum.dart';
import 'package:flight_booking/core/components/enum/payment_status_enum.dart';
import 'package:flight_booking/core/components/widgets/flux_table/flux_table_row.dart';
import 'package:flight_booking/core/components/widgets/flux_table/flux_ticket_table.dart';
import 'package:flight_booking/core/components/widgets/payment_status_utils.dart';
import 'package:flight_booking/core/config/common_ui_config.dart';
import 'package:flight_booking/domain/entities/payment/payment.dart';
import 'package:flight_booking/generated/l10n.dart';
import 'package:flight_booking/presentations/settings/views/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  Widget _buildStatisticRow(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: PaymentStatisticComponent(
            title: "Total Payments Today",
            imageAssets: "icons/total_payment.png",
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: PaymentStatisticComponent(
            title: "Total Customers Today",
            imageAssets: "icons/total_customer.png",
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: PaymentStatisticComponent(
            title: "Total Flights Today",
            imageAssets: "icons/total_flight.png",
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: PaymentStatisticComponent(
            title: "Total Passenger Today",
            imageAssets: "icons/total_passenger.png",
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
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
                _buildStatisticRow(context),
                Divider(
                  height: 20,
                  thickness: 0.5,
                  color: Theme.of(context).dividerColor,
                ),
                const SizedBox(
                  height: 250,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                          flex: 2, child: PaymentStatusStatisticComponent()),
                      Expanded(
                          flex: 2, child: PaymentMethodStatisticComponent()),
                      Expanded(flex: 3, child: TicketTierStatisticComponent()),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
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
                            color: Theme.of(context)
                                .dividerColor
                                .withOpacity(0.6)),
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
                            color: Theme.of(context)
                                .dividerColor
                                .withOpacity(0.6)),
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
                            color: Theme.of(context)
                                .dividerColor
                                .withOpacity(0.6)),
                      ),
                    ),
                    const Spacer(),
                    Expanded(
                      child: CustomerTextField(
                        prefixWidget: const Icon(Icons.search),
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
                const SizedBox(height: 20),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: _buildPaymentTable(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPaymentStatusComponent(
      BuildContext context, PaymentStatus status) {
    return Container(
      width: 150,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      decoration: BoxDecoration(
        color: PaymentStatusUtils.getColorBaseOnStatus(status).shade200,
        borderRadius: CommonAppUIConfig.primaryRadiusBorder,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            PaymentStatusUtils.getIconBaseOnStatus(status),
            color: PaymentStatusUtils.getColorBaseOnStatus(status).shade900,
          ),
          const SizedBox(width: 5),
          Text(
            status.name,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color:
                      PaymentStatusUtils.getColorBaseOnStatus(status).shade900,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ],
      ),
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

  Widget _buildPaymentTable(BuildContext context) {
    return FluxTicketTable<Payment>(
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
      padding: const EdgeInsets.all(8),
    );
  }
}

class PaymentStatusStatisticComponent extends StatelessWidget {
  const PaymentStatusStatisticComponent({super.key});

  Widget _buildStatusStatisticItem(BuildContext context, PaymentStatus status) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: PaymentStatusUtils.getColorBaseOnStatus(status).shade300,
        ),
        child: Icon(
          PaymentStatusUtils.getIconBaseOnStatus(status),
          size: 30,
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 5),
      minLeadingWidth: 0,
      title: Text(
        status.name,
        style: Theme.of(context)
            .textTheme
            .titleMedium
            ?.copyWith(fontWeight: FontWeight.w600),
      ),
      subtitle: Text(
        "15",
        style: Theme.of(context)
            .textTheme
            .headlineMedium
            ?.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).cardColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(CommonAppUIConfig.kNormalCorner),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Payment Status Statistic",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                      child: _buildStatusStatisticItem(
                          context, PaymentStatus.create)),
                  Expanded(
                      child: _buildStatusStatisticItem(
                          context, PaymentStatus.declined)),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                      child: _buildStatusStatisticItem(
                          context, PaymentStatus.pending)),
                  Expanded(
                      child: _buildStatusStatisticItem(
                          context, PaymentStatus.succeeded)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PaymentStatisticComponent extends StatelessWidget {
  const PaymentStatisticComponent({
    super.key,
    required this.title,
    required this.imageAssets,
  });

  final String title;
  final String imageAssets;

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
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imageAssets),
                      fit: BoxFit.contain,
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                ),
                const SizedBox(width: 25),
                Text(
                  title,
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
            ),
          ],
        ),
      ),
    );
  }
}

class TicketTierStatisticComponent extends StatelessWidget {
  const TicketTierStatisticComponent({super.key});

  Widget _buildStatisticalDataComponent(
    BuildContext context, {
    required String ticketTier,
    required double percent,
    required Color color,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "$percent%",
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(fontWeight: FontWeight.w500, color: color),
        ),
        const SizedBox(height: 5),
        Text(
          ticketTier,
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: Colors.red,
            value: 40,
            radius: 40,
          );
        case 1:
          return PieChartSectionData(
            color: Colors.blue,
            value: 30,
            radius: 40,
          );
        case 2:
          return PieChartSectionData(
            color: Colors.green,
            value: 15,
            radius: 40,
          );
        case 3:
          return PieChartSectionData(
            color: Colors.cyan,
            value: 15,
            radius: 40,
          );
        default:
          throw Error();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).cardColor,
      shape: RoundedRectangleBorder(
          borderRadius: CommonAppUIConfig.primaryRadiusBorder),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ticket Tier Statistic",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildStatisticalDataComponent(
                              context,
                              color: Colors.blue,
                              percent: 15,
                              ticketTier: "Economy Class",
                            ),
                            _buildStatisticalDataComponent(
                              context,
                              color: Colors.blue,
                              percent: 15,
                              ticketTier: "Premium Economy Class",
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildStatisticalDataComponent(
                              context,
                              color: Colors.blue,
                              percent: 15,
                              ticketTier: "Economy Class",
                            ),
                            _buildStatisticalDataComponent(
                              context,
                              color: Colors.blue,
                              percent: 15,
                              ticketTier: "Premium Economy Class",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: ConstrainedBox(
                constraints:
                    const BoxConstraints(maxHeight: 200, minHeight: 100),
                child: PieChart(
                  PieChartData(
                    borderData: FlBorderData(show: false),
                    sectionsSpace: 0,
                    centerSpaceRadius: 55,
                    sections: showingSections(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentMethodStatisticComponent extends StatelessWidget {
  const PaymentMethodStatisticComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).cardColor,
      shape: RoundedRectangleBorder(
          borderRadius: CommonAppUIConfig.primaryRadiusBorder),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Total Revenue Today",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              Text(
                "\$473.85",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: LinearProgressIndicator(
                        color: Colors.red,
                        value: 1,
                        minHeight: 12,
                        backgroundColor: Colors.amber,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: LinearProgressIndicator(
                        color: Colors.amber,
                        value: 1,
                        minHeight: 12,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: LinearProgressIndicator(
                        color: Colors.blue,
                        value: 1,
                        minHeight: 12,
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: _buildAnnotateComponent(
                      context,
                      percent: 15,
                      title: "Test",
                      color: Colors.red,
                    ),
                  ),
                  Expanded(
                    child: _buildAnnotateComponent(
                      context,
                      percent: 15,
                      title: "Test",
                      color: Colors.orange,
                    ),
                  ),
                  Expanded(
                    child: _buildAnnotateComponent(
                      context,
                      percent: 15,
                      title: "Test",
                      color: Colors.blue,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAnnotateComponent(
    BuildContext context, {
    required int percent,
    required String title,
    required Color color,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${percent}%",
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        ListTile(
          minLeadingWidth: 5,
          horizontalTitleGap: 15,
          dense: true,
          contentPadding: const EdgeInsets.all(0),
          leading: const Icon(
            Icons.circle,
            size: 20,
            color: Colors.red,
          ),
          title: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
