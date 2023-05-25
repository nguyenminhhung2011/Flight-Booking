import 'package:fl_chart/fl_chart.dart';
import 'package:flight_booking/presentations/dashboard/views/widgets/check_expanded.dart';
import 'package:flight_booking/presentations/dashboard/views/widgets/flight_information_row.dart';
import 'package:flight_booking/presentations/dashboard/views/widgets/row_expanded.dart';
import 'package:flight_booking/presentations/overview/views/widgets/data_card.dart';
import 'package:flight_booking/presentations/overview/views/widgets/data_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';

import '../../../core/components/widgets/button_border.dart';
import '../../../core/components/widgets/drop_down_button.dart' as customize;
import '../../../core/components/widgets/line_chart_custom.dart';
import '../../../generated/l10n.dart';
import '../../dashboard/views/dashboard_screen.dart';

class OverviewScreen extends StatefulWidget {
  const OverviewScreen({super.key});

  @override
  State<OverviewScreen> createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
  @override
  void initState() {
    super.initState();
  }

  bool get checkMediumAndUp => Breakpoints.mediumAndUp.isActive(context);
  List<Map<String, dynamic>> widgetList = [
    {
      'color': Colors.blue,
      'header': 'Waiting list',
      'data': '840',
      'inc': 1.5,
      'image': 'assets/images/card.png'
    },
    {
      'color': const Color.fromARGB(255, 247, 60, 228),
      'header': 'Completed flights',
      'data': '235',
      'inc': 0.2,
      'image': 'assets/images/airplane-ticket.png'
    },
    {
      'color': Colors.black,
      'header': 'Total revenue',
      'data': '\$2m',
      'inc': -0.5,
      'image': 'assets/images/bar-chart.png'
    }
  ];
  List<String> product = ["Departure Date", "Booking type", "Date range"];
  @override
  Widget build(BuildContext context) {
    final widthField = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: ListView(
        children: [
          ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.of(context).overview,
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                  maxLines: 1,
                ),
              ],
            ),
            // trailing: SizedBox(
            //   width: widthField * 0.4,
            //   child: CupertinoSearchTextField(
            //     padding: const EdgeInsets.all(10.0),
            //     controller: _textController,
            //     enabled: true,
            //     style: Theme.of(context).textTheme.titleMedium,
            //     onChanged: (value) {},
            //     onSubmitted: (value) {},
            //     backgroundColor:
            //         Theme.of(context).primaryColor.withOpacity(0.05),
            //     placeholder: S.of(context).searchAnything,
            //   ),
            // ),
          ),
          Breakpoints.large.isActive(context)
              ? SizedBox(
                  width: widthField,
                  height: 400,
                  child: _overview(widthField),
                )
              : SizedBox(
                  width: double.infinity,
                  child: _overview(widthField),
                ),
          const SizedBox(height: 10.0),
          const SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    S.of(context).allBooking,
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                    maxLines: 1,
                  ),
                ),
                ButtonBorder(
                  children: [
                    const Icon(Icons.calendar_month_sharp, size: 16.0),
                    Text(
                      S.of(context).month,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: Theme.of(context).primaryColor,
                    )
                  ],
                  onPress: () {},
                ),
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            width: double.infinity,
            height: 40.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: false,
              children: [
                ...product.map(
                  (e) => customize.DropdownButton(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          e,
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Theme.of(context).shadowColor.withOpacity(0.3),
                        )
                      ]
                          .expand((element) =>
                              [element, const SizedBox(width: 5.0)])
                          .toList()
                        ..removeLast(),
                    ),
                    onPress: () {},
                  ),
                )
              ]
                  .expand((element) => [element, const SizedBox(width: 5.0)])
                  .toList(),
            ),
          ),
          const SizedBox(height: 10.0),
          if (checkMediumAndUp)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: RowExpanded(
                children: [
                  ...[
                    S.of(context).destination,
                    S.of(context).date,
                    S.of(context).people,
                  ].map(
                    (e) =>
                        Text(e, style: Theme.of(context).textTheme.titleSmall),
                  )
                ],
              ),
            ),
          const SizedBox(height: 10.0),
          Column(
            children: const [
              FlightInformationRow(),
              FlightInformationRow(),
              FlightInformationRow(),
            ]
                .expand(
                  (element) => [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Divider(
                        thickness: 0.5,
                        color: Theme.of(context).dividerColor,
                      ),
                    ),
                    element,
                  ],
                )
                .toList(),
          ),
        ],
      ),
    );
  }

  AdaptiveLayouRowCol _overview(double widthField) {
    return AdaptiveLayouRowCol(
      child: [
        Container(
          width: Breakpoints.large.isActive(context)
              ? widthField * 0.35
              : double.infinity,
          height: 380,
          margin: const EdgeInsets.all(10.0),
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Theme.of(context).cardColor,
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).shadowColor.withOpacity(0.1),
                blurRadius: 10.0,
              )
            ],
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          S.of(context).salePerformance,
                          maxLines: 1,
                          style:
                              Theme.of(context).textTheme.titleLarge!.copyWith(
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        Text(
                          S.of(context).visited10Of100Countries,
                          maxLines: 1,
                          style:
                              Theme.of(context).textTheme.titleSmall!.copyWith(
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  ButtonBorder(
                    onPress: () {},
                    children: [
                      const Icon(Icons.file_upload_outlined, size: 16.0),
                      Text(
                        S.of(context).export,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 10.0),
              const SizedBox(
                height: 180,
                width: double.infinity,
                child: LineChartDesign(
                  maxTitle: "35k",
                  middleTitle: "17k",
                  listData: [
                    FlSpot(0, 3.3),
                    FlSpot(1, 2.1),
                    FlSpot(2, 6.0),
                    FlSpot(3, 3.3),
                    FlSpot(4, 5.3),
                    FlSpot(5, 4.3),
                    FlSpot(6, 2.3),
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      width: 1,
                      color: Theme.of(context).dividerColor,
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: DataFied(
                            image: 'assets/images/bar-chart.png',
                            header: S.of(context).view,
                            data: '20,214'),
                      ),
                      Container(
                        width: 0.5,
                        height: double.infinity,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 15.0),
                        color: Theme.of(context).dividerColor,
                      ),
                      Expanded(
                        child: DataFied(
                            image: 'assets/images/folders.png',
                            header: S.of(context).sale,
                            data: '21,174'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        CheckExpanded(
          check: Breakpoints.large.isActive(context),
          child: Column(
            children: [
              ...widgetList.map(
                (e) => DataCard(data: e),
              ),
            ],
          ),
        )
      ],
    );
  }
}
