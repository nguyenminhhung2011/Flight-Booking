import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/widgets/flux_table/flux_table_row.dart';
import 'package:flight_booking/core/components/widgets/mobile/button_custom.dart';
import 'package:flight_booking/core/constant/handle_time.dart';
import 'package:flight_booking/presentations/add_edit_airport/views/add_edit_airport_form.dart';
import 'package:flight_booking/presentations/customer/bloc/customer_bloc.dart';
import 'package:flight_booking/core/components/widgets/label_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/components/enum/action_enum.dart';
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
    _customerBloc.add(const CustomerEvent.onStarted());
    _customerBloc.add(const CustomerEvent.fetchCustomerData());
    super.initState();
  }

  void _stateChangeListener(BuildContext context, CustomerState state) {
    state.whenOrNull(
      initial: (data) {},
      loading: (data) {},
      openCustomerDetailSuccess: (data, customer) {
        context.openCustomerDetailPage();
      },
      openCustomerAddEditPage: (data, message) {},
      openCustomerDetailFailed: (data, message) {},
      selectCustomerSuccess: (data, customer) {},
      selectCustomerFailed: (data, message) {},
      deleteCustomerSuccess: (data) {},
      deleteCustomerFailed: (data, message) {},
      fetchCustomerDataSuccess: (data) {},
      fetchCustomerDataFailed: (data, message) {},
    );
  }

  void _openCustomerDetailPage(String id) {
    _customerBloc.add(CustomerEvent.openCustomerDetail(customerId: id));
  }

  void _deleteCustomer(int id) async {
    final isDelete = await context.showYesNoDialog(
        300, 'Delete this customer?', 'Are you sure delete this customer?');
    if (isDelete) {
      _customerBloc.add(CustomerEvent.deleteCustomer(id: id));
    }
  }

  void _selectCustomer(String id, int index) {
    _customerBloc.add(CustomerEvent.selectCustomer(id: id, index: index));
  }

  void _onShowAddEditCustomerForm(int customerId) async {
    Map result = await context.openShowAddEditCustomer(customerId);
    var type = result['type'];
    var customer = result['customer'];
    if (customer != null && customer is Customer) {
      if (type != null && type is TypeUpdateAirportForm) {
        _customerBloc.add(CustomerEvent.updateCustomers(
          isEdit: type.isEdit,
          customer: customer,
        ));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CustomerBloc, CustomerState>(
      listener: _stateChangeListener,
      builder: (context, customerState) {
        return Scaffold(
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
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: LabelTextField(
                      title: S.of(context).id,
                      hint: '#123456',
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
                      hint: "1514561561",
                      iconData: Icons.numbers,
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  ButtonCustom(
                    enableWidth: false,
                    radius: 5.0,
                    height: 40.0,
                    child: Text(S.of(context).addNewCustomer),
                    onPress: () => _onShowAddEditCustomerForm(-1),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Expanded(
                flex: 1,
                child: FluxTicketTable<Customer>(
                  loading: customerState.isLoading,
                  tableDecoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Theme.of(context).primaryColor,
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  rowSelectedDecoration: BoxDecoration(
                      border: Border.all(
                    color: Theme.of(context).primaryColor,
                    width: 0.5,
                  )),
                  currentIndex: customerState.data.currentIndex,
                  onTap: (index) {
                    _selectCustomer(
                      customerState.data.customers
                          .elementAt(index)
                          .id
                          .toString(),
                      index,
                    );
                  },
                  data: customerState.data.customers,
                  isSelectable: true,
                  padding: const EdgeInsets.all(10),
                  titleRow: FluxTableRow(
                    margin: const EdgeInsets.symmetric(vertical: 5.0),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                    rowDecoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    itemBuilder: (data, index) {
                      if (data == null) return const SizedBox();
                      return Text(data.toString());
                    },
                    rowData: [
                      FlexRowTableData<String>(flex: 2, data: S.of(context).id),
                      FlexRowTableData<String>(
                          flex: 2, data: S.of(context).name),
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
                  rowBuilder: (data) {
                    return FluxTableRow(
                      rowDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      itemBuilder: (itemData, index) {
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
                              if (itemData != null) Text(itemData as String),
                            ],
                          );
                        }
                        if (index == 7) {
                          return PopupMenuButton<ActionEnum>(
                            onSelected: (value) {
                              if (value == ActionEnum.detail) {
                                _openCustomerDetailPage(data.id.toString());
                              } else if (value == ActionEnum.delete) {
                                _deleteCustomer(data.id);
                              } else if (value == ActionEnum.edit) {
                                _onShowAddEditCustomerForm(data.id);
                              }
                            },
                            itemBuilder: (context) {
                              return [
                                PopupMenuItem(
                                  value: ActionEnum.edit,
                                  child: Text(
                                    "Edit",
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                ),
                                PopupMenuItem(
                                  value: ActionEnum.delete,
                                  child: Text(
                                    "Delete",
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                ),
                                PopupMenuItem(
                                  value: ActionEnum.detail,
                                  child: Text(
                                    "Detail",
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                ),
                              ];
                            },
                          );
                        }
                        return Text(itemData.toString());
                      },
                      rowData: [
                        FlexRowTableData<String>(
                            flex: 2, data: data.id.toString()),
                        FlexRowTableData<String>(flex: 2, data: data.name),
                        FlexRowTableData<String>(flex: 2, data: data.gender),
                        FlexRowTableData<String>(
                          flex: 3,
                          data: data.email,
                          alignment: Alignment.center,
                        ),
                        FlexRowTableData<String>(
                            flex: 3, data: data.identifyNum),
                        FlexRowTableData<String>(
                            flex: 3, data: data.phoneNumber),
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
        );
      },
    );
  }
}
