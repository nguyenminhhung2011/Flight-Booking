import 'package:countries_world_map/countries_world_map.dart';
import 'package:countries_world_map/data/maps/world_map.dart';
import 'package:extended_image/extended_image.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../core/components/widgets/drop_down_button.dart' as customize;

import '../../../core/components/widgets/line_chart_custom.dart';
import '../../../core/config/common_ui_config.dart';
import '../../../generated/l10n.dart';

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
    final widthField = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: ListView(
        children: [
          const SizedBox(height: 10.0),
          ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.of(context).dashboard,
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                  maxLines: 1,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    S.of(context).addNewWidgets,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Theme.of(context).primaryColor,
                        ),
                    maxLines: 1,
                  ),
                )
              ],
            ),
            trailing: SizedBox(
              width: widthField * 0.4,
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
            children: [
              for (int i = 0; i < 3; i++)
                Expanded(
                  flex: i == 2 ? 2 : 1,
                  child: ChartCardItem(),
                ),
            ]
                .expand((element) => [element, const SizedBox(width: 10.0)])
                .toList()
              ..removeLast(),
          ),
        ],
      ),
    );
  }
}

class ChartCardItem extends StatelessWidget {
  const ChartCardItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15.0),
      margin: const EdgeInsets.all(10.0),
      height: 300.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor.withOpacity(0.2),
            blurRadius: 5.0,
          )
        ],
        color: Theme.of(context).cardColor,
      ),
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
                      S.of(context).flightChartView,
                      maxLines: 1,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          overflow: TextOverflow.ellipsis),
                    ),
                    const SizedBox(height: 3.0),
                    Text(
                      '1,102,103',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontWeight: FontWeight.bold,
                          overflow: TextOverflow.ellipsis),
                    )
                  ],
                ),
              ),
              customize.DropdownButton(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'This month',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Theme.of(context).shadowColor.withOpacity(0.3),
                    )
                  ]
                      .expand(
                          (element) => [element, const SizedBox(width: 5.0)])
                      .toList()
                    ..removeLast(),
                ),
                onPress: () {},
              ),
            ],
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: LineChartDesign(
              maxTitle: "35k",
              middleTitle: "17k",
              height: 200,
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
        ],
      ),
    );
  }
}
// SimpleMap(
//                       instructions: SMapWorld.instructions,
//                       defaultColor: Colors.grey,

//                       colors: const SMapWorldColors(
//                         uS: Colors.green, // This makes USA green
//                         cN: Colors.green, // This makes China green
//                       ).toMap(),

//                       // Details of what area is being touched, giving you the ID, name and tapdetails
//                       callback: (id, name, tapdetails) {},
//                     ),