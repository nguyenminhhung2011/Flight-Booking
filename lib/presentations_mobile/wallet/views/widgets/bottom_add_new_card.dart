import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flutter/material.dart';

import '../../../../core/components/widgets/mobile/button_custom.dart';
import '../../../../core/components/widgets/mobile/dropdown_button_custom.dart';
import '../../../../core/components/widgets/mobile/text_field_custom.dart';
import '../../../../core/constant/constant.dart';
import '../../../../generated/l10n.dart';

const _hMarginCard = 15.0;

class BottomAddNewCard extends StatefulWidget {
  const BottomAddNewCard({
    super.key,
  });

  @override
  State<BottomAddNewCard> createState() => _BottomAddNewCardState();
}

class _BottomAddNewCardState extends State<BottomAddNewCard> {
  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  final ValueNotifier<Map<String, dynamic>> _typeCard =
      ValueNotifier<Map<String, dynamic>>(mocPayment.first);
  @override
  void dispose() {
    _cardNumberController.dispose();
    _nameController.dispose();
    super.dispose();
  }

  void _onChangeTypeCard(Map<String, dynamic>? value) {
    _typeCard.value = value!;
  }

  @override
  Widget build(BuildContext context) {
    var headerStyle = context.titleSmall.copyWith(
      fontWeight: FontWeight.w400,
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
          S.of(context).addNewCard,
          style: context.titleLarge.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10.0),
        TextFieldCustom(
          paddingLeft: _hMarginCard,
          paddingRight: _hMarginCard,
          headerText: S.of(context).name,
          headerTextStyle: headerStyle.copyWith(color: Colors.white),
          hintText: S.of(context).enterYourName,
          hintStyle: headerStyle,
          controller: _nameController,
          textStyle: textStyle,
        ),
        const SizedBox(height: 10.0),
        TextFieldCustom(
          paddingLeft: _hMarginCard,
          paddingRight: _hMarginCard,
          headerText: S.of(context).codePayment,
          headerTextStyle: headerStyle.copyWith(color: Colors.white),
          hintText: 'XXXX XXXX XXXX XX',
          hintStyle: headerStyle,
          controller: _cardNumberController,
          textStyle: textStyle,
        ),
        const SizedBox(height: 10.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: _hMarginCard),
          child: ValueListenableBuilder<Map<String, dynamic>>(
            valueListenable: _typeCard,
            builder: (context, typeCard, child) {
              return DropdownButtonCustom<Map<String, dynamic>>(
                width: double.infinity,
                radius: 10.0,
                value: typeCard,
                items: <Map<String, dynamic>>[...mocPayment.map((e) => e)]
                    .map<DropdownMenuItem<Map<String, dynamic>>>(
                        (Map<String, dynamic> value) => DropdownMenuItem(
                              value: value,
                              child: Row(
                                children: [
                                  Image.asset(
                                    value['icon'],
                                    width: 30,
                                    height: 30,
                                  ),
                                  Text(' ${value['title']}')
                                ],
                              ),
                            ))
                    .toList(),
                onChange: _onChangeTypeCard,
              );
            },
          ),
        ),
        const SizedBox(height: 20.0),
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
      ],
    );
  }
}
