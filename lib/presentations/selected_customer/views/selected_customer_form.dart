import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/components/widgets/mobile/button_custom.dart';
import 'package:flight_booking/presentations_mobile/flight_history_detail/views/flight_history_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/customer/customer.dart';
import '../../../generated/l10n.dart';
import '../../dialog_book_ticket/bloc/book_ticket_bloc.dart';

class SelectedCustomerForm extends StatefulWidget {
  const SelectedCustomerForm({super.key});

  @override
  State<SelectedCustomerForm> createState() => _SelectedCustomerFormState();
}

class _SelectedCustomerFormState extends State<SelectedCustomerForm> {
  BTBloc get _bloc => context.read<BTBloc>();
  List<Customer> get _listCustomer => _bloc.data.customers;
  Customer? get _customerSelected => _bloc.data.customerSelected;

  @override
  void initState() {
    super.initState();
  }

  void _onTextChange(String text) {
    _bloc.add(BTEvent.textChange(text: text));
  }

  void _onSelectedCustomer(int id) {
    _bloc.add(BTEvent.getCustomerById(id: id.toString()));
  }

  void _onShowAddCustomerForm() async {
    Map? result = await context.openShowAddEditCustomer(-1);
    if (result == null) {
      return;
    }
    var customer = result['customer'];
    if (customer != null && customer is Customer) {
      _bloc.add(BTEvent.updateCustomers(customer));
    }
  }

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    return BlocBuilder<BTBloc, BTState>(
      builder: (context, state) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              flex: 3,
              child: _listItemField(primaryColor),
            ),
            const SizedBox(width: 10.0),
            Expanded(
              flex: 4,
              child: _customerInformationField(
                context,
                primaryColor,
              ),
            )
          ],
        );
      },
    );
  }

  ListView _customerInformationField(BuildContext context, Color primaryColor) {
    return ListView(
      children: [
        Text(
          S.of(context).customerInformation,
          style: context.titleLarge.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5.0),
        const DividerCustomWithAirplane(),
        const SizedBox(height: 5.0),
        if (_customerSelected != null)
          ...<Map<String, dynamic>>[
            {
              'headerText': S.of(context).name,
              'text': _customerSelected?.name ?? '',
            },
            {
              'headerText': S.of(context).emailAddress,
              'text': _customerSelected?.email ?? '',
            },
            {
              'headerText': S.of(context).phoneNumber,
              'text': _customerSelected?.phoneNumber ?? '',
            },
            {
              'headerText': S.of(context).identityNumber,
              'text': _customerSelected?.identifyNum ?? '',
            },
          ]
              .map(
                (e) => Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      width: 1,
                      color: Theme.of(context).hintColor,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        e['headerText'],
                        style: context.titleSmall.copyWith(
                          fontWeight: FontWeight.w500,
                          color: primaryColor,
                        ),
                      ),
                      const SizedBox(height: 5.0),
                      Text(
                        e['text'],
                        style: context.titleMedium
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              )
              .expand((element) => [element, const SizedBox(height: 10.0)]),
        ButtonCustom(
          onPress: _onShowAddCustomerForm,
          height: 45.0,
          child: Text(S.of(context).addNewCustomer),
        )
      ],
    );
  }

  ListView _listItemField(Color primaryColor) {
    return ListView(
      children: [
        Container(
          height: 45.0,
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
          ),
          child: TextFormField(
            controller: null,
            onChanged: _onTextChange,
            decoration: InputDecoration(
              filled: true,
              hintText: S.of(context).searchAnything,
              hintStyle: context.titleSmall.copyWith(color: Colors.grey),
              focusedBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
            ),
          ),
        ),
        const SizedBox(height: 5.0),
        const DividerCustomWithAirplane(),
        const SizedBox(height: 5.0),
        ..._listCustomer.map(
          (e) => InkWell(
            onTap: () => _onSelectedCustomer(e.id),
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(vertical: 5.0),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: _customerSelected!.id == e.id
                      ? primaryColor
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all(
                    width: 1,
                    color: primaryColor,
                  )),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text('ID ${e.id}', overflow: TextOverflow.ellipsis),
                  ),
                  const SizedBox(width: 5.0),
                  Expanded(
                    flex: 4,
                    child: Text(e.name, overflow: TextOverflow.ellipsis),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
