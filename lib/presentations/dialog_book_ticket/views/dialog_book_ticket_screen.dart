import 'package:collection/collection.dart';
import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/widgets/extension/color_extension.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/components/widgets/mobile/header_custom.dart';
import 'package:flight_booking/presentations/dialog_book_ticket/bloc/book_ticket_bloc.dart';
import 'package:flight_booking/presentations/list_flight/views/widgets/dot_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/components/widgets/mobile/button_custom.dart';
import '../../../domain/entities/seat_selected/seat_selected.dart';
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

  void _onSelectDateBorn() async {
    final result = await context.pickDate(DatePickerMode.day);
    if (result != null) {
      _dateBorn.value = result;
    }
  }

  void _onChangeGender(String? newValue) {
    _gender.value = newValue!;
  }

  void _onChangeSeatView(int index) {}

  void _listenStateChange(_, BTState state) {
    state.maybeWhen(
      changeTicIndexViewSuccess: (data) {},
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
          width: Breakpoints.large.isActive(context)
              ? context.widthDevice * 0.6
              : double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Theme.of(context).cardColor,
            border: Border.all(width: 1, color: Theme.of(context).primaryColor),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeaderTextCustom(headerText: S.of(context).listCustomer),
                    const SizedBox(height: 10.0),
                    ...seatsSelected.mapIndexed(
                      (index, e) => InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                            vertical: 5.0,
                          ),
                          margin: const EdgeInsets.symmetric(
                            horizontal: 5.0,
                            vertical: 3.0,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.transparent,
                            border: Border.all(
                              width: 1,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  '${e.ticInformation.seatHeader} ${e.seatIndex}',
                                  style: context.titleMedium.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              DotCustom(
                                color: Theme.of(context).primaryColor,
                                full: index == _data.indexView,
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(width: 10.0),
              const VerticalDivider(),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
            ),
            color: Theme.of(context).hoverColor,
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
          ...<Map<String, dynamic>>[
            {
              'headerText': S.of(context).name,
              'hint': S.of(context).enterYourEmail,
              'controller': _nameController,
            },
            {
              'headerText': S.of(context).emailAddress,
              'hint': S.of(context).enterYourEmail,
              'controller': _emailController,
            },
            {
              'headerText': S.of(context).phoneNumber,
              'hint': S.of(context).enterYourPhoneNumber,
              'controller': _phoneNumberController,
            },
            {
              'headerText': S.of(context).identityNumber,
              'hint': 'xxx-xxxxxx-xxxxxx',
              'controller': _identityController,
            },
          ].map(
            (e) => TextFieldCustom(
              paddingLeft: _hMarginCard,
              paddingRight: _hMarginCard,
              headerText: e['headerText'].toString(),
              hintText: e['hint'].toString(),
              headerTextStyle: headerTextStyle,
              hintStyle: headerTextStyle,
              controller: e['controller'] as TextEditingController,
              textStyle: headerTextStyle.copyWith(
                fontWeight: FontWeight.w600,
                color: fontColorByCard,
              ),
            ),
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
            child: ButtonCustom(
              height: 50,
              child: Text(S.of(context).add),
              onPress: () {},
            ),
          ),
        ].expand((element) => [element, const SizedBox(height: 15.0)]).toList(),
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
