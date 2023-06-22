import 'dart:developer';

import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/enum/type_form_flight.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/components/widgets/mobile/button_custom.dart';
import 'package:flight_booking/presentations/list_flight/views/widgets/flight_wdiget_custom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/components/widgets/mobile/dropdown_button_custom.dart';
import '../../../data/models/place/place_model.dart';
import '../../../domain/entities/airline/airline.dart';
import '../../../domain/entities/flight/flight.dart';
import '../../../generated/l10n.dart';
import '../bloc/list_flight_bloc.dart';

class ListFlightScreen extends StatefulWidget {
  const ListFlightScreen({super.key});

  @override
  State<ListFlightScreen> createState() => _ListFlightScreenState();
}

class _ListFlightScreenState extends State<ListFlightScreen> {
  ListFlightBloc get _bloc => BlocProvider.of<ListFlightBloc>(context);

  late final textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _bloc.add(const ListFlightEvent.started());
    _bloc.add(const ListFlightEvent.getFlightByPage(0));
    _bloc.add(const ListFlightEvent.fetchAirline());
    _bloc.add(const ListFlightEvent.fetchPlaces());
  }

  Future<void> initData() async {
    //Do something
    await Future.delayed(const Duration(seconds: 5));
  }

  void viewDetail(int ticId) {
    _bloc.add(ListFlightEvent.selectFlight(ticId));
  }

  void _onDeleteFlight(int id) async {
    final deleteForm = await context.showYesNoDialog(
        300, 'Delete this flight?', 'Are you sure delete this flight?');

    if (deleteForm) {
      _bloc.add(ListFlightEvent.deleteFlight(id));
    }
  }

  void _onUpdateFlightAfterAdd(Flight flight) {
    _bloc.add(ListFlightEvent.updateFlightsAfterAdd(flight));
  }

  void _onUpdateFlightAfterEdit(Flight flight) {
    _bloc.add(ListFlightEvent.updateFlightsAfterEdit(flight));
  }

  void _onChangePage(int newPage) {
    _bloc.add(ListFlightEvent.getFlightByPage(newPage));
  }

  void _onSelectedFlight(int flightId) {
    _bloc.add(ListFlightEvent.getFlightById(id: flightId));
  }

  void _onFilterFlight(
    String airline,
    String locationArrival,
    String locationDeparture,
  ) {
    _bloc.add(ListFlightEvent.filterFlight(
      airline: airline,
      locationArrival: locationArrival,
      locationDeparture: locationDeparture,
    ));
  }

  void _onRefreshItemDisplay() {
    _bloc.add(const ListFlightEvent.refreshItem());
  }

  void openAddEditFlightDialog(String title) {
    _bloc.add(ListFlightEvent.openAddEditFlightForm(title));
  }

  // void _onSelected

  void _listenStateChanged(BuildContext context, ListFlightState state) {
    state.whenOrNull(selectListFlightSuccess: (data, ticID) {
      context.startFlightDetail(ticID);
    }, openAddEditFlightFormSuccess: (data, id) async {
      Map result = await context.openDialogAdDEditFlight(id);
      var type = result['type'];
      var flight = result['flight'];
      if (flight != null && flight is Flight) {
        if (type != null && type is TypeFormFlight) {
          if (type.isEdit) {
            _onUpdateFlightAfterEdit(flight);
          } else {
            _onUpdateFlightAfterAdd(flight);
          }
        }
      }
    }, getFlightsSuccess: (data) {
      if (_bloc.data.flights.isNotEmpty) {
        _onSelectedFlight(_bloc.data.flights.first.id);
      }
    }, getFlightByIdSuccess: (data, flightId) {
      _bloc.add(ListFlightEvent.getTicInformationByFlightId(id: flightId));
    }, getFlightByIdFailed: (data, error) {
      log(error);
    }, getTicInformationByFlightIdFailed: (data, error) {
      log(error);
    }, getFlightPageFFailed: (data, error) {
      log(error);
    }, getFlightsFailed: (data, error) {
      log(error);
    }, deleteFlightFailed: (data, error) {
      log(error);
    });
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final widthField = MediaQuery.of(context).size.width;
    final heightField = MediaQuery.of(context).size.height;
    return BlocConsumer<ListFlightBloc, ListFlightState>(
      listener: _listenStateChanged,
      builder: (context, state) {
        final flights = state.data.flights;
        final currentPage = state.data.currentPage;
        // final totalPage = state.data.totalPage;
        return Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          floatingActionButton: ButtonCustom(
            enableWidth: false,
            onPress: () => openAddEditFlightDialog(''),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.add_circle_rounded, size: 14.0),
                Text(
                  ' ${S.of(context).addNewFlight}',
                ),
              ],
            ),
          ),
          body: Column(
            children: [
              const SizedBox(height: 10.0),
              ListTile(
                title: Text(
                  S.of(context).listFlights,
                  style: context.titleSmall.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                ),
                trailing: SizedBox(
                  width: widthField * 0.4,
                  child: CupertinoSearchTextField(
                    padding: const EdgeInsets.all(10.0),
                    controller: textController,
                    enabled: true,
                    style: context.titleMedium,
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
                          _categoryField(context, state),
                          state.loadingMainField
                              ? _loadingFlightField()
                              : _listFlightField(flights),
                          const SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                  onPressed: () =>
                                      _onChangePage(currentPage - 1),
                                  child: Text(
                                    S.of(context).previous,
                                    style: context.titleSmall
                                        .copyWith(fontWeight: FontWeight.bold),
                                  )),
                              const SizedBox(width: 10.0),
                              Text(
                                (currentPage + 1).toString(),
                                style: context.titleMedium.copyWith(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(width: 10.0),
                              TextButton(
                                  onPressed: () =>
                                      _onChangePage(currentPage + 1),
                                  child: Text(
                                    S.of(context).next,
                                    style: context.titleSmall
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ))
                            ],
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

  Column _listFlightField(List<Flight> flights) {
    return Column(
      children: flights
          .map(
            (e) => FlightWidgetCustom(
              viewDetail: () => viewDetail(e.id),
              edit: () => openAddEditFlightDialog(e.id.toString()),
              delete: () => _onDeleteFlight(e.id),
              selected: () => _onSelectedFlight(e.id),
              flight: e,
            ),
          )
          .toList()
          .expand((element) => [element, const SizedBox(height: 10.0)])
          .toList(),
    );
  }

  Column _loadingFlightField() {
    return Column(
      children: [for (int i = 0; i < 7; i++) const FlightWidgetCustomSkelton()],
    );
  }

  Padding _categoryField(BuildContext context, ListFlightState state) {
    final airlines = state.data.listAirlines;
    final airlineSelected = state.data.airlineName;
    final places = state.data.locations;
    final locationArrival = state.data.locationArrival;
    final locationDeparture = state.data.locationDeparture;
    final cardColor = Theme.of(context).cardColor;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SizedBox(
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: DropdownButtonCustom<String?>(
                radius: 10.0,
                color: cardColor,
                headerText: S.of(context).airlines,
                items: airlines
                    .map<DropdownMenuItem<String>>(
                        (Airline value) => DropdownMenuItem<String>(
                              value: value.airlineName,
                              child: Text(value.airlineName),
                            ))
                    .toList(),
                value: airlineSelected,
                onChange: (val) => _onFilterFlight(
                  val ?? '',
                  locationArrival,
                  locationDeparture,
                ),
              ),
            ),
            Expanded(
              child: DropdownButtonCustom<String?>(
                radius: 10.0,
                color: cardColor,
                headerText: S.of(context).departureDate,
                items: places
                    .map<DropdownMenuItem<String>>(
                        (PlaceModel value) => DropdownMenuItem<String>(
                              value: value.name,
                              child: Text(value.name),
                            ))
                    .toList(),
                value: locationDeparture,
                onChange: (value) => _onFilterFlight(
                  airlineSelected,
                  locationArrival,
                  value ?? '',
                ),
              ),
            ),
            Expanded(
              child: DropdownButtonCustom<String?>(
                radius: 10.0,
                color: cardColor,
                headerText: S.of(context).arrivalPlace,
                items: places
                    .map<DropdownMenuItem<String>>(
                        (PlaceModel value) => DropdownMenuItem<String>(
                              value: value.name,
                              child: Text(value.name),
                            ))
                    .toList(),
                value: locationArrival,
                onChange: (value) => _onFilterFlight(
                  airlineSelected,
                  value ?? '',
                  locationDeparture,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).primaryColor,
              ),
              child: IconButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Theme.of(context).primaryColor,
                  ),
                ),
                onPressed: _onRefreshItemDisplay,
                icon: const Icon(Icons.refresh),
              ),
            )
          ].expand((element) => [element, const SizedBox(width: 10.0)]).toList()
            ..removeLast(),
        ),
      ),
    );
  }
}
