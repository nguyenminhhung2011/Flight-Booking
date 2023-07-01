import 'dart:typed_data';

import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/widgets/loading_indicator.dart';
import 'package:flight_booking/core/config/common_ui_config.dart';
import 'package:flight_booking/presentations/settings/bloc/accout/account_setting_bloc.dart';
import 'package:flight_booking/presentations/settings/views/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../generated/l10n.dart';

class AddNewEmployee extends StatefulWidget {
  const AddNewEmployee({super.key});

  @override
  State<AddNewEmployee> createState() => _AddNewEmployeeState();
}

class _AddNewEmployeeState extends State<AddNewEmployee> {
  void stateListenerHandle(BuildContext context, AccountSettingState state) {
    state.whenOrNull(
      addNewUserFailed: (data, message) {
        context.showErrorDialog(
          width: 300,
          question: "Error",
          title: 'Add Employee Failed: $message',
        );
      },
      addNewUserSuccess: (data) {
        username.clear();
        password.clear();
        name.clear();
        identifyNumber.clear();
        address.clear();
        email.clear();
        phone.clear();
        birthday = 0;
        gender = "Male";

        context.showSuccessDialog(
          width: 300,
          header: "Success",
          title: "Add user data success",
        );
      },
      // updateUserDataSuccess: (data) {
      //   context.showSuccessDialog(
      //     width: 300,
      //     header: "Update Success",
      //     title: "Update user data success",
      //   );
      // },
      // updateUserDataFailed: (data, message) {
      //   context.showErrorDialog(
      //     width: 300,
      //     question: "Error",
      //     title: 'Update user data Failed: $message',
      //   );
      // },
    );
  }

  bool isInitState = true;
  final username = TextEditingController();
  final password = TextEditingController();
  final name = TextEditingController();
  final identifyNumber = TextEditingController();
  final address = TextEditingController();
  final email = TextEditingController();
  final phone = TextEditingController();
  int birthday = DateTime.now().millisecondsSinceEpoch;
  String gender = "Male";

  String? validateString(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field can not be null';
    }
    return null;
  }

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AccountSettingBloc, AccountSettingState>(
      listener: stateListenerHandle,
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.all(20),
          decoration: CommonAppUIConfig.primaryDecorationContainer,
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                child: state.isLoading
                    ? const LoadingIndicator()
                    : Form(
                        key: formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              leading: Icon(
                                Icons.person_add,
                                color: Theme.of(context).primaryColor,
                              ),
                              title: Text(
                                "Add New Employee",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.copyWith(fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Divider(
                              thickness: 0.5,
                              height: 30,
                              color: Theme.of(context).dividerColor,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: constraints.maxWidth * 0.45,
                                  child: Text(
                                    S.of(context).name,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                  child: CustomerTextField(
                                    validator: validateString,
                                    controller: username,
                                    isDense: true,
                                    title: '',
                                    prefixWidget: const Icon(Icons.person),
                                    hintStyle: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(fontWeight: FontWeight.w300),
                                    hint: "Employee Username",
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              thickness: 0.5,
                              height: 30,
                              color: Theme.of(context).dividerColor,
                            ),
                            ////////////////////////////////////////////////////////
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: constraints.maxWidth * 0.45,
                                  child: Text(
                                    "Password",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                  child: CustomerTextField(
                                    validator: validateString,
                                    controller: password,
                                    isDense: true,
                                    title: '',
                                    prefixWidget: const Icon(Icons.person),
                                    hintStyle: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(fontWeight: FontWeight.w300),
                                    hint: "Employee Password",
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              thickness: 0.5,
                              height: 30,
                              color: Theme.of(context).dividerColor,
                            ),
                            //////////////////////////////////////////////////////////////////
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: constraints.maxWidth * 0.45,
                                  child: Text(
                                    S.of(context).name,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                  child: CustomerTextField(
                                    validator: validateString,
                                    controller: name,
                                    isDense: true,
                                    title: '',
                                    prefixWidget: const Icon(Icons.person),
                                    hintStyle: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(fontWeight: FontWeight.w300),
                                    hint: "Employee Name",
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              thickness: 0.5,
                              height: 30,
                              color: Theme.of(context).dividerColor,
                            ),
                            //////////////////////////////////////////////////////////////////
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: constraints.maxWidth * 0.45,
                                  child: Text(
                                    S.of(context).identityNumber,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                  child: CustomerTextField(
                                    validator: validateString,
                                    controller: identifyNumber,
                                    isDense: true,
                                    prefixWidget: const Icon(Icons.numbers),
                                    hintStyle: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(fontWeight: FontWeight.w100),
                                    hint: "Employee Identify Number",
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              thickness: 0.5,
                              height: 30,
                              color: Theme.of(context).dividerColor,
                            ),

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: constraints.maxWidth * 0.45,
                                  child: Text(
                                    S.of(context).address,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                  child: CustomerTextField(
                                    controller: address,
                                    validator: validateString,
                                    isDense: true,
                                    prefixWidget:
                                        const Icon(Icons.location_on_sharp),
                                    hintStyle: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(fontWeight: FontWeight.w100),
                                    hint: "Employee Address",
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              thickness: 0.5,
                              height: 30,
                              color: Theme.of(context).dividerColor,
                            ),

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: constraints.maxWidth * 0.45,
                                  child: Text(
                                    S.of(context).emailAddress,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                  child: CustomerTextField(
                                    // checkFormat: true,
                                    // formatters: [
                                    //   FilteringTextInputFormatter.allow(RegExp(
                                    //       r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$'))
                                    // ],
                                    controller: email,
                                    isDense: true,
                                    prefixWidget:
                                        const Icon(Icons.email_outlined),
                                    validator: (p0) {
                                      if (validateString(p0) == null) {
                                        RegExp emailRegex = RegExp(
                                            r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');

                                        if (emailRegex.hasMatch(p0!)) {
                                          return null;
                                        } else {
                                          return "Email is not valid";
                                        }
                                      }
                                    },
                                    hintStyle: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(fontWeight: FontWeight.w100),
                                    hint: "Employee Email",
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              thickness: 0.5,
                              height: 30,
                              color: Theme.of(context).dividerColor,
                            ),

                            //////////////////////////////////////////////////////////////////
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: constraints.maxWidth * 0.45,
                                  child: Text(
                                    S.of(context).gender,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).canvasColor,
                                      border: CommonAppUIConfig.primaryBorder,
                                      borderRadius:
                                          CommonAppUIConfig.primaryRadiusBorder,
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(Icons.info,
                                            color: Theme.of(context)
                                                .dividerColor
                                                .withOpacity(0.4)),
                                        const SizedBox(width: 5),
                                        DropdownButton<String>(
                                          borderRadius: CommonAppUIConfig
                                              .primaryRadiusBorder,
                                          underline: const SizedBox(),
                                          items: [
                                            S.of(context).male,
                                            S.of(context).female,
                                          ]
                                              .asMap()
                                              .entries
                                              .map((gender) =>
                                                  DropdownMenuItem<String>(
                                                    value: gender.value
                                                        .toLowerCase(),
                                                    child: Text(
                                                      gender.value,
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyLarge,
                                                    ),
                                                  ))
                                              .toList(),
                                          value: gender.toLowerCase(),
                                          onChanged: (value) {
                                            if (value != null) {
                                              setState(() {
                                                gender = value.toLowerCase();
                                              });
                                            }
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              thickness: 0.5,
                              height: 30,
                              color: Theme.of(context).dividerColor,
                            ),
                            //////////////////////////////////////////////////////////////////

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: constraints.maxWidth * 0.45,
                                  child: Text(
                                    S.of(context).dateBorn,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                  child: InkWell(
                                    onTap: () {
                                      showDatePicker(
                                        context: context,
                                        firstDate: DateTime(1990),
                                        lastDate: DateTime(2030),
                                        initialDate:
                                            DateTime.fromMillisecondsSinceEpoch(
                                                birthday),
                                      ).then((choice) {
                                        print("here");
                                        if (choice != null) {
                                          setState(() {
                                            birthday =
                                                choice.millisecondsSinceEpoch;
                                          });
                                        }
                                      });
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15.0, horizontal: 10),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 0.5,
                                            color:
                                                Theme.of(context).dividerColor),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.calendar_month,
                                            color: Theme.of(context)
                                                .dividerColor
                                                .withOpacity(0.4),
                                          ),
                                          const SizedBox(width: 5),
                                          Expanded(
                                            child: Text(
                                              DateFormat().add_yMMMEd().format(
                                                  DateTime
                                                      .fromMillisecondsSinceEpoch(
                                                          birthday)),
                                              style: const TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              thickness: 0.5,
                              height: 30,
                              color: Theme.of(context).dividerColor,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: constraints.maxWidth * 0.45,
                                  child: Text(
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(fontWeight: FontWeight.bold),
                                    S.of(context).phoneNumber,
                                  ),
                                ),
                                Expanded(
                                  child: CustomerTextField(
                                    controller: phone,
                                    isDense: true,
                                    validator: validateString,
                                    prefixWidget: Icon(
                                      Icons.phone,
                                      color: Theme.of(context)
                                          .dividerColor
                                          .withOpacity(0.4),
                                    ),
                                    title: '',
                                    hintStyle: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(fontWeight: FontWeight.w300),
                                    hint: "Employee Phone Number",
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              thickness: 0.5,
                              height: 30,
                              color: Theme.of(context).dividerColor,
                            ),
                            Center(
                              child: ElevatedButton(
                                onPressed: () {
                                  if (formKey.currentState?.validate() ??
                                      false) {
                                    context.read<AccountSettingBloc>().add(
                                          AccountSettingEvent.addNewUser(
                                            user: state.data.user.copyWith(
                                              username: username.text,
                                              password: password.text,
                                              address: address.text,
                                              birthday: birthday,
                                              email: email.text,
                                              identityCard: identifyNumber.text,
                                              name: name.text,
                                              phone: phone.text,
                                              gender: gender,
                                              role: "USER",
                                            ),
                                          ),
                                        );
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: CommonAppUIConfig
                                            .primaryRadiusBorder),
                                    minimumSize: Size(
                                        MediaQuery.of(context).size.width * 0.5,
                                        50),
                                    backgroundColor:
                                        Theme.of(context).primaryColor),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    if (state.isAddingUser)
                                      LoadingIndicator(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                        radius: 15,
                                      ),
                                    Text(
                                      "Add New Employee",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
              );
            },
          ),
        );
      },
    );
  }
}
