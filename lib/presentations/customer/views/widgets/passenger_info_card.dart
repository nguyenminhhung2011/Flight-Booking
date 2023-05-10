import 'package:flight_booking/core/config/common_ui_config.dart';
import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';

class PassengerInfoCard extends StatelessWidget {
  const PassengerInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.4,
          color: Theme.of(context).dividerColor.withOpacity(0.4),
        ),
        borderRadius: CommonAppUIConfig.primaryRadiusBorder,
      ),
      padding: const EdgeInsets.all(5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            dense: true,
            leading: FittedBox(
              child: Text(
                "Hoang Truong",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            trailing: FittedBox(
              child: Container(
                // height: 25.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  border: Border.all(width: 1.0, color: Colors.green),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
                child: Center(
                  child: Text(
                    S.of(context).businessClass,
                    style: const TextStyle(color: Colors.green),
                  ),
                ),
              ),
            ),
          ),
          Divider(
            color: Theme.of(context).dividerColor,
            thickness: 0.5,
            height: 15,
          ),
          ListTile(
            minVerticalPadding: 0,
            leading: Text(
              "ID",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).dividerColor.withOpacity(0.4),
                  ),
            ),
            trailing: Text(
              "#123412-65",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).dividerColor.withOpacity(0.4),
                  ),
            ),
          ),
          Divider(
            color: Theme.of(context).dividerColor,
            thickness: 0.5,
            height: 15,
          ),
          ListTile(
            minVerticalPadding: 0,
            leading: Text(
              "Age",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).dividerColor.withOpacity(0.4),
                  ),
            ),
            trailing: Text(
              "18",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).dividerColor.withOpacity(0.4),
                  ),
            ),
          ),
          Divider(
            color: Theme.of(context).dividerColor,
            thickness: 0.5,
            height: 15,
          ),
          ListTile(
            minVerticalPadding: 0,
            dense: true,
            leading: Text(
              "Gender",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).dividerColor.withOpacity(0.4),
                  ),
            ),
            trailing: Text(
              "Male",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).dividerColor.withOpacity(0.4),
                  ),
            ),
          ),
          Divider(
            color: Theme.of(context).dividerColor,
            thickness: 0.5,
            height: 15,
          ),
          ListTile(
            minVerticalPadding: 0,
            dense: true,
            leading: Text(
              "Checked Baggage Allowance",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).dividerColor.withOpacity(0.4),
                  ),
            ),
            trailing: Text(
              "15 KG",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).dividerColor.withOpacity(0.4),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
