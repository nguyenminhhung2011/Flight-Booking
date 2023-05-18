import 'package:flight_booking/core/components/enum/payment_status_enum.dart';
import 'package:flight_booking/core/components/widgets/flux_table/flux_table_row.dart';
import 'package:flight_booking/core/components/widgets/flux_table/flux_ticket_table.dart';
import 'package:flight_booking/core/config/common_ui_config.dart';
import 'package:flight_booking/core/constant/handle_time.dart';
import 'package:flight_booking/domain/entities/payment/payment.dart';
import 'package:flight_booking/generated/l10n.dart';
import 'package:flight_booking/presentations/settings/views/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../core/config/color_config.dart';

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
            _buildStatisticRow(context),
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
            Expanded(child: _buildPaymentTable(context)),
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentStatusComponent(
      BuildContext context, PaymentStatus status) {
    switch (status) {
      case PaymentStatus.succeeded:
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          decoration: BoxDecoration(
            color: Colors.green[200],
            borderRadius: CommonAppUIConfig.primaryRadiusBorder,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: Colors.green[900],
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.done_rounded,
                  color: Colors.green[200],
                ),
              ),
              const SizedBox(width: 5),
              Text(
                status.name,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.green[900],
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ],
          ),
        );
      case PaymentStatus.pending:
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: CommonAppUIConfig.primaryRadiusBorder,
          ),
          child: Text(
            status.name,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: Colors.green[900]),
          ),
        );
      case PaymentStatus.create:
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: CommonAppUIConfig.primaryRadiusBorder,
          ),
          child: Text(
            status.name,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: Colors.green[900]),
          ),
        );
      case PaymentStatus.declined:
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: CommonAppUIConfig.primaryRadiusBorder,
          ),
          child: Text(
            status.name,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: Colors.green[900]),
          ),
        );
      default:
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          decoration: BoxDecoration(
            color: Theme.of(context).dividerColor,
            borderRadius: CommonAppUIConfig.primaryRadiusBorder,
          ),
        );
    }
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
        // return Text(data.toString());
        return FluxTableRow(
          rowDecoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          itemBuilder: (data, int columnIndex) {
            if (columnIndex == 6) {
              return _buildPaymentStatusComponent(context, data);
            }
            if (columnIndex == 7) {
              return IconButton(
                onPressed: () {},
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
                flex: 2, data: getYmdHmFormat(data.creDate)),
            FlexRowTableData<PaymentStatus>(
                flex: 2, data: PaymentStatus.succeeded),
            FlexRowTableData<String>(flex: 1),
          ],
        );
      },
      rowSelectedDecoration: BoxDecoration(
          border: Border.all(width: 1, color: Theme.of(context).primaryColor)),
      titleRow: FluxTableRow(
        margin: const EdgeInsets.symmetric(vertical: 5.0),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        rowDecoration: const BoxDecoration(color: CommonColor.primaryColor),
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
          FlexRowTableData(flex: 1, data: "Action"),
        ],
      ),
      isSelectable: true,
      padding: const EdgeInsets.all(8),
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
            ),
          ],
        ),
      ),
    );
  }
}
