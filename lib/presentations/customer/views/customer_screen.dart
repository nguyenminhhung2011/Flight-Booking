import 'package:flight_booking/core/components/widgets/flux_table/flux_table_row.dart';
import 'package:flight_booking/core/constant/handle_time.dart';
import 'package:flight_booking/presentations/customer/bloc/customer_bloc.dart';
import 'package:flight_booking/presentations/customer/views/widgets/customer_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/components/widgets/flux_table/flux_ticket_table.dart';
import '../../../domain/entities/customer/customer.dart';
import '../../../generated/l10n.dart';

class CustomerScreen extends StatefulWidget {
  const CustomerScreen({super.key});

  @override
  State<CustomerScreen> createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {
  CustomerBloc get _customerBloc => BlocProvider.of<CustomerBloc>(context);

  @override
  void initState() {
    _customerBloc.add(const CustomerEvent.started());
    _customerBloc.add(const CustomerEvent.getCustomers());
    super.initState();
  }

  void _stateChangeListener(BuildContext context, CustomerState state) {
    state.whenOrNull(
      selectCustomerSuccess: (data, id) {},
      getCustomerSuccess: (data) {},
    );
  }

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return BlocListener<CustomerBloc, CustomerState>(
      listener: _stateChangeListener,
      child: Scaffold(
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
                Expanded(
                  child: FilterCategory(
                    title: S.of(context).customer,
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
                            height: deviceHeight * 0.5,
                            width: deviceWidth * 0.35,
                            child: child,
                          );
                        },
                      );
                    },
                    child: FilterCategory(
                      title: 'Date of Joining',
                      enable: false,
                      hint: getYmdFormat(DateTime.now()),
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
                        flex: 1, data: S.of(context).gender),
                    FlexRowTableData<String>(
                        flex: 1, data: S.of(context).email),
                    FlexRowTableData<String>(
                        flex: 1, data: S.of(context).identityNum),
                    FlexRowTableData<String>(
                        flex: 1, data: S.of(context).phoneNumber),
                    FlexRowTableData<String>(
                        flex: 1, data: S.of(context).birthday),
                  ],
                ),
                data: [
                  for (int i = 0; i < 50; i++)
                    Customer(
                      id: S.of(context).idData(i),
                      name: S.of(context).nameData(i),
                      email: S.of(context).email,
                      identityNum: S.of(context).identityNum,
                      phoneNumber: S.of(context).phoneNumber,
                      gender: S.of(context).gender,
                      birthday: DateTime.now(),
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
                      FlexRowTableData<String>(flex: 1, data: data.gender),
                      FlexRowTableData<String>(flex: 1, data: data.email),
                      FlexRowTableData<String>(flex: 1, data: data.identityNum),
                      FlexRowTableData<String>(flex: 1, data: data.phoneNumber),
                      FlexRowTableData<String>(
                          flex: 1, data: getYmdFormat(data.birthday)),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
