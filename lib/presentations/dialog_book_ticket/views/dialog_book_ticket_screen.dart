import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/widgets/extension/color_extension.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/components/widgets/mobile/header_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';

import '../../../core/components/widgets/mobile/button_custom.dart';
import '../../../generated/l10n.dart';
import 'package:flight_booking/core/constant/constant.dart';
import 'package:flight_booking/core/constant/handle_time.dart';
import 'package:flutter/cupertino.dart';

import '../../../core/components/widgets/mobile/dropdown_button_custom.dart';
import '../../../core/components/widgets/mobile/text_field_custom.dart';

const _hMarginCard = 20.0;

class DialogBookTicket extends StatefulWidget {
  const DialogBookTicket({
    super.key,
  });

  @override
  State<DialogBookTicket> createState() => _DialogBookTicketState();
}

class _DialogBookTicketState extends State<DialogBookTicket> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _identityController = TextEditingController();

  // final TextEditingController _dateBornController = TextEditingController();
  final ValueNotifier<String> _gender = ValueNotifier<String>('Male');
  final ValueNotifier<DateTime> _dateBorn =
      ValueNotifier<DateTime>(DateTime.now());

  void _onSelectDateBorn() async {
    final result = await context.pickDate(DatePickerMode.day);
    if (result != null) {
      _dateBorn.value = result;
    }
  }

  void _onChangeGender(String? newValue) {
    _gender.value = newValue!;
  }

  void _onSelectCustomer(int index) {}

  @override
  Widget build(BuildContext context) {
    var fontColorByCard = Theme.of(context).cardColor.fontColorByBackground;
    var headerTextStyle = context.timeStyle
        .copyWith(fontWeight: FontWeight.w600, color: Colors.grey);
    return Container(
      padding: const EdgeInsets.all(15.0),
      width: Breakpoints.large.isActive(context)
          ? context.widthDevice * 0.6
          : double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Theme.of(context).cardColor,
        border: Border.all(width: 1, color: Theme.of(context).primaryColor),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderTextCustom(headerText: S.of(context).listCustomer),
                const SizedBox(height: 10.0),
                for (int i = 0; i < 10; i++)
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 5.0),
                    margin: const EdgeInsets.symmetric(
                        horizontal: 5.0, vertical: 3.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Theme.of(context).primaryColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: Text('Nguyen Minh $i',
                                style: context.titleMedium
                                    .copyWith(fontWeight: FontWeight.bold))),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.close))
                      ],
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(width: 10.0),
          const VerticalDivider(),
          const SizedBox(width: 10.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: _hMarginCard),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Expanded>[
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              S.of(context).firstClass,
                              maxLines: 1,
                              style: headerTextStyle,
                            ),
                            const SizedBox(height: 10.0),
                            Text(
                              'Seat 5D',
                              maxLines: 1,
                              style: context.headlineMedium.copyWith(
                                fontWeight: FontWeight.w600,
                                color: fontColorByCard,
                              ),
                            ) // update here
                            // change this type
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              S.of(context).boeing, // update here,
                              maxLines: 1,
                              style: context.timeStyle.copyWith(
                                fontWeight: FontWeight.w600,
                                color: fontColorByCard,
                              ),
                            ),
                            const SizedBox(height: 7.0),
                            Text(
                              '777 - 200ER', // update here,
                              maxLines: 1,
                              style: headerTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  color: Theme.of(context).hoverColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: _hMarginCard),
                        child: Text(
                          S.of(context).benefit,
                          style: headerTextStyle,
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Row(children: [
                        const SizedBox(width: 5.0),
                        ...mockDataBenefits
                            .map((e) => _benefitWithText(e, context)),
                        const SizedBox(width: 5.0)
                      ]),
                      const SizedBox(height: 10.0)
                    ],
                  ),
                ),
                TextFieldCustom(
                  paddingLeft: _hMarginCard,
                  paddingRight: _hMarginCard,
                  headerText: S.of(context).name,
                  hintText: S.of(context).enterYourName,
                  headerTextStyle: headerTextStyle,
                  hintStyle: headerTextStyle,
                  controller: _nameController,
                  textStyle: headerTextStyle.copyWith(
                    fontWeight: FontWeight.w600,
                    color: fontColorByCard,
                  ),
                ),
                TextFieldCustom(
                  paddingLeft: _hMarginCard,
                  paddingRight: _hMarginCard,
                  headerText: S.of(context).emailAddress,
                  headerTextStyle: headerTextStyle,
                  hintStyle: headerTextStyle,
                  hintText: S.of(context).enterYourEmail,
                  controller: _emailController,
                  textStyle: headerTextStyle.copyWith(
                    fontWeight: FontWeight.w600,
                    color: fontColorByCard,
                  ),
                ),
                TextFieldCustom(
                  paddingLeft: _hMarginCard,
                  paddingRight: _hMarginCard,
                  headerText: S.of(context).phoneNumber,
                  hintText: S.of(context).enterYourPhoneNumber,
                  isPhoneNumberField: true,
                  headerTextStyle: headerTextStyle,
                  isNumberInputType: true,
                  hintStyle: headerTextStyle,
                  controller: _phoneNumberController,
                  textStyle: headerTextStyle.copyWith(
                    fontWeight: FontWeight.w600,
                    color: fontColorByCard,
                  ),
                ),
                TextFieldCustom(
                  paddingLeft: _hMarginCard,
                  paddingRight: _hMarginCard,
                  headerText: S.of(context).identityNumber,
                  hintText: 'xxx-xxxxxx-xxxxxx',
                  headerTextStyle: headerTextStyle,
                  isNumberInputType: true,
                  hintStyle: headerTextStyle,
                  controller: _identityController,
                  textStyle: headerTextStyle.copyWith(
                    fontWeight: FontWeight.w600,
                    color: fontColorByCard,
                  ),
                ),
                ValueListenableBuilder(
                  valueListenable: _dateBorn,
                  builder: (context, dateBorn, child) {
                    return TextFieldCustom(
                      paddingLeft: _hMarginCard,
                      paddingRight: _hMarginCard,
                      headerText: S.of(context).dateBorn,
                      hintText: S.of(context).selectDateBorn,
                      headerTextStyle: headerTextStyle,
                      isNumberInputType: true,
                      hintStyle: headerTextStyle,
                      controller:
                          TextEditingController(text: getYmdFormat(dateBorn)),
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
                        items: ['Male', 'Female']
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: _hMarginCard),
                  child: ButtonCustom(
                    height: 50,
                    child: Text(S.of(context).add),
                    onPress: () {},
                  ),
                ),
              ]
                  .expand((element) => [element, const SizedBox(height: 15.0)])
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  Expanded _benefitWithText(Map<String, dynamic> e, BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            e['icon'],
            color: Colors.grey,
          ),
          const SizedBox(height: 5.0),
          Text(
            e['title'],
            maxLines: 1,
            style: context.titleSmall.copyWith(fontSize: 12.0),
          )
        ],
      ),
    );
  }
}
