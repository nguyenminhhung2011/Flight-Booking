import 'dart:developer';

import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/widgets/extension/color_extension.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/generated/l10n.dart';
import 'package:flight_booking/presentations/add_customer/bloc/add_customer_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/components/widgets/form_add_edit_information.dart';
import '../../../core/components/widgets/mobile/button_custom.dart';
import '../../../core/components/widgets/mobile/dropdown_button_custom.dart';
import '../../../core/components/widgets/mobile/text_field_custom.dart';
import '../../../core/constant/handle_time.dart';
import '../../../domain/entities/customer/customer.dart';
import '../../add_edit_airport/views/add_edit_airport_form.dart';

class AddCustomerScreen extends StatefulWidget {
  const AddCustomerScreen({super.key});

  @override
  State<AddCustomerScreen> createState() => _AddCustomerScreenState();
}

class _AddCustomerScreenState extends State<AddCustomerScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _identityController = TextEditingController();
  final ValueNotifier<String> _gender = ValueNotifier<String>('MALE');
  final ValueNotifier<DateTime> _dateBorn =
      ValueNotifier<DateTime>(DateTime.now());

  AddCustomerBloc get _bloc => BlocProvider.of<AddCustomerBloc>(context);

  void _onSelectDateBorn() async {
    final result = await context.pickDate(DatePickerMode.day);
    if (result != null) {
      _dateBorn.value = result;
    }
  }

  void _onChangeGender(String? newValue) {
    _gender.value = newValue!;
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneNumberController.dispose();
    _emailController.dispose();
    _identityController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _bloc.add(const AddCustomerEvent.started());
    if (_bloc.customerId != -1) {
      _bloc.add(const AddCustomerEvent.getCustomerById());
    }
  }

  void _onButtonTap() {
    if (_bloc.customerId == -1) {
      _bloc.add(AddCustomerEvent.addCustomer(
        name: _nameController.text,
        email: _emailController.text,
        phoneNumber: _phoneNumberController.text,
        gender: _gender.value,
        identifyNum: _identityController.text,
        dob: _dateBorn.value,
      ));
    } else {
      _bloc.add(AddCustomerEvent.editCustomer(
        name: _nameController.text,
        email: _emailController.text,
        phoneNumber: _phoneNumberController.text,
        gender: _gender.value,
        identifyNum: _identityController.text,
        dob: _dateBorn.value,
      ));
    }
  }

  void _setDataThrowCustomerGot(Customer customer) {
    _nameController.text = customer.name;
    _emailController.text = customer.email;
    _phoneNumberController.text = customer.phoneNumber;
    _identityController.text = customer.identifyNum;
    _gender.value = customer.gender;
    _dateBorn.value = customer.birthday;
  }

  void _listenStateChange(_, AddCustomerState state) {
    state.maybeWhen(
      addCustomerSuccess: (data, customer) {
        context.popArgs({
          'customer': customer,
          'type': TypeUpdateAirportForm.add,
        });
      },
      editCustomerSuccess: (data, customer) {
        context.popArgs({
          'customer': customer,
          'type': TypeUpdateAirportForm.edit,
        });
      },
      getCustomerByIdSuccess: (data, customer) {
        _setDataThrowCustomerGot(customer);
      },
      editCustomerFailed: (data, error) {
        log(error);
      },
      getCustomerByIdFailed: (data, error) {
        log(error);
      },
      addCustomerFailed: (data, error) {
        log(error);
      },
      orElse: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddCustomerBloc, AddCustomerState>(
      listener: _listenStateChange,
      builder: (context, state) {
        var fontColorByCard = Theme.of(context).cardColor.fontColorByBackground;
        var headerTextStyle = context.timeStyle
            .copyWith(fontWeight: FontWeight.w600, color: Colors.grey);
        return Container(
          constraints: BoxConstraints(maxHeight: context.heightDevice),
          padding: const EdgeInsets.all(15.0),
          width: Breakpoints.small.isActive(context)
              ? double.infinity
              : context.widthDevice * 0.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Theme.of(context).cardColor,
          ),
          child: state.loadingGetData
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView(
                  children: [
                    Text(
                      _bloc.customerId == -1
                          ? S.of(context).addNewCustomer
                          : S.of(context).editCustomer,
                      style: context.titleLarge.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    FormAddEditInformation(
                      nameController: _nameController,
                      emailController: _emailController,
                      phoneNumberController: _phoneNumberController,
                      identityController: _identityController,
                    ),
                    ValueListenableBuilder(
                      valueListenable: _dateBorn,
                      builder: (context, dateBorn, child) {
                        return TextFieldCustom(
                          headerText: S.of(context).dateBorn,
                          hintText: S.of(context).selectDateBorn,
                          headerTextStyle: headerTextStyle,
                          isNumberInputType: true,
                          hintStyle: headerTextStyle,
                          controller: TextEditingController(
                              text: getYmdFormat(dateBorn)),
                          textStyle: headerTextStyle.copyWith(
                            fontWeight: FontWeight.w600,
                            color: fontColorByCard,
                          ),
                          suffix: IconButton(
                            icon: const Icon(CupertinoIcons.calendar),
                            onPressed: _onSelectDateBorn,
                          ),
                        );
                      },
                    ),
                    ValueListenableBuilder(
                      valueListenable: _gender,
                      builder: (context, genderSelect, child) {
                        return ListTile(
                          title: Text(
                            S.of(context).gender,
                            style: headerTextStyle,
                          ),
                          trailing: DropdownButtonCustom<String?>(
                            borderColor: Colors.grey[300],
                            width: 150.0,
                            value: genderSelect,
                            onChange: _onChangeGender,
                            items: ['MALE', 'FEMALE']
                                .map<DropdownMenuItem<String>>(
                                  (String value) => DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: headerTextStyle.copyWith(
                                        fontWeight: FontWeight.w600,
                                        color: fontColorByCard,
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
                        );
                      },
                    ),
                    ButtonCustom(
                      height: 50,
                      onPress: _onButtonTap,
                      loading: state.loadingButton,
                      child: Text(
                        _bloc.customerId == -1
                            ? S.of(context).add
                            : S.of(context).edit,
                      ),
                    ),
                  ]
                      .expand(
                          (element) => [element, const SizedBox(height: 15.0)])
                      .toList(),
                ),
        );
      },
    );
  }
}
