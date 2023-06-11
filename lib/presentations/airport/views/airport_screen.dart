import 'dart:developer';

import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/domain/entities/airport/airport.dart';
import 'package:flight_booking/presentations/add_edit_airport/views/add_edit_airport_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/components/widgets/flux_table/flux_table_row.dart';
import '../../../core/components/widgets/flux_table/flux_ticket_table.dart';
import '../../../core/components/widgets/mobile/button_custom.dart';
import '../../../core/config/color_config.dart';
import '../../../generated/l10n.dart';
import '../bloc/airport_bloc.dart';
import '../bloc/airport_model_state.dart';
import 'airport_fast_view.dart';

class AirportScreen extends StatefulWidget {
  const AirportScreen({super.key});

  @override
  State<AirportScreen> createState() => _AirportScreenState();
}

class _AirportScreenState extends State<AirportScreen> {
  late final textController;

  AirportBloc get _bloc => BlocProvider.of<AirportBloc>(context);

  @override
  void initState() {
    super.initState();
    _bloc.add(const AirportEvent.onStarted());
    _bloc.add(const AirportEvent.fetchAirports());
    textController = TextEditingController();
  }

  void _onUpdateAirportsAfterAdd(Airport airport) {
    _bloc.add(AirportEvent.updateAirportsAfterAdd(airport));
  }

  void _onUpdateAirportAfterEdit(Airport airport) {
    _bloc.add(AirportEvent.updateAirportsAfterEdit(airport));
  }

  void _listenStateChange(BuildContext context, AirportState state) {
    state.whenOrNull(
      openAddEditAirportSuccess: (state, id) async {
        Map result = await context.openDialogAdDEditAirport(id);
        var type = result['type'];
        var airport = result['airport'];
        if (airport != null && airport is Airport) {
          if (type != null && type is TypeUpdateAirportForm) {
            if (type.isEdit) {
              _onUpdateAirportAfterEdit(airport);
            } else {
              _onUpdateAirportsAfterAdd(airport);
            }
          }
        }
      },
      fetchAirportsFailed: (data, error) {
        log(error);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AirportBloc, AirportState>(
      listener: _listenStateChange,
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          body: Row(
            children: [
              AirportMainScreen(state: state),
              Breakpoints.large.isActive(context)
                  ? AirportFastView(state: state)
                  : const SizedBox(),
            ],
          ),
        );
      },
    );
  }
}

class AirportMainScreen extends StatefulWidget {
  final AirportState state;
  const AirportMainScreen({
    super.key,
    required this.state,
  });

  @override
  State<AirportMainScreen> createState() => _AirportMainScreenState();
}

class _AirportMainScreenState extends State<AirportMainScreen> {
  AirportModelState get _data => widget.state.data;
  List<Airport> get _airports => _data.airports;
  AirportBloc get _bloc => context.read<AirportBloc>();

  void openAddEditFlightDialog(String id) {
    _bloc.add(AirportEvent.openAddEditAirportForm(id));
  }

  void deleteAirport(String id) {
    _bloc.add(AirportEvent.deleteAirport(id));
  }

  void _onRefreshAirport() {
    _bloc.add(const AirportEvent.fetchAirports());
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  S.of(context).airport,
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                  maxLines: 1,
                ),
                const Spacer(),
                ButtonCustom(
                  width: 150,
                  height: 35,
                  radius: 5,
                  child: Text(S.of(context).addNewAirport),
                  onPress: () => openAddEditFlightDialog(''),
                ),
                const SizedBox(width: 5.0),
                ButtonCustom(
                  width: 100,
                  height: 35,
                  radius: 5,
                  onPress: _onRefreshAirport,
                  child: const Text('Refresh'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            flex: 1,
            child: FluxTicketTable<Airport>(
              loading: widget.state.isLoading,
              padding: const EdgeInsets.all(10),
              titleRow: FluxTableRow(
                margin: const EdgeInsets.symmetric(vertical: 5.0),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                rowDecoration:
                    BoxDecoration(color: Theme.of(context).primaryColor),
                itemBuilder: (data, index) {
                  return Text(
                    data.toString(),
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  );
                },
                rowData: [
                  FlexRowTableData<String>(flex: 1, data: S.of(context).id),
                  FlexRowTableData<String>(flex: 1, data: S.of(context).name),
                  FlexRowTableData<String>(flex: 1, data: S.of(context).image),
                  FlexRowTableData<String>(
                      flex: 1, data: S.of(context).location),
                  FlexRowTableData<String>(
                      flex: 1, data: S.of(context).actions),
                ],
              ),
              data: [..._airports],
              rowBuilder: (airportData) {
                return FluxTableRow(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  itemBuilder: (data, index) {
                    if (index == 0) {
                      return Text('Airport ${data.toString()}');
                    }
                    if (index == 3) {
                      return Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 14,
                            color: Theme.of(context).primaryColor,
                          ),
                          const SizedBox(width: 5),
                          Expanded(
                              child: Text(
                            data as String,
                            maxLines: 1,
                          )),
                        ],
                      );
                    } else if (index == 2) {
                      if (data.toString().isEmpty) {
                        return const SizedBox();
                      }
                      return Container(
                        width: 80.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(data.toString()),
                          ),
                        ),
                      );
                    } else if (index == 4) {
                      return SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ElevatedButton(
                              onPressed: () => openAddEditFlightDialog(
                                airportData.id.toString(),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: CommonColor
                                    .primaryColor, // Background color
                              ),
                              child: Text(
                                S.of(context).edit,
                                maxLines: 1,
                              ),
                            ),
                            const SizedBox(width: 5.0),
                            ElevatedButton(
                              onPressed: () => deleteAirport(
                                airportData.id.toString(),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red, // Background color
                              ),
                              child: Text(S.of(context).delete, maxLines: 1),
                            )
                          ],
                        ),
                      );
                    }
                    return Text(data.toString());
                  },
                  rowData: [
                    FlexRowTableData<String>(
                        flex: 1, data: airportData.id.toString()),
                    FlexRowTableData<String>(flex: 1, data: airportData.name),
                    FlexRowTableData<String>(flex: 1, data: airportData.image),
                    FlexRowTableData<String>(
                        flex: 1, data: airportData.location),
                    FlexRowTableData<String>(flex: 1, data: ''),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class AirportLoading extends StatelessWidget {
  const AirportLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
