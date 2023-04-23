import 'package:flight_booking/core/components/widgets/flux_table/flux_table_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/components/widgets/flux_table/flux_ticket_table.dart';
import '../../../generated/l10n.dart';

class CustomerScreen extends StatelessWidget {
  const CustomerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final widthDevice = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        children: [
          ListTile(
            title: Text(
              S.of(context).listTicket,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
              maxLines: 1,
            ),
            trailing: SizedBox(
              width: widthDevice * 0.4,
              child: CupertinoSearchTextField(
                padding: const EdgeInsets.all(10.0),
                controller: TextEditingController(),
                enabled: true,
                style: Theme.of(context).textTheme.titleMedium,
                onChanged: (value) {},
                onSubmitted: (value) {},
                backgroundColor:
                    Theme.of(context).primaryColor.withOpacity(0.05),
                placeholder: S.of(context).searchAnything,
              ),
            ),
          ),
          Expanded(
            child: FluxTicketTable<Customer>(
              padding: const EdgeInsets.all(10),
              titleRow: FluxTableRow(
                rowDecoration: BoxDecoration(color: Colors.grey[100]),
                itemBuilder: (data, index) {
                  return Text(data.toString());
                },
                rowData: [
                  FlexRowTableData<String>(flex: 1, data: S.of(context).id),
                  FlexRowTableData<String>(flex: 1, data: S.of(context).name),
                  FlexRowTableData<String>(
                      flex: 1, data: S.of(context).address),
                  FlexRowTableData<String>(flex: 1, data: S.of(context).age),
                ],
              ),
              data: [
                for (int i = 0; i < 50; i++)
                  Customer(
                    id: S.of(context).idData(i),
                    name: S.of(context).nameData(i),
                    address: S.of(context).addressData(i),
                    age: i,
                  )
              ],
              rowBuilder: (data) {
                return FluxTableRow(
                  itemBuilder: (data, index) {
                    return Text(data.toString());
                  },
                  rowData: [
                    FlexRowTableData<String>(flex: 1, data: data.id),
                    FlexRowTableData<String>(flex: 1, data: data.name),
                    FlexRowTableData<String>(flex: 1, data: data.address),
                    FlexRowTableData<int>(flex: 1, data: data.age),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class Customer {
  final String id;
  final String name;
  final String address;
  final int age;

  Customer({
    required this.id,
    required this.name,
    required this.address,
    required this.age,
  });
}
