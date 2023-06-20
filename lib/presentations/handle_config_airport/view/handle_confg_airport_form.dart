import 'dart:developer';

import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/const/image_const.dart';
import 'package:flight_booking/core/components/widgets/custom_dialog_error/yes_no_dilog.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/components/widgets/mobile/button_custom.dart';
import 'package:flight_booking/generated/l10n.dart';
import 'package:flight_booking/presentations_mobile/flight_history_detail/views/flight_history_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/components/widgets/mobile/dropdown_button_custom.dart';
import '../../../domain/entities/airport/airport.dart';
import '../../../domain/entities/flight/flight.dart';
import '../blocs/handle_config_airport_bloc.dart';

class HandleConfigAirportForm extends StatefulWidget {
  const HandleConfigAirportForm({super.key});

  @override
  State<HandleConfigAirportForm> createState() =>
      _HandleConfigAirportFormState();
}

class _HandleConfigAirportFormState extends State<HandleConfigAirportForm> {
  HandleConfigAirportBloc get _bloc =>
      BlocProvider.of<HandleConfigAirportBloc>(context);

  @override
  void initState() {
    super.initState();
    _bloc.add(const HandleConfigAirportEvent.onStarted());
    _bloc.add(const HandleConfigAirportEvent.getAirportById());
    _bloc.add(const HandleConfigAirportEvent.getFlightConfigs());
    _bloc.add(const HandleConfigAirportEvent.getAllAirport());
  }

  void _onSelectedAirport(Airport? airport) {
    _bloc.add(HandleConfigAirportEvent.selectedAirport(airport));
  }

  void _onSelectedFlight(Flight flight) {
    _bloc.add(HandleConfigAirportEvent.selectedFlight(flight));
  }

  void _onUpdateFlightConfig() async {
    final updateForm = await context.showYesNoDialog(
        300, 'Update flight config', 'Are you sure update this flight?');
    if (updateForm) {
      _bloc.add(const HandleConfigAirportEvent.updateFlightConfigs());
    }
  }

  void _listenStateChange(_, HandleConfigAirportState state) {
    state.maybeWhen(
      getFlightConfigsFailed: (data, error) {
        log(error);
      },
      getAirportByIdFailed: (data, error) {
        log(error);
      },
      getAirportsFailed: (data, error) {
        log(error);
      },
      updateFlightConfigFailed: (data, error) {
        log(error);
      },
      orElse: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HandleConfigAirportBloc, HandleConfigAirportState>(
      listener: _listenStateChange,
      builder: (context, state) {
        final airport = state.data.airport;
        final airports = state.data.airports;
        final airportSelected = state.data.airportSelected;
        final flightConfig = state.data.flightConfigs;
        final rowTextStyle =
            context.titleMedium.copyWith(fontWeight: FontWeight.w400);
        final flightSelected = state.data.flightSelected;
        if (state.loadingGetData) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return Container(
          constraints: BoxConstraints(maxHeight: context.heightDevice),
          width: Breakpoints.small.isActive(context)
              ? double.infinity
              : context.widthDevice * 0.5,
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Theme.of(context).cardColor,
          ),
          child: ListView(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(ImageConst.onboard3, width: 50, height: 50.0),
                  const SizedBox(width: 10.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          S.of(context).airport,
                          style: context.titleSmall.copyWith(
                            color: Theme.of(context).hintColor,
                          ),
                        ),
                        Text(
                          airport?.name ?? '',
                          style: context.titleMedium.copyWith(
                            fontWeight: FontWeight.bold,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              if (flightConfig.isNotEmpty) ...[
                Row(
                  children: [
                    Text(
                      '✈️ ${S.of(context).flightsConfig}',
                      style: context.titleMedium.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    DropdownButtonCustom<Airport?>(
                      width: 220,
                      radius: 10.0,
                      headerText:
                          '${S.of(context).flight} ${flightSelected?.id ?? 0}',
                      items: airports
                          .map<DropdownMenuItem<Airport>>(
                              (Airport value) => DropdownMenuItem<Airport>(
                                    value: value,
                                    child: Text(value.name),
                                  ))
                          .toList(),
                      value: airportSelected,
                      onChange: _onSelectedAirport,
                    ),
                    const SizedBox(width: 10.0),
                    ButtonCustom(
                      enableWidth: false,
                      height: 45.0,
                      onPress: _onUpdateFlightConfig,
                      loading: state.loadingUpdate,
                      child: Text(S.of(context).update),
                    )
                  ],
                ),
                const DividerCustomWithAirplane(),
                ...flightConfig.map(
                  (flight) => Row(
                    children: [
                      Icon(Icons.airplane_ticket,
                          color: Theme.of(context).primaryColor),
                      Expanded(
                        flex: 1,
                        child: Text(
                          '${S.of(context).flight} ${flight.id}',
                          style: rowTextStyle,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          flight.airline.airlineName,
                          style: rowTextStyle,
                        ),
                      ),
                      ...[
                        flight.departureAirport,
                        flight.arrivalAirport,
                      ].map<Widget>((e) => Expanded(
                            flex: 2,
                            child: InkWell(
                              onTap: () => _onSelectedFlight(flight),
                              borderRadius: BorderRadius.circular(10.0),
                              child: Container(
                                width: double.infinity,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(
                                    width: 1.5,
                                    color: e.id == (airport?.id ?? 0)
                                        ? Colors.red
                                        : Colors.green,
                                  ),
                                ),
                                child: Center(
                                  child: Text(e.name, style: rowTextStyle),
                                ),
                              ),
                            ),
                          ))
                    ]
                        .expand(
                            (element) => [element, const SizedBox(width: 10.0)])
                        .toList()
                      ..removeLast(),
                  ),
                )
              ],
              const DividerCustomWithAirplane(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ButtonCustom(
                    height: 45,
                    enableWidth: false,
                    child: Text(S.of(context).delete),
                    onPress: () => context.popArgs(StatusDialog.yes),
                  ),
                  const SizedBox(width: 10.0),
                  ButtonCustom(
                    color: Colors.red,
                    height: 45,
                    enableWidth: false,
                    child: Text(S.of(context).cancel),
                    onPress: () => context.popArgs(StatusDialog.no),
                  ),
                ],
              ),
            ]
                .expand((element) => [
                      element,
                      const SizedBox(
                        height: 10.0,
                      )
                    ])
                .toList()
              ..removeLast(),
          ),
        );
      },
    );
  }
}
