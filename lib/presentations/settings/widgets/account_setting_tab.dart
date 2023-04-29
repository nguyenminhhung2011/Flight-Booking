import 'package:flight_booking/core/config/common_ui_config.dart';
import 'package:flight_booking/presentations/settings/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

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
                      Text('Password Settings',
                          style: Theme.of(context).textTheme.bodyMedium),
                      const SizedBox(height: 30),
                      Text(
                        'Current Password',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(height: 5),
                      CustomerTextField(
                        isPasswordField: true,
                        hint: 'Enter your Current password',
                        trailingIcon: Icon(
                          Icons.remove_red_eye_outlined,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Text(
                        'New Password',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(height: 5),
                      CustomerTextField(
                        isPasswordField: true,
                        hint: 'Enter your New password',
                        trailingIcon: Icon(
                          Icons.remove_red_eye_outlined,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Text(
                        'Retype Password',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(height: 5),
                      CustomerTextField(
                        isPasswordField: true,
                        hint: 'Retype Password',
                        trailingIcon: Icon(
                          Icons.remove_red_eye_outlined,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Center(
                        child: SizedBox(
                          height: 40,
                          width: constraints.maxWidth * 0.3,
                          child: TextButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Theme.of(context).primaryColor,
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    CommonAppUIConfig.primaryRadiusBorder,
                              ),
                            ),
                            child: Text(
                              'Change password',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                  ),
                            ),
                            onPressed: () async {},
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
