import 'package:flight_booking/core/components/widgets/flux_table/flux_table_row.dart';
import 'package:flight_booking/presentations/customer/views/widgets/customer_textfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../core/components/widgets/flux_table/flux_ticket_table.dart';
import '../../../generated/l10n.dart';

class CustomerScreen extends StatelessWidget {
  const CustomerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).listTicket,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
            maxLines: 1,
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Expanded(
                child: FilterCategory(
                  title: 'Customer',
                  hint: 'Customer name, Customer id, etc',
                  iconData: Icons.search_outlined,
                ),
              ),
              const SizedBox(width: 20),
              const Expanded(
                child: FilterCategory(
                  title: 'Country',
                  hint: 'All Country',
                  iconData: Icons.category_outlined,
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: GestureDetector(
                  onTap: () async {
                    await showDateRangePicker(
                      context: context,
                      firstDate:
                          DateTime.now().subtract(const Duration(days: 10)),
                      lastDate: DateTime.now(),
                      initialEntryMode: DatePickerEntryMode.calendarOnly,
                      builder: (_, child) {
                        return SizedBox(
                          height: MediaQuery.of(context).size.height * 0.5,
                          width: MediaQuery.of(context).size.width * 0.35,
                          child: child,
                        );
                      },
                    );
                  },
                  child: FilterCategory(
                    title: 'Date of Joining',
                    enable: false,
                    hint: DateFormat()
                        .add_yMd()
                        .format(DateTime.now())
                        .toString(),
                    iconData: Icons.calendar_month_outlined,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            flex: 1,
            child: FluxTicketTable<Customer>(
              padding: const EdgeInsets.all(10),
              titleRow: FluxTableRow(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                  onTap: () {},
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  itemBuilder: (data, index) {
                    if (index == 0) {
                      return Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                              color: Colors.grey,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(Icons.person),
                          ),
                          const SizedBox(width: 5),
                          Text(data as String),
                        ],
                      );
                    }
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
