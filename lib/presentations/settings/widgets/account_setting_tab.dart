import 'package:flight_booking/core/config/common_ui_config.dart';
import 'package:flight_booking/presentations/settings/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';

// ignore: must_be_immutable
class AccountSettingTab extends StatelessWidget {
  const AccountSettingTab({super.key});

  final bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 0.2),
        borderRadius: CommonAppUIConfig.primaryRadiusBorder,
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return isLoading
              ? const Center(child: CircularProgressIndicator())
              : SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: Image.asset(
                          'images/password-manager.png',
                          filterQuality: FilterQuality.high,
                          height: 50,
                          width: 50,
                          fit: BoxFit.contain,
                        ),
                        title: Text(S.of(context).passwordSettings,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(fontWeight: FontWeight.bold)),
                      ),
                      const SizedBox(height: 30),
                      Text(
                        S.of(context).currentPassword,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      CustomerTextField(
                        isDense: true,
                        isPasswordField: true,
                        hint: S.of(context).enterCurrentPassword,
                        trailingIcon: Icon(
                          Icons.remove_red_eye_outlined,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Text(
                        S.of(context).newPassword,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      CustomerTextField(
                        isDense: true,
                        isPasswordField: true,
                        hint: S.of(context).enterNewPassword,
                        trailingIcon: Icon(
                          Icons.remove_red_eye_outlined,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Text(
                        S.of(context).retypePassword,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      CustomerTextField(
                        isDense: true,
                        isPasswordField: true,
                        hint: S.of(context).retypePassword,
                        trailingIcon: Icon(
                          Icons.remove_red_eye_outlined,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      CommonAppUIConfig.primaryRadiusBorder),
                              minimumSize: Size(
                                  MediaQuery.of(context).size.width * 0.5, 50),
                              backgroundColor: Theme.of(context).primaryColor),
                          child: Text(
                            S.of(context).changePassword,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
        },
      ),
    );
  }
}
