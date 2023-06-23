import 'package:flight_booking/core/components/widgets/extension/color_extension.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import 'mobile/text_field_custom.dart';

class FormAddEditInformation extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController phoneNumberController;
  final TextEditingController identityController;
  final double leftPadding;
  final double rightPadding;
  const FormAddEditInformation({
    super.key,
    required this.nameController,
    required this.emailController,
    required this.phoneNumberController,
    required this.identityController,
    this.leftPadding = 0,
    this.rightPadding = 0,
  });

  @override
  Widget build(BuildContext context) {
    var fontColorByCard = Theme.of(context).cardColor.fontColorByBackground;
    var headerTextStyle = context.timeStyle
        .copyWith(fontWeight: FontWeight.w600, color: Colors.grey);
    return Column(
      children: [
        ...<Map<String, dynamic>>[
          {
            'headerText': S.of(context).name,
            'hint': S.of(context).enterYourEmail,
            'controller': nameController,
          },
          {
            'headerText': S.of(context).emailAddress,
            'hint': S.of(context).enterYourEmail,
            'controller': emailController,
          },
          {
            'headerText': S.of(context).phoneNumber,
            'hint': S.of(context).enterYourPhoneNumber,
            'controller': phoneNumberController,
          },
          {
            'headerText': S.of(context).identityNumber,
            'hint': 'xxx-xxxxxx-xxxxxx',
            'controller': identityController,
          },
        ].map(
          (e) => TextFieldCustom(
            paddingLeft: leftPadding,
            paddingRight: rightPadding,
            headerText: e['headerText'].toString(),
            hintText: e['hint'].toString(),
            headerTextStyle: headerTextStyle,
            hintStyle: headerTextStyle,
            controller: e['controller'] as TextEditingController,
            textStyle: headerTextStyle.copyWith(
              fontWeight: FontWeight.w600,
              color: fontColorByCard,
            ),
          ),
        ),
      ].expand((element) => [element, const SizedBox(height: 10.0)]).toList()
        ..removeLast(),
    );
  }
}
