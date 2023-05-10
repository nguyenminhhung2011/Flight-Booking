import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartDesign extends StatefulWidget {
  final List<FlSpot> listData;

  final Color? color;
  final Color? color1;
  final String? maxTitle;
  final String? middleTitle;
  final double? width;
  final double? height;
  const LineChartDesign(
      {super.key,
      required this.listData,
      this.color,
      this.color1,
      this.maxTitle,
      this.middleTitle,
      this.width,
      this.height});

  @override
  State<LineChartDesign> createState() => _LineChartDesignState();
}

class _LineChartDesignState extends State<LineChartDesign> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width ?? double.infinity,
      height: widget.height ?? double.infinity,
      child: LineChart(
        mainData(),
      ),
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    var style = Theme.of(context).textTheme.titleSmall;

    Widget text;
    switch (value.toInt()) {
      case 0:
        text = Text('Sun', style: style);
        break;
      case 1:
        text = Text('Mon', style: style);
        break;
      case 2:
        text = Text('Tue', style: style);
        break;
      case 3:
        text = Text('Wed', style: style);
        break;
      case 4:
        text = Text('Thu', style: style);
        break;
      case 5:
        text = Text('Fri', style: style);
        break;
      case 6:
        text = Text('Sat', style: style);
        break;

      default:
        text = Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    var style = Theme.of(context).textTheme.titleSmall;
    String text;
    switch (value.toInt()) {
      case 0:
        text = '0';
        break;
      case 3:
        text = widget.middleTitle ?? '5';
        break;
      case 5:
        text = widget.maxTitle ?? '10';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.left);
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: false,
        drawHorizontalLine: true,
        horizontalInterval: 1,
        verticalInterval: 1,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: Theme.of(context).dividerColor,
            strokeWidth: 0.8,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 0.2,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          drawBehindEverything: true,
          sideTitles: SideTitles(showTitles: false, reservedSize: 1),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
        border: Border.all(color: Theme.of(context).dividerColor, width: 0.2),
      ),
      minX: 0,
      maxX: 6,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: widget.listData,
          isCurved: true,
          gradient: LinearGradient(
            colors: [
              Colors.blue.withOpacity(0.4),
              Colors.blue,
            ],
          ),
          barWidth: 1.5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: true,
          ),
          belowBarData: BarAreaData(
            show: false,
          ),
        ),
      ],
    );
  }
}
