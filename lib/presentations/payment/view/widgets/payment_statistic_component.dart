import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flutter/material.dart';

class PaymentStatisticComponent extends StatelessWidget {
  const PaymentStatisticComponent({
    super.key,
    required this.title,
    required this.imageAssets,
    required this.data,
  });

  final String title;
  final int data;
  final String imageAssets;

  @override
  Widget build(BuildContext context) {
    final titleStyle =
        context.titleLarge.copyWith(overflow: TextOverflow.ellipsis);
    return Card(
      color: Theme.of(context).cardColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imageAssets),
                      fit: BoxFit.contain,
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    title,
                    maxLines: 1,
                    textAlign: TextAlign.end,
                    style: titleStyle.copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    data.toString(),
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).iconTheme.color,
                        overflow: TextOverflow.ellipsis),
                  ),
                ),
                const Spacer(),
                Icon(
                  Icons.show_chart,
                  color: Theme.of(context).primaryColor,
                  size: 30,
                ),
                Text(
                  "+20%",
                  style: context.titleMedium.copyWith(
                    color: Theme.of(context).primaryColor,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
