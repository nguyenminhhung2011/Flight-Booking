import 'package:fl_chart/fl_chart.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flutter/material.dart';

import '../../../../core/components/enum/tic_type_enum.dart';
import '../../../../core/config/common_ui_config.dart';
import '../../../../generated/l10n.dart';

class PieData<T> {
  final T tit;
  final double data;
  PieData({
    required this.tit,
    required this.data,
  });
}

class TicketTierStatisticComponent extends StatelessWidget {
  final double? height;
  final List<PieData<TicTypeEnum>> datas;
  const TicketTierStatisticComponent({
    super.key,
    this.height,
    required this.datas,
  });

  Widget _buildStatisticalDataComponent(
    BuildContext context, {
    required TicTypeEnum ticType,
    required double percent,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "$percent%",
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.w500,
              color: ticType.colorType,
              overflow: TextOverflow.ellipsis),
        ),
        const SizedBox(height: 5),
        Text(
          ticType.displayValue,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis),
        ),
      ],
    );
  }

  List<PieChartSectionData> showingSections() {
    return datas
        .map(
          (e) => PieChartSectionData(
            color: e.tit.colorType,
            value: e.data,
            radius: 40,
          ),
        )
        .toList();
  }

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
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      S.of(context).ticketTierStatistic,
                      style: context.titleLarge.copyWith(
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Column(
                      children: List.generate(
                        2,
                        (indexC) => Row(
                          children: List.generate(2, (indexR) {
                            final index = indexC * 2 + indexR;
                            return Expanded(
                              child: _buildStatisticalDataComponent(
                                context,
                                ticType: datas[index].tit,
                                percent: datas[index].data,
                              ),
                            );
                          }),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: PieChart(
                  PieChartData(
                    borderData: FlBorderData(show: false),
                    sectionsSpace: 0,
                    centerSpaceRadius: 55,
                    sections: showingSections(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
