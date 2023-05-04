import 'package:flutter/material.dart';

import '../../../core/config/common_ui_config.dart';
import 'custom_textfield.dart';

// ignore: must_be_immutable
class PrincipleSettingTab extends StatelessWidget {
  const PrincipleSettingTab({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 0.2),
        borderRadius: CommonAppUIConfig.primaryRadiusBorder,
      ),
      child: LayoutBuilder(
        builder: (_, constraints) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Principle Settings',
                    style: Theme.of(context).textTheme.bodyMedium),
                const SizedBox(height: 30),
                Text(
                  "Number of Airports",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 5),
                CustomerTextField(
                  controller: TextEditingController(text: "10"),
                  isPasswordField: true,
                  trailingIcon: Icon(
                    Icons.remove_red_eye_outlined,
                    color: Theme.of(context).primaryColor,
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
