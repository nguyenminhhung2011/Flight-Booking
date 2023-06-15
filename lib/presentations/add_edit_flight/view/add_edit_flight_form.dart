import 'dart:developer';

import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/enum/date_time_enum.dart';
import 'package:flight_booking/core/components/enum/type_form_flight.dart';
import 'package:flight_booking/core/components/widgets/mobile/button_custom.dart';
import 'package:flight_booking/domain/entities/airline/airline.dart';
import 'package:flight_booking/domain/entities/airport/airport.dart';
import 'package:flight_booking/presentations/add_edit_flight/bloc/add_edit_flight_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../core/components/widgets/mobile/dropdown_button_custom.dart';
import '../../../core/constant/handle_time.dart';
import '../../../generated/l10n.dart';
import '../../customer/views/widgets/customer_textfield.dart';

class AddEditFlightForm extends StatefulWidget {
  const AddEditFlightForm({super.key});

  @override
  State<AddEditFlightForm> createState() => _AddEditFlightFormState();
}

class _AddEditFlightFormState extends State<AddEditFlightForm> {
  AddEditFlightBloc get _bloc => BlocProvider.of<AddEditFlightBloc>(context);

  @override
  void initState() {
    super.initState();
    _bloc.add(const AddEditFlightEvent.onStarted());
    _bloc.add(const AddEditFlightEvent.fetchAllAirports());
    _bloc.add(const AddEditFlightEvent.fetchAllAirlines());
  }

  void _listenStateChange(_, AddEditFlightState state) {
    state.whenOrNull(addNewFlightSuccess: (data, flight) {
      context.popArgs({
        'flight': flight,
        'type': TypeFormFlight.add,
      });
    }, editFlightSuccess: (data, flight) {
      context.popArgs({
        'flight': flight,
        'type': TypeFormFlight.edit,
      });
    }, addNewFlightFailed: (data, error) {
      log(error);
    }, editFlightFailed: (data, error) {
      log(error);
    }, fetchAirlineFailed: (data, error) {
      log(error);
    }, fetchAirportFailed: (data, error) {
      log(error);
    });
  }

  pickDateTime(BuildContext context, DateTimeEnum timeEnum) async {
    DateTime? datePic = (await context.pickDateTime());
    if (datePic == null) {
      return;
    }
    _bloc.add(
      AddEditFlightEvent.updateDateField(dateTime: datePic, enumTime: timeEnum),
    );
  }

  void _onSubmitButton() {
    _bloc.add(const AddEditFlightEvent.buttonTap());
  }

  void _onSelectedAirport(Airport airport, bool isStart) {
    _bloc.add(AddEditFlightEvent.selectedAirport(
      airport: airport,
      isStartAirport: isStart,
    ));
  }

  void _onSelectedAirline(Airline? airline) {
    _bloc.add(AddEditFlightEvent.selectedAirline(airline: airline!));
  }

  bool get _loadButton => _bloc.state
      .maybeWhen(orElse: () => false, loading: (data, type) => type == 1);
  bool get _loadGetData => _bloc.state
      .maybeWhen(orElse: () => false, loading: (data, type) => type == 0);

  @override
  Widget build(BuildContext context) {
    final widthDevice = MediaQuery.of(context).size.width;
    return BlocConsumer<AddEditFlightBloc, AddEditFlightState>(
      listener: _listenStateChange,
      builder: (context, state) {
        final data = state.data;
        final airports = data.listAirport;
        final airlines = data.listAirline;
        final startAirportSelected = data.airportStart;
        final finishAirportSelected = data.airportEnd;
        final airlineSelected = data.airline;
        return Container(
          width: Breakpoints.small.isActive(context)
              ? double.infinity
              : widthDevice * 0.5,
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Theme.of(context).cardColor,
          ),
          child: _loadGetData
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (airlines.isEmpty) ...<Widget>[
                      Text(
                        data.headerText,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(S.of(context).airlines),
                          const SizedBox(height: 5.0),
                          DropdownButtonCustom<Airline?>(
                            radius: 10.0,
                            items: airlines
                                .map<DropdownMenuItem<Airline>>(
                                    (Airline value) =>
                                        DropdownMenuItem<Airline>(
                                          value: value,
                                          child: Text(value.airlineName),
                                        ))
                                .toList(),
                            value: airlineSelected,
                            onChange: _onSelectedAirline,
                          ),
                        ],
                      ),
                    ],
                    if (airports.isNotEmpty)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(S.of(context).airportStart),
                                const SizedBox(height: 5.0),
                                DropdownButtonCustom<Airport?>(
                                  radius: 10.0,
                                  items: airports
                                      .map<DropdownMenuItem<Airport>>(
                                          (Airport value) =>
                                              DropdownMenuItem<Airport>(
                                                value: value,
                                                child: Text(value.name),
                                              ))
                                      .toList(),
                                  value: startAirportSelected,
                                  onChange: (value) =>
                                      _onSelectedAirport(value!, true),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(S.of(context).airportFinish),
                                const SizedBox(height: 5.0),
                                DropdownButtonCustom<Airport?>(
                                  radius: 10.0,
                                  items: airports
                                      .map<DropdownMenuItem<Airport>>(
                                          (Airport value) =>
                                              DropdownMenuItem<Airport>(
                                                value: value,
                                                child: Text(value.name),
                                              ))
                                      .toList(),
                                  value: finishAirportSelected,
                                  onChange: (value) =>
                                      _onSelectedAirport(value!, false),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: FilterCategory(
                            controller: TextEditingController(
                              text:
                                  '${DateFormat().add_yMMMMEEEEd().format(data.timeStart)} / ${getjmFormat(data.timeStart)}',
                            ),
                            title: S.of(context).dateStart,
                            hint: S.of(context).dateStart,
                            iconData: Icons.calendar_month,
                            onPress: () {
                              pickDateTime(context, DateTimeEnum.timeStart);
                            },
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        Expanded(
                          child: FilterCategory(
                            controller: TextEditingController(
                              text:
                                  '${DateFormat().add_yMMMMEEEEd().format(data.timeEnd)} / ${getjmFormat(data.timeEnd)}',
                            ),
                            title: S.of(context).dateFinish,
                            hint: S.of(context).dateFinish,
                            iconData: Icons.calendar_month,
                            onPress: () {
                              pickDateTime(context, DateTimeEnum.timeEnd);
                            },
                          ),
                        ),
                      ],
                    ),
                    ButtonCustom(
                      height: 45.0,
                      loading: _loadButton,
                      onPress: _onSubmitButton,
                      child: Text(data.headerText),
                    ),
                  ]
                      .expand(
                          (element) => [element, const SizedBox(height: 10.0)])
                      .toList()
                    ..removeLast(),
                ),
        );
      },
    );
  }
}
