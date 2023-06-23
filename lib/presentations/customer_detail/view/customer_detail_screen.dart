import 'package:fl_chart/fl_chart.dart';
import 'package:flight_booking/core/config/common_ui_config.dart';
import 'package:flight_booking/presentations/customer_detail/view/widgets/customer_detail_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_timeline/flutter_timeline.dart';
import 'package:intl/intl.dart';
import '../../../core/components/widgets/flux_table/flux_table_row.dart';
import '../../../core/components/widgets/flux_table/flux_ticket_table.dart';
import '../../../core/constant/handle_time.dart';
import '../../../domain/entities/customer/customer.dart';
import '../../../generated/l10n.dart';

class CustomerDetailScreen extends StatelessWidget {
  Widget _buildFlightHistoryTable(BuildContext context) {
    debugPrint("_buildFlightHistoryTable");
    return FluxTicketTable<Customer>(
      padding: const EdgeInsets.all(10),
      titleRow: FluxTableRow(
        margin: const EdgeInsets.symmetric(vertical: 5.0),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        rowDecoration: BoxDecoration(color: Theme.of(context).primaryColor),
        itemBuilder: (data, index) {
          if (data == null) return const SizedBox();
          return Text(data.toString());
        },
        rowData: [
          FlexRowTableData<String>(flex: 2, data: S.of(context).id),
          FlexRowTableData<String>(flex: 2, data: S.of(context).name),
          FlexRowTableData<String>(flex: 2, data: S.of(context).gender),
          FlexRowTableData<String>(
              flex: 3, data: S.of(context).email, alignment: Alignment.center),
          FlexRowTableData<String>(flex: 3, data: S.of(context).identityNum),
          FlexRowTableData<String>(flex: 3, data: S.of(context).phoneNumber),
          FlexRowTableData<String>(flex: 2, data: S.of(context).birthday),
          FlexRowTableData(flex: 1),
        ],
      ),
      data: [
        for (int i = 0; i < 50; i++)
          Customer(
            id: i,
            name: S.of(context).nameData(i),
            email: S.of(context).email,
            identifyNum: S.of(context).identityNum,
            phoneNumber: S.of(context).phoneNumber,
            gender: S.of(context).gender,
            birthday: DateTime.now(),
          ),
      ],
      rowBuilder: (data) {
        return FluxTableRow(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          itemBuilder: (data, index) {
            if (index == 0) {
              return Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.person),
                  ),
                  const SizedBox(width: 5),
                  if (data != null) Text(data as String),
                ],
              );
            }
            if (index == 7) {
              return PopupMenuButton(
                itemBuilder: (context) {
                  return [
                    PopupMenuItem(
                        child: Text(
                      "Edit",
                      style: Theme.of(context).textTheme.bodySmall,
                    )),
                    PopupMenuItem(
                        child: Text(
                      "Delete",
                      style: Theme.of(context).textTheme.bodySmall,
                    )),
                    PopupMenuItem(
                        child: Text(
                      "Detail",
                      style: Theme.of(context).textTheme.bodySmall,
                    )),
                  ];
                },
              );
            }
            return Text(data.toString());
          },
          rowData: [
            FlexRowTableData<String>(flex: 2, data: data.id.toString()),
            FlexRowTableData<String>(flex: 2, data: data.name),
            FlexRowTableData<String>(flex: 2, data: data.gender),
            FlexRowTableData<String>(
              flex: 3,
              data: data.email,
              alignment: Alignment.center,
            ),
            FlexRowTableData<String>(flex: 3, data: data.identifyNum),
            FlexRowTableData<String>(flex: 3, data: data.phoneNumber),
            FlexRowTableData<String>(
                flex: 2, data: getYmdFormat(data.birthday)),
            FlexRowTableData(flex: 1),
          ],
        );
      },
    );
  }

  const CustomerDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("Builded");
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              border:
                  Border.all(width: 0.2, color: Theme.of(context).cardColor),
              borderRadius: CommonAppUIConfig.primaryRadiusBorder),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    const Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Expanded(
                            child: CustomerInformationCard(),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: CustomerStatisticCard(),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: CustomerAirlinePieChart(),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Expanded(
                      flex: 2,
                      child: _buildFlightHistoryTable(context),
                    )
                  ],
                ),
              ),
              const SizedBox(width: 5),
              const Expanded(
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: FlightInformationCard(),
                    ),
                    Expanded(flex: 2, child: CustomerTicketInformationCard()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomerAirlinePieChart extends StatefulWidget {
  const CustomerAirlinePieChart({super.key});

  @override
  State<CustomerAirlinePieChart> createState() =>
      _CustomerAirlinePieChartState();
}

class _CustomerAirlinePieChartState extends State<CustomerAirlinePieChart> {
  int _touchIndex = -1;

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == _touchIndex;
      final fontSize = isTouched ? 20.0 : 16.0;
      final radius = isTouched ? 110.0 : 100.0;
      const shadows = [Shadow(color: Colors.black, blurRadius: 2)];

      switch (i) {
        case 0:
          return PieChartSectionData(
            color: Colors.blue,
            value: 40,
            title: '40%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffffff),
              shadows: shadows,
            ),
            badgePositionPercentageOffset: .98,
          );
        case 1:
          return PieChartSectionData(
            color: Colors.yellow,
            value: 30,
            title: '30%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffffff),
              shadows: shadows,
            ),
            badgePositionPercentageOffset: .98,
          );
        case 2:
          return PieChartSectionData(
            color: Colors.purple,
            value: 16,
            title: '16%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffffff),
              shadows: shadows,
            ),
            badgePositionPercentageOffset: .98,
          );
        case 3:
          return PieChartSectionData(
            color: Colors.green,
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffffff),
              shadows: shadows,
            ),
            badgePositionPercentageOffset: .98,
          );
        default:
          throw Exception('Oh no');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: Colors.blueGrey, width: 0.2),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: PieChart(
                PieChartData(
                  borderData: FlBorderData(show: false),
                  sectionsSpace: 0,
                  centerSpaceRadius: 0,
                  pieTouchData: PieTouchData(
                    touchCallback: (FlTouchEvent event, pieTouchResponse) {
                      setState(() {
                        if (!event.isInterestedForInteractions ||
                            pieTouchResponse == null ||
                            pieTouchResponse.touchedSection == null) {
                          _touchIndex = -1;
                          return;
                        }
                        _touchIndex = pieTouchResponse
                            .touchedSection!.touchedSectionIndex;
                      });
                    },
                  ),
                  sections: showingSections(),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(height: 20, width: 20, color: Colors.green),
                        Text(
                          "Some Text",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(height: 20, width: 20, color: Colors.green),
                        Text(
                          "Some Text",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(height: 20, width: 20, color: Colors.green),
                        Text(
                          "Some Text",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomerStatisticCard extends StatelessWidget {
  const CustomerStatisticCard({super.key});

  Widget _buildStatisticComponent(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.red[100],
            borderRadius: BorderRadius.circular(15),
          ),
          padding: const EdgeInsets.all(10),
          child: Icon(
            Icons.numbers,
            color: Colors.red[400],
            size: 30,
          ),
        ),
        const SizedBox(width: 12),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "15",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              "Flights",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(fontWeight: FontWeight.w200),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: Colors.blueGrey, width: 0.2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: SizedBox(
          height: double.infinity,
          child: Center(
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              childAspectRatio: 2,
              children: [
                _buildStatisticComponent(context),
                _buildStatisticComponent(context),
                _buildStatisticComponent(context),
                _buildStatisticComponent(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FlightInformationCard extends StatelessWidget {
  const FlightInformationCard({super.key});

  Widget get _buildPlaneIndicator {
    return Container(
      width: 24,
      height: 24,
      decoration: const BoxDecoration(
          color: Colors.lightBlue,
          borderRadius: BorderRadius.all(
            Radius.circular(64),
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.lightBlueAccent,
                blurRadius: 16,
                offset: Offset(0, 4))
          ]),
      child: const Icon(
        Icons.flight,
        color: Colors.white,
        size: 15,
      ),
    );
  }

  Widget _buildAirportTimeName(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "USA, Airport",
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        Text(
          DateFormat().add_yMd().add_Hm().format(DateTime.now()),
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: Theme.of(context).dividerColor.withOpacity(0.5)),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: Colors.blueGrey, width: 0.2),
      ),
      color: Theme.of(context).cardColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/icons/direct-flight.png",
                  height: 30,
                  width: 30,
                  fit: BoxFit.contain,
                ),
                const SizedBox(width: 5),
                Text(
                  "Flight Information",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Detail",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: Theme.of(context).primaryColor),
                  ),
                )
              ],
            ),
            Flexible(
              child: TimelineTheme(
                data: TimelineThemeData(
                    gutterSpacing: 5,
                    itemGap: 0,
                    lineColor: Theme.of(context).primaryColor),
                child: Timeline(
                  shrinkWrap: true,
                  indicatorSize: 30,
                  events: [
                    TimelineEventDisplay(
                      child: TimelineEventCard(
                        title: _buildAirportTimeName(context),
                        content: Text(
                            "someone commented on your timeline ${DateTime.now()}"),
                      ),
                      indicator: _buildPlaneIndicator,
                    ),
                    TimelineEventDisplay(
                      child: TimelineEventCard(
                        title: _buildAirportTimeName(context),
                        content: Text(
                            "someone commented on your timeline ${DateTime.now()}"),
                      ),
                      indicator: _buildPlaneIndicator,
                    ),
                    TimelineEventDisplay(
                      child: TimelineEventCard(
                        title: _buildAirportTimeName(context),
                        content: Text(
                            "someone commented on your timeline ${DateTime.now()}"),
                      ),
                      indicator: _buildPlaneIndicator,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
