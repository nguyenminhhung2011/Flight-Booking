import 'dart:developer';

import 'package:collection/collection.dart';
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/enum/tic_type_enum.dart';
import 'package:flight_booking/core/components/widgets/extension/color_extension.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/components/widgets/extension/interger_extension.dart';
import 'package:flight_booking/core/components/widgets/form_add_edit_information.dart';
import 'package:flight_booking/presentations/dialog_book_ticket/bloc/book_ticket_bloc.dart';
import 'package:flight_booking/presentations/list_flight/views/widgets/dot_custom.dart';
import 'package:flight_booking/presentations/selected_customer/views/selected_customer_form.dart';
import 'package:flight_booking/presentations_mobile/flight_history_detail/views/flight_history_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/components/widgets/mobile/button_custom.dart';
import '../../../domain/entities/customer/customer.dart';
import '../../../domain/entities/flight/flight.dart';
import '../../../domain/entities/seat_selected/seat_selected.dart';
import '../../../domain/entities/ticket/ticket.dart';
import '../../../domain/entities/ticket/ticket_information.dart';
import '../../../generated/l10n.dart';
import 'package:flight_booking/core/constant/constant.dart';
import 'package:flight_booking/core/constant/handle_time.dart';
import 'package:flutter/cupertino.dart';

import '../../../core/components/widgets/mobile/dropdown_button_custom.dart';
import '../../../core/components/widgets/mobile/text_field_custom.dart';
import '../../routes/routes.dart';
import '../bloc/book_ticket_model_state.dart';

const _hMarginCard = 20.0;
const _defaultSeat = 0;

class DialogBookTicket extends StatefulWidget {
  const DialogBookTicket({
    super.key,
  });

  @override
  State<DialogBookTicket> createState() => _DialogBookTicketState();
}

class _DialogBookTicketState extends State<DialogBookTicket> {
  //Controller
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _identityController = TextEditingController();

  // final TextEditingController _dateBornController = TextEditingController();
  final ValueNotifier<String> _gender = ValueNotifier<String>('MALE');
  final ValueNotifier<DateTime> _dateBorn =
      ValueNotifier<DateTime>(DateTime.now());
  final ValueNotifier<double> _luggage = ValueNotifier<double>(0);

  //Data
  BTBloc get _bloc => BlocProvider.of<BTBloc>(context);
  BTModelState get _data => _bloc.data;
  // int get _flightId => _bloc.flightId;
  List<SeatSelected> get seatsSelected => _bloc.listSeat;
  List<TicketInformation> get _ticInformation => _data.ticInformation;
  List<Ticket> get _listTic => _data.tics;
  SeatSelected? get _currentSeat => _data.currentSeat;
  String get _currentTicId => _data.currentTicId;
  Customer? get _customerSelected => _data.customerSelected;
  int get _flightId => _bloc.flightId;
  Flight? get _flight => _data.flight;

  //UI
  bool get _currentSeatIsAdded =>
      _listTic.map((e) => '${e.type} - ${e.seat}').contains(
          '${_currentSeat?.ticInformation.id.ticketType ?? 0} - ${_currentSeat?.seatIndex ?? 0}');

  String get _ticClass =>
      _currentSeat?.ticInformation.id.ticketType.ticClass.displayValue ??
      0.ticClass.displayValue;

  @override
  void initState() {
    _bloc.add(const BTEvent.getTicInformation());
    _bloc.add(const BTEvent.fetchCustomerData());
    _bloc.add(const BTEvent.getFlightById());
    super.initState();
  }

  void _onSelectDateBorn() async {
    final result = await context.pickDate(DatePickerMode.day);
    if (result != null) {
      _dateBorn.value = result;
    }
  }

  void _onRemoveTic(Ticket tic) async {
    final show = await context.showYesNoDialog(
        300, 'Remove this tic?', 'Are you sure remove this tic?');
    if (!show) {
      return;
    }
    _bloc.add(BTEvent.removeTic(tic: tic));
  }

  void _onSelectedTic(Ticket tic) {
    _bloc.add(BTEvent.selectedTic(tic: tic));
  }

  void _onEditTic() {
    _bloc.add(BTEvent.editTic(
        tic: Ticket(
      id: _currentTicId,
      name: _nameController.text,
      gender: _gender.value,
      phoneNumber: _phoneNumberController.text,
      emailAddress: _emailController.text,
      seat: _currentSeat?.seatIndex ?? 0,
      type: _currentSeat?.ticInformation.id.ticketType ?? 0,
      luggage: _luggage.value,
      dateBorn: _dateBorn.value,
      timeBought: DateTime.now(),
    )));
  }

  void _onAddSeat() {
    _bloc.add(BTEvent.addSeat(
      name: _nameController.text,
      email: _emailController.text,
      gender: _gender.value,
      seat: _currentSeat?.seatIndex ?? _defaultSeat,
      type: _currentSeat?.ticInformation.id.ticketType ??
          TicTypeEnum.businessClass.toInteger,
      phoneNumber: _phoneNumberController.text,
      identityNumber: _identityController.text,
      dateBorn: _dateBorn.value,
      luggage: _luggage.value,
    ));
  }

  void _onChangeGender(String? newValue) {
    _gender.value = newValue!;
  }

  void _onButtonTap() {
    _currentSeatIsAdded ? _onEditTic() : _onAddSeat();
  }

  void _onNextPage() {
    final listTic = _listTic
        .where(
          (element) =>
              element.emailAddress.isNotEmpty &&
              element.phoneNumber.isNotEmpty &&
              element.phoneNumber.isNotEmpty,
        )
        .toList();
    if (listTic.isEmpty) {
      return;
    }
    context.openPageWithRouteAndParams(Routes.payment, {
      'tics': listTic,
      'ids': {
        'customerId': _customerSelected?.id ?? -1,
        'flightId': _flightId,
      },
    });
  }

  void _onShowDialogSelectedBaggage() async {
    if (_flight == null) {
      return;
    }
    final show =
        await context.openSelectBaggage(_flight!, _nameController.text);
    if (show != null && show is double) {
      _luggage.value = show;
    }
  }

  void _setField(Ticket tic) {
    _nameController.text = tic.name;
    _emailController.text = tic.emailAddress;
    _gender.value = tic.gender;
    _phoneNumberController.text = tic.phoneNumber;
    _identityController.text = '949593995';
    _dateBorn.value = tic.dateBorn;
    _luggage.value = tic.luggage;
  }

  void _clearField() {
    _nameController.text = '';
    _emailController.text = '';
    _gender.value = 'MALE';
    _phoneNumberController.text = '';
    _identityController.text = '949593995';
    _dateBorn.value = DateTime.now();
    _luggage.value = 0.0;
  }

  void _onSelectedSeat(int seatIndex, TicketInformation tic) {
    final newSeatSelected =
        SeatSelected(seatIndex: seatIndex, ticInformation: tic);
    _bloc.add(BTEvent.selectedSeat(
      newSeat: newSeatSelected,
    ));
  }

  void _listenStateChange(_, BTState state) {
    state.maybeWhen(
      changeTicIndexViewSuccess: (data) {},
      selectedTicSuccess: (data, tic) {
        _setField(tic);
      },
      selectedSeatSuccess: (data, ticIndex) {
        if (ticIndex != -1) {
          var tic = _listTic[ticIndex];
          _setField(tic);
        } else {
          _clearField();
        }
      },
      fetchCustomerDataFailed: (data, error) {
        log(error);
      },
      searchCustomerFailed: (data, error) {
        log(error);
      },
      orElse: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    var fontColorByCard = Theme.of(context).cardColor.fontColorByBackground;
    var headerTextStyle = context.timeStyle
        .copyWith(fontWeight: FontWeight.w600, color: Colors.grey);
    return BlocConsumer<BTBloc, BTState>(
      listener: _listenStateChange,
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.all(15.0),
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Theme.of(context).cardColor,
            // border: Border.all(width: 1, color: Theme.of(context).primaryColor),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    const Expanded(child: SelectedCustomerForm()),
                    _listTicSelectedField(context),
                  ],
                ),
              ),
              const SizedBox(width: 10.0),
              _ticInformationField(context, headerTextStyle, fontColorByCard),
            ],
          ),
        );
      },
    );
  }

  Expanded _listTicSelectedField(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            width: 1,
            color: Theme.of(context).primaryColor,
          ),
        ),
        child: ListView(
          children: [
            const SizedBox(height: 10.0),
            ..._listTic.map(
              (e) => GestureDetector(
                onTap: () => _onSelectedTic(e),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(10.0),
                  margin: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Theme.of(context).cardColor,
                    border: Border.all(
                      width: 1,
                      color: e.emailAddress.isNotEmpty &&
                              e.phoneNumber.isNotEmpty &&
                              e.phoneNumber.isNotEmpty
                          ? Colors.transparent
                          : Colors.red,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).shadowColor.withOpacity(0.2),
                        blurRadius: 5.0,
                      )
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.airplane_ticket,
                                  color: Theme.of(context).primaryColor,
                                ),
                                Expanded(
                                  child: Text(
                                    e.type.ticClass.displayValue,
                                    style: context.titleMedium.copyWith(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 10.0),
                            Text(
                              e.name,
                              style: context.titleSmall.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context).hintColor,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      Container(
                        width: 0.2,
                        height: 80,
                        margin: const EdgeInsets.symmetric(horizontal: 10.0),
                        decoration:
                            DottedDecoration(linePosition: LinePosition.left),
                      ),
                      const SizedBox(width: 10.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ...[
                              if (e.emailAddress.isNotEmpty) e.emailAddress,
                              if (e.phoneNumber.isNotEmpty) e.phoneNumber,
                              e.gender,
                              getYmdFormat(e.dateBorn)
                            ]
                                .map(
                                  (text) => Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      DotCustom(
                                        color: Theme.of(context).primaryColor,
                                        full: true,
                                        radius: 5.0,
                                      ),
                                      const SizedBox(width: 10.0),
                                      Text(text, style: context.titleSmall),
                                    ],
                                  ),
                                )
                                .expand((element) =>
                                    [element, const SizedBox(height: 5.0)])
                                .toList()
                              ..removeLast(),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () => _onRemoveTic(e),
                        icon: const Icon(Icons.delete, color: Colors.red),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Expanded _ticInformationField(
      BuildContext context, TextStyle headerTextStyle, Color fontColorByCard) {
    return Expanded(
      flex: 6,
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: _chairField(context),
          ),
          const SizedBox(height: 5.0),
          const DividerCustomWithAirplane(),
          const SizedBox(height: 5.0),
          Expanded(
            flex: 4,
            child: _fillInformationField(
                context, headerTextStyle, fontColorByCard),
          ),
        ],
      ),
    );
  }

  ListView _fillInformationField(
      BuildContext context, TextStyle headerTextStyle, Color fontColorByCard) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: _hMarginCard),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Expanded>[
              if (_currentSeat != null)
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        _ticClass,
                        maxLines: 1,
                        style: headerTextStyle,
                      ),
                      const SizedBox(height: 10.0),
                      Text(
                        'Seat ${_currentSeat?.ticInformation.seatHeader ?? 'A'}${_currentSeat?.seatIndex ?? 0}',
                        maxLines: 1,
                        style: context.headlineMedium.copyWith(
                          fontWeight: FontWeight.w600,
                          color: fontColorByCard,
                        ),
                      ) // update here
                      // change this type
                    ],
                  ),
                ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      S.of(context).boeing, // update here,
                      maxLines: 1,
                      style: context.timeStyle.copyWith(
                        fontWeight: FontWeight.w600,
                        color: fontColorByCard,
                      ),
                    ),
                    const SizedBox(height: 7.0),
                    Text(
                      '777 - 200ER', // update here,
                      maxLines: 1,
                      style: headerTextStyle,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: _hMarginCard),
          padding: const EdgeInsets.symmetric(
            vertical: 10.0,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).hoverColor,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: _hMarginCard),
                child: Text(
                  S.of(context).benefit,
                  style: headerTextStyle,
                ),
              ),
              const SizedBox(height: 10.0),
              Row(children: [
                const SizedBox(width: 5.0),
                ...mockDataBenefits.map((e) => _benefitWithText(e, context)),
                const SizedBox(width: 5.0)
              ]),
              const SizedBox(height: 10.0)
            ],
          ),
        ),
        FormAddEditInformation(
          leftPadding: _hMarginCard,
          rightPadding: _hMarginCard,
          nameController: _nameController,
          emailController: _emailController,
          phoneNumberController: _phoneNumberController,
          identityController: _identityController,
        ),
        ValueListenableBuilder(
          valueListenable: _dateBorn,
          builder: (context, dateBorn, child) {
            return TextFieldCustom(
              paddingLeft: _hMarginCard,
              paddingRight: _hMarginCard,
              headerText: S.of(context).dateBorn,
              hintText: S.of(context).selectDateBorn,
              headerTextStyle: headerTextStyle,
              isNumberInputType: true,
              hintStyle: headerTextStyle,
              controller: TextEditingController(text: getYmdFormat(dateBorn)),
              textStyle: headerTextStyle.copyWith(
                fontWeight: FontWeight.w600,
                color: fontColorByCard,
              ),
              suffix: IconButton(
                icon: const Icon(CupertinoIcons.calendar),
                onPressed: _onSelectDateBorn,
              ),
            );
          },
        ),
        Row(
          children: [
            Expanded(
              child: ValueListenableBuilder(
                valueListenable: _gender,
                builder: (context, genderSelect, child) {
                  return ListTile(
                    title: Text(
                      S.of(context).gender,
                      style: headerTextStyle,
                    ),
                    trailing: DropdownButtonCustom<String?>(
                      borderColor: Colors.grey[300],
                      width: 150.0,
                      value: genderSelect,
                      onChange: _onChangeGender,
                      items: ['MALE', 'FEMALE']
                          .map<DropdownMenuItem<String>>(
                            (String value) => DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: headerTextStyle.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: fontColorByCard,
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  );
                },
              ),
            ),
            ValueListenableBuilder(
              valueListenable: _luggage,
              builder: (context, luggage, child) {
                return InkWell(
                  borderRadius: BorderRadius.circular(10.0),
                  onTap: _onShowDialogSelectedBaggage,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        width: 1,
                        color: Theme.of(context).hintColor,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          S.of(context).luggage,
                          style: context.titleSmall.copyWith(
                            fontSize: 11.0,
                            color: Theme.of(context).hintColor,
                          ),
                        ),
                        Text(
                          '\$$luggage',
                          style: context.titleMedium.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
            const SizedBox(width: _hMarginCard),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: _hMarginCard),
          child: Row(
            children: [
              Expanded(
                child: ButtonCustom(
                  height: 50,
                  onPress: _onButtonTap,
                  child: Text(
                    _currentSeatIsAdded
                        ? S.of(context).save
                        : S.of(context).add,
                  ),
                ),
              ),
              const SizedBox(width: 10.0),
              Expanded(
                child: ButtonCustom(
                  height: 50,
                  onPress: _onNextPage,
                  child: Text(S.of(context).next),
                ),
              ),
            ],
          ),
        ),
      ].expand((element) => [element, const SizedBox(height: 15.0)]).toList(),
    );
  }

  SizedBox _chairField(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            border: Border.all(
              width: 1.5,
              color: Theme.of(context).primaryColor,
            ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(100.0),
              topRight: Radius.circular(10.0),
              bottomLeft: Radius.circular(100.0),
              bottomRight: Radius.circular(10.0),
            ),
          ),
          child: Row(
            children: [
              Container(
                width: 100,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(100.0),
                    topRight: Radius.circular(10.0),
                    bottomLeft: Radius.circular(100.0),
                    bottomRight: Radius.circular(10.0),
                  ),
                ),
              ),
              const SizedBox(width: 10.0),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ..._ticInformation
                        .map<Widget>(
                          (e) => Wrap(
                            direction: Axis.vertical,
                            children: [
                              for (int i = 0; i < e.quantity; i++)
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                      onPressed: () => _onSelectedSeat(i, e),
                                      icon: Icon(
                                        Icons.chair,
                                        color: _listTic
                                                .map((item) =>
                                                    '${item.type} - ${item.seat}')
                                                .contains(
                                                    '${e.id.ticketType} - $i')
                                            ? Theme.of(context).primaryColor
                                            : Theme.of(context).hintColor,
                                      ),
                                    ),
                                    Text(
                                      '${e.seatHeader}$i',
                                      style: context.titleSmall.copyWith(
                                        fontSize: 12,
                                      ),
                                    )
                                  ],
                                )
                            ],
                          ),
                        )
                        .expandIndexed(
                          (index, element) => [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Column(
                                children: [
                                  Text(
                                    _ticInformation[index]
                                        .seatHeader
                                        .toUpperCase(),
                                    style: context.titleMedium.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: double.infinity,
                                      width: 1,
                                      decoration: DottedDecoration(
                                        linePosition: LinePosition.left,
                                        color: Theme.of(context).hintColor,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            element,
                          ],
                        )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Expanded _benefitWithText(Map<String, dynamic> e, BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            e['icon'],
            color: Colors.grey,
          ),
          const SizedBox(height: 5.0),
          Text(
            e['title'],
            maxLines: 1,
            style: context.titleSmall.copyWith(fontSize: 12.0),
          )
        ],
      ),
    );
  }
}
