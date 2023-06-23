import 'dart:developer';

import 'package:collection/collection.dart';
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/widgets/extension/color_extension.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/components/widgets/form_add_edit_information.dart';
import 'package:flight_booking/presentations/dialog_book_ticket/bloc/book_ticket_bloc.dart';
import 'package:flight_booking/presentations/selected_customer/views/selected_customer_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/components/widgets/mobile/button_custom.dart';
import '../../../domain/entities/seat_selected/seat_selected.dart';
import '../../../domain/entities/ticket/ticket_information.dart';
import '../../../generated/l10n.dart';
import 'package:flight_booking/core/constant/constant.dart';
import 'package:flight_booking/core/constant/handle_time.dart';
import 'package:flutter/cupertino.dart';

import '../../../core/components/widgets/mobile/dropdown_button_custom.dart';
import '../../../core/components/widgets/mobile/text_field_custom.dart';
import '../bloc/book_ticket_model_state.dart';

const _hMarginCard = 20.0;

class DialogBookTicket extends StatefulWidget {
  const DialogBookTicket({
    super.key,
  });

  @override
  State<DialogBookTicket> createState() => _DialogBookTicketState();
}

class _DialogBookTicketState extends State<DialogBookTicket> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _identityController = TextEditingController();

  // final TextEditingController _dateBornController = TextEditingController();
  final ValueNotifier<String> _gender = ValueNotifier<String>('Male');
  final ValueNotifier<DateTime> _dateBorn =
      ValueNotifier<DateTime>(DateTime.now());

  BTBloc get _bloc => BlocProvider.of<BTBloc>(context);
  BTModelState get _data => _bloc.data;
  int get _flightId => _bloc.flightId;
  List<SeatSelected> get seatsSelected => _bloc.listSeat;
  List<TicketInformation> get _ticInformation => _data.ticInformation;

  List<SeatSelected> get _seatsSelected => _data.chairsSelected;
  @override
  void initState() {
    _bloc.add(const BTEvent.getTicInformation());
    _bloc.add(const BTEvent.fetchCustomerData());
    super.initState();
  }

  void _onSelectDateBorn() async {
    final result = await context.pickDate(DatePickerMode.day);
    if (result != null) {
      _dateBorn.value = result;
    }
  }

  void _onChangeGender(String? newValue) {
    _gender.value = newValue!;
  }

  void _onSelectedSeat(int seatIndex, TicketInformation tic) {
    _bloc.add(BTEvent.selectedSeat(
      ticInformation: tic,
      seatIndex: seatIndex,
    ));
  }

  void _listenStateChange(_, BTState state) {
    state.maybeWhen(
      changeTicIndexViewSuccess: (data) {},
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
            border: Border.all(width: 1, color: Theme.of(context).primaryColor),
          ),
          child: Row(
            children: [
              const Expanded(
                flex: 4,
                child: SelectedCustomerForm(),
              ),
              const SizedBox(width: 10.0),
              _ticInformationField(context, headerTextStyle, fontColorByCard),
            ],
          ),
        );
      },
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
          const SizedBox(height: 10.0),
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
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      S.of(context).firstClass,
                      maxLines: 1,
                      style: headerTextStyle,
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      'Seat 5D',
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
        ValueListenableBuilder(
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
                items: ['Male', 'Female']
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: _hMarginCard),
          child: Row(
            children: [
              Expanded(
                child: ButtonCustom(
                  height: 50,
                  child: Text(S.of(context).add),
                  onPress: () {},
                ),
              ),
              const SizedBox(width: 10.0),
              Expanded(
                child: ButtonCustom(
                  height: 50,
                  child: Text(S.of(context).next),
                  onPress: () {},
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
                                        color: _seatsSelected
                                                .map((item) =>
                                                    convertToSeatString(item))
                                                .contains('${e.seatHeader}$i')
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
