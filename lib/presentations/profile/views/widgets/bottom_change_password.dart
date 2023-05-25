import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flutter/material.dart';

import '../../../../core/components/widgets/mobile/button_custom.dart';
import '../../../../core/components/widgets/mobile/text_field_custom.dart';
import '../../../../generated/l10n.dart';

const _hMargin = 15.0;

class BottomChangePassword extends StatefulWidget {
  const BottomChangePassword({
    super.key,
  });

  @override
  State<BottomChangePassword> createState() => _BottomChangePasswordState();
}

class _BottomChangePasswordState extends State<BottomChangePassword> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _rePasswordController = TextEditingController();
  @override
  void dispose() {
    _passwordController.dispose();
    _rePasswordController.dispose();
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
          S.of(context).changePassword,
          style: context.titleLarge.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10.0),
        TextFieldCustom(
          type: TextFieldType.backgroundShadow,
          paddingLeft: _hMargin,
          isPasswordField: true,
          paddingRight: _hMargin,
          headerText: S.of(context).password,
          headerTextStyle: headerStyle,
          hintStyle: context.titleMedium,
          hintText: S.of(context).enterYourPassword,
          spacingText: 10.0,
          controller: _passwordController,
          prefix: const Icon(Icons.lock_outline),
          textStyle: textStyle,
        ),
        const SizedBox(height: 10.0),
        TextFieldCustom(
          type: TextFieldType.backgroundShadow,
          paddingLeft: _hMargin,
          isPasswordField: true,
          paddingRight: _hMargin,
          headerText: S.of(context).rePassword,
          headerTextStyle: headerStyle,
          hintStyle: context.titleMedium,
          hintText: S.of(context).enterRePassword,
          spacingText: 10.0,
          controller: _rePasswordController,
          prefix: const Icon(Icons.lock_outline),
          textStyle: textStyle,
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
