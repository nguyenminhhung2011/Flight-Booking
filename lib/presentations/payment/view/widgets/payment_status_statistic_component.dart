import 'package:flight_booking/core/components/widgets/payment_status_utils.dart';
import 'package:flight_booking/presentations/payment_management/bloc/model_state_data/payment_status_state_data.dart';
import 'package:flutter/material.dart';

import '../../../../core/components/enum/payment_status_enum.dart';
import '../../../../core/config/common_ui_config.dart';
import '../../../../generated/l10n.dart';

class PaymentStatusStatisticComponent extends StatelessWidget {
  final double? height;
  final PaymentStatusStateData paymentStatusData;
  const PaymentStatusStatisticComponent(
      {super.key, this.height, required this.paymentStatusData});

  Widget _buildStatusStatisticItem(
      BuildContext context, PaymentStatus status, int num) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: status.getColorBaseOnStatus().shade300,
        ),
        child: Icon(
          status.getIconBaseOnStatus(),
          size: 30,
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 5),
      minLeadingWidth: 0,
      title: Text(
        status.name,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w600, overflow: TextOverflow.ellipsis),
      ),
      subtitle: Text(
        num.toString(),
        style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 250,
      child: Card(
        color: Theme.of(context).cardColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(CommonAppUIConfig.kNormalCorner),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  S.of(context).paymentStatusStatistic,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      overflow: TextOverflow.ellipsis),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                        child: _buildStatusStatisticItem(context,
                            PaymentStatus.create, paymentStatusData.create)),
                    Expanded(
                        child: _buildStatusStatisticItem(
                            context,
                            PaymentStatus.declined,
                            paymentStatusData.declined)),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        child: _buildStatusStatisticItem(context,
                            PaymentStatus.pending, paymentStatusData.pending)),
                    Expanded(
                        child: _buildStatusStatisticItem(
                            context,
                            PaymentStatus.succeeded,
                            paymentStatusData.succeeded)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
