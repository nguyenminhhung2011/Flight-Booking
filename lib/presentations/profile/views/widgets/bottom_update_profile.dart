import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flutter/material.dart';

import '../../../../core/components/widgets/mobile/button_custom.dart';
import '../../../../core/components/widgets/mobile/dropdown_button_custom.dart';
import '../../../../core/components/widgets/mobile/text_field_custom.dart';
import '../../../../generated/l10n.dart';

const _hMargin = 15.0;

class BottomUpdateProfile extends StatefulWidget {
  const BottomUpdateProfile({
    super.key,
  });

  @override
  State<BottomUpdateProfile> createState() => _BottomUpdateProfileState();
}

class _BottomUpdateProfileState extends State<BottomUpdateProfile> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();

  List<String> gender = ['Man', 'Woman'];
  final ValueNotifier<String> _genderSelect = ValueNotifier<String>('Man');

  void _onChangeGender(String? newValue) {
    _genderSelect.value = newValue!;
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var headerStyle = context.titleMedium.copyWith(
      fontWeight: FontWeight.w600,
      color: Colors.grey,
    );
    var textStyle = context.titleMedium.copyWith(
      fontWeight: FontWeight.w500,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 20.0),
        Text(
          S.of(context).updateProfile,
          style: context.titleLarge.copyWith(fontWeight: FontWeight.bold),
        ),
        TextFieldCustom(
          paddingLeft: _hMargin,
          paddingRight: _hMargin,
          headerText: S.of(context).name,
          headerTextStyle: headerStyle,
          hintStyle: headerStyle,
          hintText: S.of(context).enterYourName,
          controller: _nameController,
          textStyle: textStyle,
        ),
        TextFieldCustom(
          paddingLeft: _hMargin,
          paddingRight: _hMargin,
          headerText: S.of(context).emailAddress,
          headerTextStyle: headerStyle,
          hintText: S.of(context).enterYourEmail,
          hintStyle: headerStyle,
          controller: _emailController,
          textStyle: textStyle,
        ),
        TextFieldCustom(
          paddingLeft: _hMargin,
          paddingRight: _hMargin,
          headerText: S.of(context).phoneNumber,
          isPhoneNumberField: true,
          headerTextStyle: headerStyle,
          isNumberInputType: true,
          hintStyle: headerStyle,
          hintText: S.of(context).enterYourPhoneNumber,
          controller: _phoneNumberController,
          textStyle: textStyle,
        ),
        ValueListenableBuilder(
          valueListenable: _genderSelect,
          builder: (context, genderSelect, child) {
            return ListTile(
              title: Text(
                S.of(context).gender,
                style: headerStyle,
              ),
              trailing: DropdownButtonCustom<String?>(
                width: 150.0,
                value: genderSelect,
                onChange: _onChangeGender,
                items: gender
                    .map<DropdownMenuItem<String>>(
                      (String value) => DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      ),
                    )
                    .toList(),
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: ButtonCustom(
            onPress: () => context.pop(),
            width: double.infinity,
            height: 45.0,
            child: Text(
              S.of(context).update,
              style: context.titleMedium.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ].expand((element) => [element, const SizedBox(height: 10.0)]).toList()
        ..removeLast(),
    );
  }
}
