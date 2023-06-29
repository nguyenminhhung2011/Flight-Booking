import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/enum/tic_type_enum.dart';
import 'package:flight_booking/core/config/common_ui_config.dart';
import 'package:flight_booking/core/constant/handle_time.dart';
import 'package:flight_booking/domain/entities/payment/payment_detail_item.dart';
import 'package:flight_booking/domain/entities/ticket/ticket.dart';
import 'package:flight_booking/generated/l10n.dart';
import 'package:flight_booking/presentations/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PaymentDetailCard extends StatefulWidget {
  const PaymentDetailCard({super.key, required this.payment});

  final PaymentDetailItem payment;

  @override
  State<PaymentDetailCard> createState() => _PaymentDetailCardState();
}

class _PaymentDetailCardState extends State<PaymentDetailCard> {
  Widget _buildDataFieldDisplay({
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

  Widget _buildPassengerTicketListTile(Ticket ticket) {
    return ListTile(
      dense: true,
      contentPadding: const EdgeInsets.all(0),
      // leading: Image.asset(
      //   "images/avatar.jpg",
      //   width: 50,
      //   filterQuality: FilterQuality.low,
      //   fit: BoxFit.contain,
      // ),
      title: Text(
        ticket.name,
        style: Theme.of(context)
            .textTheme
            .bodyLarge
            ?.copyWith(fontWeight: FontWeight.bold),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "${ticket.luggage.toString()} KG",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).textTheme.headlineLarge?.color),
          ),
          const SizedBox(width: 25),
          Text(
            "${ticket.price} \$",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).textTheme.headlineLarge?.color),
          ),
        ],
      ),
      subtitle: Text(
        TicTypeEnum.fromInt(ticket.type).displayValue,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).textTheme.headlineLarge?.color),
      ),
    );
  }

  Widget _buildPaymentListTileComponent({
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
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.bold),
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
                ...[
                  _buildDataFieldDisplay(
                    fieldName: "Payment Id",
                    data: widget.payment.id.toString(),
                  ),
                  _buildDataFieldDisplay(
                    fieldName: "Date of Payment",
                    data: getYmdHmFormat(DateTime.fromMillisecondsSinceEpoch(
                        widget.payment.createdDate)),
                  ),
                  _buildDataFieldDisplay(
                    fieldName: "Payment Status",
                    data: widget.payment.paymentStatus.displayValue,
                  ),
                  _buildDataFieldDisplay(
                    fieldName: "Payment Type",
                    data: widget.payment.paymentType.displayValue,
                  ),
                ].expand<Widget>(
                  (element) => [
                    element,
                    const SizedBox(height: 10),
                  ],
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
                ...[
                  _buildDataFieldDisplay(
                    fieldName: S.of(context).name,
                    data: widget.payment.customer?.name ?? "",
                  ),
                  _buildDataFieldDisplay(
                    fieldName: "Gender",
                    data: widget.payment.customer?.gender ?? "Unknown",
                  ),
                  _buildDataFieldDisplay(
                    fieldName: S.of(context).email,
                    data: widget.payment.customer?.email ?? "",
                  ),
                  _buildDataFieldDisplay(
                    fieldName: S.of(context).identityNumber,
                    data: widget.payment.customer?.identifyNum ?? "",
                  ),
                  _buildDataFieldDisplay(
                    fieldName: S.of(context).phoneNumber,
                    data: widget.payment.customer?.phone ?? "",
                  ),
                  _buildDataFieldDisplay(
                    fieldName: S.of(context).birthday,
                    data: DateFormat("dd/MM/yyyy").format(
                        DateTime.fromMillisecondsSinceEpoch(
                            widget.payment.customer?.birthday ?? 0)),
                  ),
                ].expand<Widget>(
                  (element) {
                    return [
                      element,
                      const SizedBox(height: 10),
                    ];
                  },
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
                  constraints: const BoxConstraints(maxHeight: 250),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: widget.payment.ticket.length,
                    itemBuilder: (context, index) =>
                        _buildPassengerTicketListTile(
                            widget.payment.ticket.elementAt(index)),
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
                  imageUrl: "icons/fare.png",
                  title: "Fare",
                  value: 1234.toString(),
                ),
                const SizedBox(height: 20),
                _buildPaymentListTileComponent(
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
                  imageUrl: "icons/receive-amount.png",
                  title: "Total",
                  value: widget.payment.total.toString(),
                ),
                const SizedBox(height: 20),
                TextButton.icon(
                  onPressed: () {
                    context.openPageWithRouteAndParams(Routes.payment, {
                      'ids': {
                        'flightId': widget.payment.flight?.id,
                        'paymentId': widget.payment.id,
                      }
                    });
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
