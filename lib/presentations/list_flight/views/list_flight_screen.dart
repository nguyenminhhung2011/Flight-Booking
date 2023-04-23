import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/presentations/list_flight/views/widgets/flight_wdiget_custom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/components/widgets/drop_down_button.dart';
import '../../../generated/l10n.dart';
import '../bloc/list_flight_bloc.dart';

class ListFlightScreen extends StatefulWidget {
  const ListFlightScreen({super.key});

  @override
  State<ListFlightScreen> createState() => _ListFlightScreenState();
}

class _ListFlightScreenState extends State<ListFlightScreen> {
  ListFlightBloc get _bloc => BlocProvider.of<ListFlightBloc>(context);

  late final _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController();
    _bloc.add(const ListFlightEvent.started());
    _bloc.add(const ListFlightEvent.getFlights());
  }

  void viewDetail(String ticId) {
    // _bloc.add(ListTicEvent.selectTic(ticId));
    context.startFlightDetail(ticId);
  }

  void _listenStateChanged(_, state) {
    state.whenOrNull(
      selectListTicSuccess: (data, ticID) {
        context.startFlightDetail(ticID);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final widthField = MediaQuery.of(context).size.width;
    final heightField = MediaQuery.of(context).size.height;
    List<Map<String, dynamic>> listSearchFlightOptions = [
      {
        'title': S.of(context).times,
        'icon': Icons.timelapse_outlined,
        'color': Colors.blue
      },
      {
        'title': S.of(context).price,
        'icon': Icons.attach_money_outlined,
        'color': Colors.orange,
      },
      {
        'title': S.of(context).more,
        'icon': Icons.filter,
        'color': Colors.purple,
      },
    ];
    return BlocConsumer<ListFlightBloc, ListFlightState>(
      listener: _listenStateChanged,
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          body: Column(
            children: [
              const SizedBox(height: 10.0),
              ListTile(
                title: Text(
                  S.of(context).listTicket,
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                  maxLines: 1,
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
              const SizedBox(height: 10.0),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(10.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: heightField / 3,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                          ),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/airport.jpg'),
                          ),
                        ),
                      ),
                      ListView(
                        children: [
                          SizedBox(height: heightField / 4.5),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: SizedBox(
                              width: double.infinity,
                              height: 40.0,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  ...listSearchFlightOptions.map(
                                    (e) => DropdownButotn(
                                      backgroundColor:
                                          Theme.of(context).cardColor,
                                      onPress: () {},
                                      child: Row(
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.all(5.0),
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: e['color'],
                                            ),
                                            child: Icon(e['icon'], size: 14.0),
                                          ),
                                          Text(
                                            e['title'],
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleSmall,
                                          ),
                                          const Icon(
                                            Icons.keyboard_arrow_down_sharp,
                                            size: 14,
                                          ),
                                        ]
                                            .expand((element) => [
                                                  element,
                                                  const SizedBox(width: 10.0)
                                                ])
                                            .toList()
                                          ..removeLast(),
                                      ),
                                    ),
                                  )
                                ]
                                    .expand((element) =>
                                        [element, const SizedBox(width: 10.0)])
                                    .toList()
                                  ..removeLast(),
                              ),
                            ),
                          ),
                          for (int i = 0; i < 10; i++)
                            FlightWdigetCustom(
                              viewDetail: () => viewDetail(i.toString()),
                            ),
                        ]
                            .expand((element) =>
                                [element, const SizedBox(height: 10.0)])
                            .toList(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}