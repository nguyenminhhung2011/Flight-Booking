import 'package:collection/collection.dart';
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';

import '../../../core/config/color_config.dart';
import '../../list_flight/views/widgets/flight_wdiget_custom.dart';

class FlightDetailScreen extends StatefulWidget {
  const FlightDetailScreen({super.key});

  @override
  State<FlightDetailScreen> createState() => _FlightDetailScreenState();
}

class _FlightDetailScreenState extends State<FlightDetailScreen> {
  ValueNotifier<double> dumbData = ValueNotifier<double>(1000.0);
  @override
  Widget build(BuildContext context) {
    final List<String> chairCharacyer = ['A', 'B', 'C', 'D'];
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Row(
        children: [
          _main(context),
          Breakpoints.large.isActive(context)
              ? _sup(context, chairCharacyer)
              : const SizedBox(),
        ],
      ),
    );
  }

  Container _sup(BuildContext context, List<String> chairCharacyer) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.only(top: 10.0, right: 10.0, bottom: 10.0),
      width: 400,
      height: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Theme.of(context).cardColor,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor.withOpacity(0.1),
          )
        ],
      ),
      child: ListView(
        children: [
          _shadowBox(
            context,
            Column(
              children: const [],
            ),
          ),
          ValueListenableBuilder(
            valueListenable: dumbData,
            builder: (context, dumb, widget) => AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: dumbData.value,
            ),
          ),
          const Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.airplanemode_on,
              color: CommonColor.primaryColor,
            ),
          ),
          _shadowBox(
            context,
            Row(
              children: [
                for (int i = 0; i < 4; i++)
                  Column(
                    children: [
                      for (int t = 0; t < 6; t++)
                        ChairButton(
                          chairCharacyer: chairCharacyer,
                          text: '${chairCharacyer[i]} $t',
                          check: (i + t) % 2 == 0,
                        ),
                    ],
                  ),
              ]
                  .expandIndexed(
                    (index, element) => [
                      element,
                      index == 1
                          ? Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 400,
                                    decoration: DottedDecoration(
                                      color: Theme.of(context).dividerColor,
                                      shape: Shape.line,
                                      linePosition: LinePosition.left,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : const SizedBox()
                    ],
                  )
                  .toList(),
            ),
          ),
        ].expand((element) => [element, const SizedBox(height: 10.0)]).toList(),
      ),
    );
  }

  Container _shadowBox(BuildContext context, Widget widget) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Theme.of(context).cardColor,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor.withOpacity(0.1),
            blurRadius: 10.0,
          ),
        ],
      ),
      child: widget,
    );
  }

  Expanded _main(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Theme.of(context).primaryColor.withOpacity(0.1),
        ),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/airport.jpg'),
                ),
              ),
            ),
            ListView(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height / 4.5),
                FlightWdigetCustom(
                  viewDetail: () {
                    dumbData.value = 1000.0 - dumbData.value;
                  },
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20.0),
                  padding: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Theme.of(context).cardColor,
                  ),
                ),
              ]
                  .expand((element) => [element, const SizedBox(height: 10.0)])
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class ChairButton extends StatelessWidget {
  const ChairButton({
    super.key,
    required this.chairCharacyer,
    required this.text,
    required this.check,
  });

  final List<String> chairCharacyer;
  final String text;
  final bool check;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color:
              check ? Theme.of(context).hoverColor : CommonColor.primaryColor,
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
