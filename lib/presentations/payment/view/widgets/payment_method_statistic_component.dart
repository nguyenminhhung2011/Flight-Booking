import 'package:flutter/material.dart';

import '../../../../core/config/common_ui_config.dart';
import '../../../../generated/l10n.dart';

class PaymentMethodStatisticComponent extends StatelessWidget {
  final double? height;
  const PaymentMethodStatisticComponent({super.key, this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 250,
      child: Card(
        color: Theme.of(context).cardColor,
        shape: RoundedRectangleBorder(
            borderRadius: CommonAppUIConfig.primaryRadiusBorder),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.of(context).totalRevenueToday,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
                Text(
                  "\$473.85",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: const LinearProgressIndicator(
                          color: Colors.red,
                          value: 1,
                          minHeight: 12,
                          backgroundColor: Colors.amber,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: const LinearProgressIndicator(
                          color: Colors.amber,
                          value: 1,
                          minHeight: 12,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: const LinearProgressIndicator(
                          color: Colors.blue,
                          value: 1,
                          minHeight: 12,
                          backgroundColor: Colors.green,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: _buildAnnotateComponent(
                        context,
                        percent: 15,
                        title: "Test",
                        color: Colors.red,
                      ),
                    ),
                    Expanded(
                      child: _buildAnnotateComponent(
                        context,
                        percent: 15,
                        title: "Test",
                        color: Colors.orange,
                      ),
                    ),
                    Expanded(
                      child: _buildAnnotateComponent(
                        context,
                        percent: 15,
                        title: "Test",
                        color: Colors.blue,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAnnotateComponent(
    BuildContext context, {
    required int percent,
    required String title,
    required Color color,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$percent%",
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        ListTile(
          minLeadingWidth: 5,
          horizontalTitleGap: 15,
          dense: true,
          contentPadding: const EdgeInsets.all(0),
          leading: Icon(Icons.circle, size: 20, color: color),
          title: Text(
            title,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis),
          ),
        )
      ],
    );
  }
}
