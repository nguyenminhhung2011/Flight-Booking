import 'dart:typed_data';

import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/widgets/loading_indicator.dart';
import 'package:flight_booking/core/config/common_ui_config.dart';
import 'package:flight_booking/presentations/settings/bloc/accout/account_setting_bloc.dart';
import 'package:flight_booking/presentations/settings/views/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../generated/l10n.dart';

class GeneralSettingsTab extends StatefulWidget {
  const GeneralSettingsTab({super.key});

  @override
  State<GeneralSettingsTab> createState() => _GeneralSettingsTabState();
}

class _GeneralSettingsTabState extends State<GeneralSettingsTab> {
  void stateListenerHandle(BuildContext context, AccountSettingState state) {
    state.whenOrNull(
      updateUserDataSuccess: (data) {
        context.showSuccessDialog(
          width: 300,
          header: "Update Success",
          title: "Update user data success",
        );
      },
      updateUserDataFailed: (data, message) {
        context.showErrorDialog(
          width: 300,
          question: "Error",
          title: 'Update user data Failed: $message',
        );
      },
    );
  }

  bool isInitState = true;

  final name = TextEditingController();
  final identifyNumber = TextEditingController();
  final address = TextEditingController();
  final email = TextEditingController();
  final phone = TextEditingController();
  int birthday = 0;
  String gender = "Male";

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AccountSettingBloc, AccountSettingState>(
      listener: stateListenerHandle,
      builder: (context, state) {
        if ((state.isFetchDataSuccess || state.isUpdateDataSuccess) &&
            isInitState) {
          final user = state.data.user;

          name.text = user.name;
          identifyNumber.text = user.identityCard;
          address.text = user.address;
          email.text = user.email;
          birthday = user.birthday;
          phone.text = user.phone;
          gender = user.gender;

          isInitState = false;
        }

        return Container(
          padding: const EdgeInsets.all(20),
          decoration: CommonAppUIConfig.primaryDecorationContainer,
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                child: state.isLoading
                    ? const LoadingIndicator()
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            leading: Image.asset(
                              'assets/images/resume.png',
                              height: 50,
                              width: 50,
                              filterQuality: FilterQuality.high,
                              fit: BoxFit.contain,
                            ),
                            title: Text(
                              S.of(context).personalInfo,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            S.of(context).updateYourAvatar,
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Colors.blueGrey,
                            ),
                          ),
                          const SizedBox(height: 10),
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
                                      .bodyMedium
                                      ?.copyWith(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Expanded(
                                child: CustomerTextField(
                                  controller: name,
                                  isDense: true,
                                  title: '',
                                  prefixWidget: const Icon(Icons.person),
                                  hintStyle: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(fontWeight: FontWeight.w300),
                                  hint: S.of(context).yourName,
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
                                      .bodyMedium
                                      ?.copyWith(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Expanded(
                                child: CustomerTextField(
                                  controller: identifyNumber,
                                  isDense: true,
                                  prefixWidget: const Icon(Icons.numbers),
                                  hintStyle: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(fontWeight: FontWeight.w100),
                                  hint: S.of(context).identityNum,
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
                                      .bodyMedium
                                      ?.copyWith(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Expanded(
                                child: CustomerTextField(
                                  controller: address,
                                  isDense: true,
                                  prefixWidget:
                                      const Icon(Icons.location_on_sharp),
                                  hintStyle: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(fontWeight: FontWeight.w100),
                                  hint: S.of(context).address,
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
                                      .bodyMedium
                                      ?.copyWith(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Expanded(
                                child: CustomerTextField(
                                  controller: email,
                                  isDense: true,
                                  prefixWidget:
                                      const Icon(Icons.email_outlined),
                                  hintStyle: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(fontWeight: FontWeight.w100),
                                  hint: S.of(context).email,
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
                                      .bodyMedium
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
                                                        .bodyMedium,
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
                                      .bodyMedium
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
                                      borderRadius: BorderRadius.circular(10.0),
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
                                      .bodyMedium
                                      ?.copyWith(fontWeight: FontWeight.bold),
                                  S.of(context).phoneNumber,
                                ),
                              ),
                              Expanded(
                                child: CustomerTextField(
                                  controller: phone,
                                  isDense: true,
                                  prefixWidget: Icon(
                                    Icons.phone,
                                    color: Theme.of(context)
                                        .dividerColor
                                        .withOpacity(0.4),
                                  ),
                                  title: '',
                                  hintStyle: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(fontWeight: FontWeight.w300),
                                  hint: S.of(context).phoneNumber,
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
                                context.read<AccountSettingBloc>().add(
                                      AccountSettingEvent.updateUserData(
                                        user: state.data.user.copyWith(
                                          address: address.text,
                                          birthday: birthday,
                                          email: email.text,
                                          identityCard: identifyNumber.text,
                                          name: name.text,
                                          phone: phone.text,
                                          gender: gender,
                                        ),
                                      ),
                                    );
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
                              child: Text(
                                S.of(context).updateProfile,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
              );
            },
          ),
        );
      },
    );
  }
}
