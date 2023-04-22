import 'package:collection/collection.dart';
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flight_booking/core/components/enum/tic_type_enum.dart';
import 'package:flight_booking/presentations/flight_detail/bloc/flight_detail_bloc.dart';
import 'package:flight_booking/presentations/flight_detail/views/widgets/chair_button.dart';
import 'package:flight_booking/presentations/flight_detail/views/widgets/fast_view_tic.dart';
import 'package:flight_booking/presentations/flight_detail/views/widgets/icon_button.dart';
import 'package:flight_booking/presentations/flight_detail/views/widgets/tic_column.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/config/color_config.dart';
import '../../../generated/l10n.dart';
import '../../list_flight/bloc/list_flight_bloc.dart';
import '../../list_flight/views/widgets/flight_wdiget_custom.dart';

class FlightDetailScreen extends StatefulWidget {
  const FlightDetailScreen({super.key});

  @override
  State<FlightDetailScreen> createState() => _FlightDetailScreenState();
}

class _FlightDetailScreenState extends State<FlightDetailScreen> {
  FlightDetailBloc get _bloc => BlocProvider.of<FlightDetailBloc>(context);
  @override
  void initState() {
    super.initState();
    _bloc.add(const FlightDetailEvent.started());
  }

  void _listenStateChanged(_, state) {
    state.whenOrNull();
  }

  @override
  Widget build(BuildContext context) {
    final List<String> chairCharacyer = ['A', 'B', 'C', 'D'];
    return BlocConsumer<FlightDetailBloc, FlightDetailState>(
      listener: _listenStateChanged,
      builder: (context, state) {
        return Scaffold(
          floatingActionButton: Breakpoints.small.isActive(context)
              ? IconButton(
                  color: CommonColor.primaryColor,
                  onPressed: () {},
                  icon: const Icon(Icons.airplanemode_active),
                )
              : const SizedBox(),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          body: Row(
            children: [
              _main(context),
              Breakpoints.large.isActive(context)
                  ? _sup(context, chairCharacyer, state.data.animation)
                  : const SizedBox(),
            ],
          ),
        );
      },
    );
  }

  Container _sup(
      BuildContext context, List<String> chairCharacyer, double animation) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.only(top: 10.0, right: 10.0, bottom: 10.0),
      width: 400,
      height: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Theme.of(context).primaryColor.withOpacity(0.2),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor.withOpacity(0.1),
          )
        ],
      ),
      child: ListView(
        children: [
          const FastViewTic(
            ticType: TicTypeEnum.businessClass,
          ),
          AnimatedContainer(
            duration: const Duration(seconds: 1),
            height: animation,
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
                          check: (i + t) % 3 == 0,
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
                  viewDetail: () {},
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButtonCustom(
                      iconData: Icons.list,
                      onPress: () {},
                      isSec: true,
                    ),
                    IconButtonCustom(
                      iconData: Icons.grid_view_sharp,
                      onPress: () {},
                      isSec: false,
                    ),
                    const SizedBox(width: 20.0),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(width: 20.0),
                      TicColumn(
                        color: Colors.blue,
                        header: S.of(context).economyClass,
                        count: 10,
                      ),
                      TicColumn(
                        color: Colors.red,
                        header: S.of(context).premiumEconomyClass,
                        count: 10,
                      ),
                      TicColumn(
                        color: Colors.yellow,
                        header: S.of(context).businessClass,
                        count: 10,
                      ),
                      TicColumn(
                        color: Colors.green,
                        header: S.of(context).premiumEconomyClass,
                        count: 10,
                      ),
                    ]
                        .expand(
                            (element) => [element, const SizedBox(width: 10.0)])
                        .toList(),
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
