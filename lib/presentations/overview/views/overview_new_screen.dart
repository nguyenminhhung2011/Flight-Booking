import 'package:collection/collection.dart';
import 'package:countries_world_map/countries_world_map.dart';
import 'package:countries_world_map/data/maps/world_map.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/config/color_config.dart';
import 'package:flight_booking/core/constant/constant.dart';
import 'package:flight_booking/core/constant/handle_time.dart';
import 'package:flight_booking/presentations/overview/views/widgets/chart_card_item.dart';
import 'package:flight_booking/presentations/overview/views/widgets/column_char_two_column_custom.dart';
import 'package:flight_booking/presentations/overview/views/widgets/data_overview_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../../core/components/widgets/card_custom.dart';
import '../../../core/components/widgets/custom_row_column.dart';

import '../../../core/components/widgets/range_date_picker_custom.dart';
import '../../../core/components/widgets/swiper_custom.dart';
import '../../../generated/l10n.dart';
import '../../customer/views/widgets/customer_detail_screen.dart';
import '../../dashboard/views/widgets/flight_information_row.dart';

class OverviewNewScreen extends StatefulWidget {
  const OverviewNewScreen({super.key});

  @override
  State<OverviewNewScreen> createState() => _OverviewNewScreenState();
}

class _OverviewNewScreenState extends State<OverviewNewScreen> {
  late TextEditingController _textController;
  @override
  void initState() {
    super.initState();
    _textController = TextEditingController();
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: ListView(
        children: [
          ListTile(
            title: Text(
              S.of(context).dashboard,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontWeight: FontWeight.bold),
              maxLines: 1,
            ),
            trailing: SizedBox(
              width: 500,
              child: CupertinoSearchTextField(
                padding: const EdgeInsets.all(10.0),
                controller: _textController,
                enabled: true,
                style: Theme.of(context).textTheme.titleMedium,
                onChanged: (value) {},
                onSubmitted: (value) {},
                backgroundColor:
                    Theme.of(context).primaryColor.withOpacity(0.05),
                placeholder: S.of(context).searchAnything,
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 6,
                child: LayoutBuilder(
                  builder: (context, constraints) => SwiperCustom(
                    margin: const EdgeInsets.all(0.0),
                    isShowSlideDot: false,
                    height: 350,
                    itemCount: mockDataImag.length,
                    autoPlay: true,
                    spacingItem: 10.0,
                    itemBuilder: (index) => CardCustom(
                      margin: const EdgeInsets.all(0.0),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(mockDataImag[index]),
                      )),
                    ),
                    swiperLayout: SwiperLayout.TINDER,
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: LayoutBuilder(
                  builder: (context, cosntraints) => SizedBox(
                    height: 350,
                    width: double.infinity,
                    child: Stack(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              S.of(context).flightAdmin,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10.0),
                            CardCustom(
                              margin: const EdgeInsets.only(right: 10.0),
                              padding: const EdgeInsets.all(20.0),
                              height: 250,
                              decoration: const BoxDecoration(
                                boxShadow: [],
                                color: CommonColor.primaryColor,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    S.of(context).welcomeoFlightAdmin,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge!
                                        .copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                          color: Colors.white,
                                        ),
                                  ),
                                  ...sogun.map(
                                    (e) => Row(
                                      children: [
                                        Container(
                                          height: 7,
                                          width: 7,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white,
                                          ),
                                        ),
                                        const SizedBox(width: 10.0),
                                        Text(
                                          e,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Image.asset(
                              'assets/images/air.png',
                              fit: BoxFit.fill,
                              width: cosntraints.maxWidth * 0.45,
                              height: cosntraints.maxWidth * 0.4,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          //
          //
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  S.of(context).overview,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const RangeDatePicButton()
              ],
            ),
          ),
          CustomRowColumn(
            isRow: Breakpoints.large.isActive(context),
            children: mockDataOverview
                .map((e) => FlexItemRowColumData(
                      data: DataOverviewItem(
                        headerText: e['header'],
                        data: e['data'],
                        oldData: e['oData'],
                      ),
                    ))
                .toList(),
          ),
          CustomRowColumn(
            isRow: Breakpoints.large.isActive(context),
            children: [
              FlexItemRowColumData(
                data: ChartCardItem(
                    headerText: S.of(context).flightChartView,
                    bottom: date,
                    data: const [1.2, 4.4, 3.3, 2.4, 4.9, 3.3, 4]),
                flex: 1,
              ),
              FlexItemRowColumData(
                data: ChartCardItem(
                  headerText: S.of(context).customerChartView,
                  bottom: date,
                  data: const [1.2, 4.4, 3.3, 2.4, 4.9, 3.3, 4],
                ),
                flex: 1,
              ),
              FlexItemRowColumData(
                data: CardCustom(
                  height: 300.0,
                  child: ColumnChartTwoColumnCustom(
                    header: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          S.of(context).payment,
                          maxLines: 1,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  fontWeight: FontWeight.bold,
                                  overflow: TextOverflow.ellipsis),
                        ),
                        const SizedBox(height: 3.0),
                        Text(
                          '\$1,102,103',
                          maxLines: 1,
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                  fontWeight: FontWeight.bold,
                                  overflow: TextOverflow.ellipsis),
                        )
                      ],
                    ),
                    columnData: 300,
                    startDate: DateFormat().add_yMd().format(
                        DateTime.now().subtract(const Duration(days: -7))),
                    endDate: DateFormat().add_yMd().format(DateTime.now()),
                    barGroups: [
                      for (int i = 0; i < 7; i++)
                        makeGroupData(
                            i, i * 100 / 700 * 19.0, i + 100 / 201 * 19.0),
                    ],
                  ),
                ),
                flex: 1,
              )
            ],
          ),
          SizedBox(
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: CardCustom(
                    isShowHeight: false,
                    child: CustomRowColumnNotFlex(
                      isRow: false,
                      children: [
                        IsExpandItemRowColumData(
                          data: SizedBox(
                            width: double.infinity,
                            child: CardCustom(
                              margin: const EdgeInsets.all(0.0),
                              padding: const EdgeInsets.all(0.0),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Theme.of(context)
                                        .shadowColor
                                        .withOpacity(0.2),
                                    blurRadius: 10.0,
                                  )
                                ],
                              ),
                              height: 300,
                              child: SimpleMap(
                                instructions: SMapWorld.instructions,
                                defaultColor: Colors.grey,
                                colors: const SMapWorldColors(
                                  uS: Colors.green, // This makes USA green
                                  cN: Colors.red,
                                  vI: Colors.amber,
                                  iN: Colors.blue, // This makes China green
                                ).toMap(),
                                callback: (id, name, tapdetails) {},
                              ),
                            ),
                          ),
                        ),
                        IsExpandItemRowColumData(
                          isExpand: true,
                          data: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                S.of(context).listFlights,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              const FlightInformationRow(),
                              const FlightInformationRow(),
                              const FlightInformationRow(),
                            ]
                                .expand(
                                  (element) => [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10.0),
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
                        )
                      ],
                    ),
                  ),
                ),
                if (MediaQuery.of(context).size.width > 1200)
                  const CardCustom(
                    width: 400.0,
                    height: 400,
                    child: CustomerAirlinePieChart(),
                  )
              ],
            ),
          ),
        ]
            .expandIndexed(
                (index, element) => [const SizedBox(height: 10.0), element])
            .toList(),
      ),
    );
  }
}

class RangeDatePicButton extends StatefulWidget {
  const RangeDatePicButton({
    super.key,
  });

  @override
  State<RangeDatePicButton> createState() => _RangeDatePicButtonState();
}

class _RangeDatePicButtonState extends State<RangeDatePicButton> {
  final RangeDateController _rangeDateController = RangeDateController();
  @override
  void dispose() {
    _rangeDateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        final dates = await context.pickRangeDate(_rangeDateController);
        if (dates != null) {
          // print(dates);
        }
      },
      child: ChangeNotifierProvider(
        create: (_) => _rangeDateController,
        child: Text(
          getRangeDateFormat(
            _rangeDateController.startDate,
            _rangeDateController.endDate,
          ),
        ),
      ),
    );
  }
}

BarChartGroupData makeGroupData(int x, double y1, double y2) {
  return BarChartGroupData(barsSpace: 4, x: x, barRods: [
    BarChartRodData(
      toY: y1,
      color: Colors.blue.withOpacity(0.7),
      width: 7,
    ),
    BarChartRodData(
      toY: y2,
      color: Colors.red.withOpacity(0.7),
      width: 7,
    ),
  ]);
}

var date = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
