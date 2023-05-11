import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../core/components/widgets/card_custom.dart';
import '../../../../core/components/widgets/line_chart_custom.dart';

class ChartCardItem extends StatelessWidget {
  final String headerText;
  final List<String> bottom;
  final List<double> data;
  const ChartCardItem({
    super.key,
    // required this.headerText,
    required this.bottom,
    required this.data,
    required this.headerText,
  });

  @override
  Widget build(BuildContext context) {
    return CardCustom(
      padding: const EdgeInsets.all(15.0),
      margin: const EdgeInsets.all(10.0),
      height: 300.0,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      headerText,
                      maxLines: 1,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          overflow: TextOverflow.ellipsis),
                    ),
                    const SizedBox(height: 3.0),
                    Text(
                      '1,102,103',
                      maxLines: 1,
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontWeight: FontWeight.bold,
                          overflow: TextOverflow.ellipsis),
                    )
                  ],
                ),
              ),
            ],
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: LineChartDesign(
                maxTitle: "35k",
                middleTitle: "17k",
                height: 200,
                listData: [
                  for (int i = 0; i < data.length; i++)
                    FlSpot(i.toDouble(), data[i])
                ]),
          ),
        ],
      ),
    );
  }
}
