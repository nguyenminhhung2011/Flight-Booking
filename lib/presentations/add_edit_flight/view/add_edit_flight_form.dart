import 'dart:developer';

import 'package:collection/collection.dart';
import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/enum/date_time_enum.dart';
import 'package:flight_booking/core/components/enum/tic_type_enum.dart';
import 'package:flight_booking/core/components/enum/type_form_flight.dart';
import 'package:flight_booking/core/components/widgets/dialog/airport_preview_dialog.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/components/widgets/mobile/button_custom.dart';
import 'package:flight_booking/domain/entities/airline/airline.dart';
import 'package:flight_booking/domain/entities/airport/airport.dart';
import 'package:flight_booking/domain/entities/ticket/ticket_information.dart';
import 'package:flight_booking/presentations/add_edit_flight/bloc/add_edit_flight_bloc.dart';
import 'package:flight_booking/presentations/list_flight/views/widgets/dot_custom.dart';
import 'package:flight_booking/presentations_mobile/flight_history_detail/views/flight_history_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../core/components/widgets/mobile/dropdown_button_custom.dart';
import '../../../core/constant/constant.dart';
import '../../../core/constant/handle_time.dart';
import '../../../generated/l10n.dart';
import '../../customer/views/widgets/customer_textfield.dart';

class AddEditFlightForm extends StatefulWidget {
  const AddEditFlightForm({super.key});

  @override
  State<AddEditFlightForm> createState() => _AddEditFlightFormState();
}

class _AddEditFlightFormState extends State<AddEditFlightForm> {
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _quantityController = TextEditingController();
  final ValueNotifier<String> _seatHeader =
      ValueNotifier<String>(seatHeader.first);
  final ValueNotifier<int> _seatPosition = ValueNotifier<int>(0);

  Map<int, TicTypeEnum> ticSeatIndex = {
    0: TicTypeEnum.none,
    1: TicTypeEnum.none,
    2: TicTypeEnum.none,
    3: TicTypeEnum.none
  };

  AddEditFlightBloc get _bloc => BlocProvider.of<AddEditFlightBloc>(context);
  List<TicketInformation> get _listTicInformation =>
      _bloc.data.listTicInformation;
  TicketInformation get _currentTicInformation =>
      _listTicInformation[_bloc.data.ticInformationDisplayIndex];

  @override
  void initState() {
    super.initState();
    if (_bloc.flightId.isEmpty) {
      _onChangeTicInformationIndexView(0);
      _onUpdateTicInformation();
    }
    _bloc.add(const AddEditFlightEvent.onStarted());
    _bloc.add(const AddEditFlightEvent.fetchAllAirports());
    _bloc.add(const AddEditFlightEvent.fetchAllAirlines());
  }

  @override
  void dispose() {
    _priceController.dispose();
    _quantityController.dispose();
    super.dispose();
  }

  void _listenStateChange(_, AddEditFlightState state) {
    state.whenOrNull(addNewFlightSuccess: (data, flight) {
      _bloc.add(AddEditFlightEvent.addTicInformation(flight: flight));
    }, editFlightSuccess: (data, flight) {
      context.popArgs({
        'flight': flight,
        'type': TypeFormFlight.edit,
      });
    }, addTicInformationSuccess: (data, flight) {
      context.popArgs({
        'flight': flight,
        'type': TypeFormFlight.add,
      });
    }, changeTicInformationViewSuccess: (data) {
      _priceController.text = _currentTicInformation.price.toString();
      _quantityController.text = _currentTicInformation.quantity.toString();
      _seatHeader.value = _currentTicInformation.seatHeader;
      _seatPosition.value = _currentTicInformation.seatPosition == -1
          ? 0
          : _currentTicInformation.seatPosition;
    }, addTicInformationFailed: (data, error) {
      context.showSuccessDialog(
          width: 300, header: 'Error', title: error.toString());
    }, addNewFlightFailed: (data, error) {
      context.showSuccessDialog(
          width: 300, header: 'Error', title: error.toString());
    }, editFlightFailed: (data, error) {
      context.showSuccessDialog(
          width: 300, header: 'Error', title: error.toString());
    }, fetchAirlineFailed: (data, error) {
      context.showSuccessDialog(
          width: 300, header: 'Error', title: error.toString());
    }, fetchAirportFailed: (data, error) {
      context.showSuccessDialog(
          width: 300, header: 'Error', title: error.toString());
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

  void _onShowAirportPreviewDialog(Airport airport) async {
    await showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.transparent,
        child: AirportPreviewDialog(airport: airport),
      ),
    );
  }

  void _onChangeTicInformationIndexView(int index) {
    _bloc.add(AddEditFlightEvent.changeTicInformationView(newIndex: index));
  }

  void _onUpdateTicInformation() async {
    _bloc.add(AddEditFlightEvent.updateTicInformation(
      newSeatHeader: _seatHeader.value,
      quantity: int.parse(_quantityController.text),
      price: double.parse(_priceController.text),
      newSeatPosition: _seatPosition.value,
    ));
  }

  void _onChangeSeatHeader(String newHeader) {
    _seatHeader.value = newHeader;
  }

  void _onChangeSeatPosition(int newPosition) {
    _seatPosition.value = newPosition;
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
        final primaryColor = Theme.of(context).primaryColor;
        final flightId = _bloc.flightId;

        return Container(
          constraints: BoxConstraints(maxHeight: context.heightDevice * 0.78),
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
              : ListView(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      data.headerText,
                      style: context.titleLarge.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    if (flightId.isNotEmpty) ...[
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(width: 1.5, color: primaryColor),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              S.of(context).informationBeforeEdit,
                              style: context.titleMedium.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                DotCustom(color: primaryColor, full: true),
                                const SizedBox(width: 5.0),
                                Text('${S.of(context).flight} $flightId')
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                    if (airlines.isNotEmpty) ...<Widget>[
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
                          ...<Map<String, dynamic>>[
                            {
                              'header': S.of(context).airportStart,
                              'airport': startAirportSelected,
                              'bool': true,
                            },
                            {
                              'header': S.of(context).airportFinish,
                              'airport': finishAirportSelected,
                              'bool': false,
                            },
                          ].map(
                            (e) => Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                          child: Text(
                                        e['header'].toString(),
                                        maxLines: 1,
                                      )),
                                      TextButton(
                                        onPressed: () =>
                                            _onShowAirportPreviewDialog(
                                          e['airport'],
                                        ),
                                        child: Text(
                                          S.of(context).preview,
                                          style: context.titleSmall.copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: primaryColor,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
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
                                    value: e['airport'] as Airport,
                                    onChange: (value) => _onSelectedAirport(
                                        value!, e['bool'] as bool),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ]
                            .expand((element) => [
                                  element,
                                  const SizedBox(
                                    width: 10.0,
                                  )
                                ])
                            .toList()
                          ..removeLast(),
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
                    const SizedBox(height: 10.0),
                    Text(
                      S.of(context).ticketCategoryDetail,
                      style: context.titleMedium.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    _categoryDetailField(context),
                    const SizedBox(height: 10.0),
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

  Row _categoryDetailField(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 2, child: _ticField(context)),
        const SizedBox(width: 10.0),
        Expanded(
          flex: 4,
          child: _informationField(context),
        ),
      ],
    );
  }

  Column _informationField(BuildContext context) {
    final currentTicType =
        TicTypeEnum.fromInt(_currentTicInformation.id.ticketType);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          currentTicType.displayValue,
          style: context.titleMedium.copyWith(
            fontWeight: FontWeight.bold,
            color: currentTicType.colorType,
          ),
        ),
        const SizedBox(height: 10.0),
        Row(
          children: [
            Expanded(
              child: FilterCategory(
                controller: _priceController,
                hint: S.of(context).price,
                iconData: Icons.price_change,
              ),
            ),
            const SizedBox(width: 10.0),
            Expanded(
              child: FilterCategory(
                controller: _quantityController,
                hint: S.of(context).quantity,
                iconData: Icons.people,
              ),
            )
          ],
        ),
        const SizedBox(height: 10.0),
        Row(
          children: [
            Expanded(
              child: ValueListenableBuilder<int>(
                valueListenable: _seatPosition,
                builder: (context, seatPosition, child) {
                  return DropdownButtonCustom<int?>(
                    radius: 10.0,
                    items: [0, 1, 2, 3]
                        .map<DropdownMenuItem<int>>(
                            (int value) => DropdownMenuItem<int>(
                                  value: value,
                                  child: Text(value.toString()),
                                ))
                        .toList(),
                    value: seatPosition,
                    onChange: (value) => _onChangeSeatPosition(value ?? 0),
                  );
                },
              ),
            ),
            const SizedBox(width: 10.0),
            Expanded(
              child: ValueListenableBuilder<String>(
                valueListenable: _seatHeader,
                builder: (context, currentSeatHeader, child) {
                  return DropdownButtonCustom<String?>(
                    radius: 10.0,
                    items: seatHeader
                        .map<DropdownMenuItem<String>>(
                            (String value) => DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                ))
                        .toList(),
                    value: currentSeatHeader,
                    onChange: (value) =>
                        _onChangeSeatHeader(value ?? seatHeader.first),
                  );
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ButtonCustom(
              onPress: _onUpdateTicInformation,
              enableWidth: false,
              radius: 5.0,
              child: Text(S.of(context).enable),
            )
          ],
        ),
        const SizedBox(height: 10.0),
        const DividerCustomWithAirplane(),
        const SizedBox(height: 10.0),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            border: Border.all(
              width: 1.5,
              color: Theme.of(context).primaryColor,
            ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(70.0),
              topRight: Radius.circular(10.0),
              bottomLeft: Radius.circular(70.0),
              bottomRight: Radius.circular(10.0),
            ),
          ),
          child: Row(
            children: <Widget>[
              Container(
                width: 60,
                height: 80,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(70.0),
                    topRight: Radius.circular(10.0),
                    bottomLeft: Radius.circular(70.0),
                    bottomRight: Radius.circular(10.0),
                  ),
                ),
              ),
              ...[1, 2, 2, 2].mapIndexed<Widget>(
                (index, e) => Expanded(
                  flex: e,
                  child: InkWell(
                    onTap: () async {
                      final result = await showDialog(
                        context: context,
                        builder: (context) {
                          return const Dialog(
                            backgroundColor: Colors.transparent,
                            child: DialogChooseTicType(),
                          );
                        },
                      );
                      if (result != null && result is TicTypeEnum) {
                        setState(() {
                          ticSeatIndex[index] = result;
                        });
                      }
                    },
                    child: Container(
                      width: double.infinity,
                      height: 80.0,
                      decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          width: 1,
                          color: ticSeatIndex[index]?.colorType ??
                              Colors.transparent,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color:
                                Theme.of(context).shadowColor.withOpacity(0.2),
                            blurRadius: 5.0,
                          )
                        ],
                      ),
                      child: Center(
                        child: Text(
                          index.toString(),
                          style: context.titleMedium.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ]
                .expand((element) => [element, const SizedBox(width: 5.0)])
                .toList()
              ..removeLast(),
          ),
        ),
      ],
    );
  }

  Column _ticField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...[
          TicTypeEnum.businessClass,
          TicTypeEnum.economyClass,
          TicTypeEnum.firstClass,
          TicTypeEnum.premiumEconomyClass,
        ].mapIndexed(
          (index, e) => InkWell(
            onTap: () => _onChangeTicInformationIndexView(index),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 15.0,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Theme.of(context).cardColor,
                border: Border.all(width: 1.5, color: e.colorType!),
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: e.colorType!),
                      shape: BoxShape.circle,
                    ),
                    child: DotCustom(
                      color: e.colorType!,
                      full: true,
                      radius: 10.0,
                    ),
                  ),
                  const SizedBox(width: 5.0),
                  Expanded(
                    child: Text(
                      e.displayValue,
                      style: context.titleMedium.copyWith(
                        fontWeight: FontWeight.w500,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ].expand((element) => [element, const SizedBox(height: 10.0)]).toList()
        ..removeLast(),
    );
  }
}

class DialogChooseTicType extends StatelessWidget {
  const DialogChooseTicType({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Theme.of(context).cardColor,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...[
            TicTypeEnum.businessClass,
            TicTypeEnum.economyClass,
            TicTypeEnum.firstClass,
            TicTypeEnum.premiumEconomyClass,
          ].map(
            (e) => InkWell(
              onTap: () => context.popArgs(e),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 15.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Theme.of(context).cardColor,
                  border: Border.all(width: 1.5, color: e.colorType!),
                ),
                child: Row(
                  children: [
                    DotCustom(
                      color: e.colorType!,
                      full: true,
                      radius: 10.0,
                    ),
                    const SizedBox(width: 5.0),
                    Expanded(
                      child: Text(
                        e.displayValue,
                        style: context.titleMedium.copyWith(
                          fontWeight: FontWeight.w500,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ].expand((element) => [element, const SizedBox(height: 10.0)]).toList()
          ..removeLast(),
      ),
    );
  }
}
