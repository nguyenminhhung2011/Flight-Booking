import 'package:flight_booking/core/components/widgets/flux_table/flux_table_row.dart';
import 'package:flight_booking/core/config/color_config.dart';
import 'package:flight_booking/core/constant/handle_time.dart';
import 'package:flight_booking/presentations/customer/bloc/customer_bloc.dart';
import 'package:flight_booking/core/components/widgets/label_textfield.dart';
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
    return BlocListener<CustomerBloc, CustomerState>(
      listener: _stateChangeListener,
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).listCustomer,
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
                  child: LabelTextField(
                    title: S.of(context).id,
                    hint: '',
                    iconData: Icons.search_outlined,
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: LabelTextField(
                    title: S.of(context).phoneNumber,
                    hint: '0112345648',
                    iconData: Icons.phone,
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: LabelTextField(
                    title: S.of(context).identityNum,
                    hint: "",
                    iconData: Icons.numbers,
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
                  margin: const EdgeInsets.symmetric(vertical: 5.0),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  rowDecoration:
                      const BoxDecoration(color: CommonColor.primaryColor),
                  itemBuilder: (data, index) {
                    if (data == null) return const SizedBox();
                    return Text(data.toString());
                  },
                  rowData: [
                    FlexRowTableData<String>(flex: 2, data: S.of(context).id),
                    FlexRowTableData<String>(flex: 2, data: S.of(context).name),
                    FlexRowTableData<String>(
                        flex: 2, data: S.of(context).gender),
                    FlexRowTableData<String>(
                        flex: 3,
                        data: S.of(context).email,
                        alignment: Alignment.center),
                    FlexRowTableData<String>(
                        flex: 3, data: S.of(context).identityNum),
                    FlexRowTableData<String>(
                        flex: 3, data: S.of(context).phoneNumber),
                    FlexRowTableData<String>(
                        flex: 2, data: S.of(context).birthday),
                    FlexRowTableData(flex: 1),
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
                            if (data != null) Text(data as String),
                          ],
                        );
                      }
                      if (index == 7) {
                        return PopupMenuButton(
                          itemBuilder: (context) {
                            return [
                              PopupMenuItem(
                                  child: Text(
                                "Edit",
                                style: Theme.of(context).textTheme.bodySmall,
                              )),
                              PopupMenuItem(
                                  child: Text(
                                "Delete",
                                style: Theme.of(context).textTheme.bodySmall,
                              )),
                              PopupMenuItem(
                                  child: Text(
                                "Detail",
                                style: Theme.of(context).textTheme.bodySmall,
                              )),
                            ];
                          },
                        );
                      }
                      return Text(data.toString());
                    },
                    rowData: [
                      FlexRowTableData<String>(flex: 2, data: data.id),
                      FlexRowTableData<String>(flex: 2, data: data.name),
                      FlexRowTableData<String>(flex: 2, data: data.gender),
                      FlexRowTableData<String>(
                        flex: 3,
                        data: data.email,
                        alignment: Alignment.center,
                      ),
                      FlexRowTableData<String>(flex: 3, data: data.identityNum),
                      FlexRowTableData<String>(flex: 3, data: data.phoneNumber),
                      FlexRowTableData<String>(
                          flex: 2, data: getYmdFormat(data.birthday)),
                      FlexRowTableData(flex: 1),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
