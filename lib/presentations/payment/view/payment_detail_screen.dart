import 'package:flight_booking/core/components/widgets/flux_table/flux_table_row.dart';
import 'package:flight_booking/core/components/widgets/flux_table/flux_ticket_table.dart';
import 'package:flutter/material.dart';

class PaymentDetailScreen extends StatelessWidget {
  const PaymentDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Row(
        children: [
          FluxTicketTable(
            data: [],
            rowBuilder: (data) {
              return FluxTableRow(
                itemBuilder: (data, columnIndex) {
                  return Text(data.toString());
                },
                rowData: [],
              );
            },
            titleRow: FluxTableRow(
              itemBuilder: (data, columnIndex) {
                return Text(data.toString());
              },
              rowData: [],
            ),
          ),
          Column(
            children: [],
          )
        ],
      ),
    );
  }
}
