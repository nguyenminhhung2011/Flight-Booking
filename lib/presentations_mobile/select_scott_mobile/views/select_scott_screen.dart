import 'package:collection/collection.dart';
import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/enum/payment_type.dart';
import 'package:flight_booking/core/components/widgets/extension/color_extension.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/components/widgets/extension/interger_extension.dart';
import 'package:flight_booking/core/components/widgets/mobile/custom_template_screen_stack_scroll.dart';
import 'package:flight_booking/core/components/widgets/mobile/header_custom.dart';
import 'package:flight_booking/core/constant/constant.dart';
import 'package:flight_booking/core/constant/handle_time.dart';
import 'package:flight_booking/domain/entities/seat_selected/seat_selected.dart';
import 'package:flight_booking/domain/entities/ticket/ticket.dart';
import 'package:flight_booking/presentations_mobile/select_scott_mobile/bloc/select_scott_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/components/widgets/mobile/appbar.dart';
import '../../../core/components/widgets/mobile/button_custom.dart';
import '../../../core/components/widgets/mobile/dropdown_button_custom.dart';
import '../../../core/components/widgets/mobile/text_field_custom.dart';
import '../../../domain/entities/ticket/ticket_information.dart';
import '../../../generated/l10n.dart';
import '../../flight_history_detail/views/flight_history_detail_screen.dart';
import '../../flight_history_detail/views/widgets/customer_information_field.dart';
import '../../routes_mobile.dart';

const _hMarginCard = 20.0;

class SelectScottScreen extends StatefulWidget {
  const SelectScottScreen({super.key});

  @override
  State<SelectScottScreen> createState() => _SelectScottScreenState();
}

class _SelectScottScreenState extends State<SelectScottScreen> {
  SelectScottBloc get _bloc => BlocProvider.of<SelectScottBloc>(context);

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _identityController = TextEditingController();
  List<TicketInformation> get _ticInformation => _bloc.data.ticInformation;
  List<Ticket> get _tics => _bloc.data.tics;
  List<Ticket> get _redTics => _bloc.data.redTics;
  SeatSelected? get _currentSeat => _bloc.data.currentSeat;

  // final TextEditingController _dateBornController = TextEditingController();
  final ValueNotifier<String> _gender = ValueNotifier<String>('Male');
  final ValueNotifier<DateTime> _dateBorn =
      ValueNotifier<DateTime>(DateTime.now());

  @override
  void initState() {
    _bloc.add(const SelectScottEvent.started());
    _bloc.add(const SelectScottEvent.getAllTicOfFlight());
    _bloc.add(const SelectScottEvent.getFlightById());
    _bloc.add(const SelectScottEvent.getTicInformation());
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneNumberController.dispose();
    _identityController.dispose();
    super.dispose();
  }

  void _clearText() {
    _nameController.clear();
    _emailController.clear();
    _phoneNumberController.clear();
    _identityController.clear();
  }

  void _listenStateChange(BuildContext context, SelectScottState state) {
    state.maybeWhen(
        addTicToDBSuccess: (data, paymentId) async {
          final show = await context.showYesNoDialog(
              300, 'Payment', 'Do you want payment now?');
          if (show) {
            // ignore: use_build_context_synchronously
            context.openPageWithRouteAndParams(RoutesMobile.checkout, {
              'ids': {
                'flightId': '',
                'paymentId': paymentId,
              },
            });
          } else {
            // ignore: use_build_context_synchronously
            context.popUntil(RoutesMobile.listFlightMobile);
          }
          // context.openListPageWithRoute(RoutesMobile.checkout);
        },
        selectedSeatSuccess: (data, error) {
          _bloc.add(const SelectScottEvent.changeTab(tab: 1));
        },
        selectedSeatFailed: (data) {
          context.showSuccessDialog(
              width: 300, header: 'Select Seat', title: 'Seat was selected');
        },
        orElse: () {});
  }

  void _onChangeTab() async {
    final show = await _onShowSelectedSheet();
    if (show != null) {
      _bloc.add(SelectScottEvent.selectedSeat(newSeat: show));
    }
  }

  void _onAddNewCustomer() {
    _bloc.add(SelectScottEvent.addNewCustomer(
        tic: Ticket(
      id: randDomNumber(100),
      name: _nameController.text,
      gender: _gender.value.toUpperCase(),
      phoneNumber: _phoneNumberController.text,
      emailAddress: _emailController.text,
      seat: _currentSeat?.seatIndex ?? 0,
      type: _currentSeat?.ticInformation.id.ticketType ?? 0,
      luggage: 10.0,
      price: 0,
      birthday: _dateBorn.value.millisecondsSinceEpoch,
      timeBought: DateTime.now().millisecondsSinceEpoch,
    )));
    _clearText();
  }

  void _onRemoveCustomer(int index) {
    _bloc.add(SelectScottEvent.removeCustomer(index: index));
  }

  Future<SeatSelected?> _onShowSelectedSheet() async {
    if (_ticInformation.isEmpty) {
      return null;
    }
    return showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      // isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(50.0)),
      ),
      builder: (context) {
        return BottomSelectedSeat(
          ticOfFlight: _redTics,
          tics: _tics,
          ticInformation: _ticInformation,
        );
      },
    );
  }

  void _bottomClicked(int index) {
    if (index == 1) {
      _onAddNewCustomer();
      return;
    }
    if (_tics.isEmpty) {
      //⭐Handle after
      return;
    }
    _bloc.add(SelectScottEvent.addTicToDB(
        paymentType: PaymentType.unknown.displayValue.toUpperCase()));
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

  void _onSelectCustomer(int index) {
    _bloc.add(SelectScottEvent.selectCustomer(index: index));
  }

  @override
  Widget build(BuildContext context) {
    final heightDevice = context.heightDevice;
    var fontColorByCard = Theme.of(context).cardColor.fontColorByBackground;
    var headerTextStyle = context.timeStyle
        .copyWith(fontWeight: FontWeight.w600, color: Colors.grey);
    return BlocConsumer<SelectScottBloc, SelectScottState>(
      listener: _listenStateChange,
      builder: (context, state) {
        return CustomTemplateScreenStackScroll(
          bottomSheet: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
            child: ButtonCustom(
              loading: state.loadingAdd,
              height: 50,
              child: state.data.tab == 1
                  ? Text(S.of(context).add)
                  : Text(S.of(context).checkout),
              onPress: () => _bottomClicked(state.data.tab),
            ),
          ),
          color: Theme.of(context).primaryColor,
          appbar: AppbarCustom(
            leading: IconButton(
              onPressed: () => context.pop(),
              icon: const Icon(Icons.arrow_back),
            ),
            backgroundColor: Colors.transparent,
            isCenterTitle: true,
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert_rounded),
              )
            ],
            title: [
              Text(
                S.of(context).selectScott,
                style: context.headerAppBarTextStyle,
              ),
            ],
          ),
          // afterMainScreen: _after(heightDevice, context),
          children: [
            SliverList(
              delegate: SliverChildListDelegate(<Widget>[
                _book(heightDevice, context, fontColorByCard, headerTextStyle,
                    state),
              ]),
            )
          ],
        );
      },
    );
  }

  Container _book(double heightDevice, BuildContext context,
      Color fontColorByCard, TextStyle headerStyle, SelectScottState state) {
    final tab = state.data.tab;
    final selectCustomer = state.data.selectCustomer;
    return Container(
      constraints: BoxConstraints(minHeight: context.heightDevice),
      margin: const EdgeInsets.only(
        left: _hMarginCard,
        right: _hMarginCard,
        bottom: 70.0,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(30.0),
        ),
      ),
      child: (_bloc.state.loading)
          ? Center(
              child: CircularProgressIndicator(
                color: Theme.of(context).primaryColor,
              ),
            )
          : Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(height: 15.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: _hMarginCard),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('British Airways',
                        style: context.primaryMediumText) // change this text
                  ],
                ),
              ),
              _paddingDivider(),
              tab == 0
                  ? _listCustomerSelectedView(context, _tics, selectCustomer)
                  : _addNewCustomerField(context, headerStyle, fontColorByCard),
            ]),
    );
  }

  Column _listCustomerSelectedView(
      BuildContext context, List<Ticket> customers, int selectedIndex) {
    final ticInformation = customers.isNotEmpty
        ? _ticInformation.firstWhere(
            (element) => element.id.ticketType == customers[selectedIndex].type)
        : null;
    return Column(
      children: [
        HeaderTextCustom(
          headerText: S.of(context).memberInfo,
          textStyle: context.titleMedium.copyWith(
            fontWeight: FontWeight.bold,
          ),
          padding: const EdgeInsets.symmetric(horizontal: _hMarginCard),
          widget: ButtonCustom(
            width: 90,
            onPress: _onChangeTab,
            child: Text(S.of(context).add),
          ),
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10.0),
          margin: const EdgeInsets.symmetric(horizontal: _hMarginCard),
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: const BorderRadius.all(Radius.circular(15.0)),
            border: Border.all(
              width: 1,
              color: Theme.of(context).dividerColor,
            ),
          ),
          child: Wrap(
            children: customers
                .mapIndexed((index, e) => Padding(
                      padding: const EdgeInsets.only(
                          right: 5.0, top: 5.0, bottom: 5.0),
                      child: GestureDetector(
                        onTap: () => _onSelectCustomer(index),
                        onDoubleTap: () => _onRemoveCustomer(index),
                        child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 5.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.1),
                              border: Border.all(
                                  width: 1,
                                  color: Theme.of(context).primaryColor),
                            ),
                            child: Text(
                              e.name,
                              style: context.titleMedium.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Theme.of(context).primaryColor),
                            )),
                      ),
                    ))
                .toList(),
          ),
        ),
        customers.isNotEmpty
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: _hMarginCard),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InformationColumnItem(
                            context: context,
                            header: S.of(context).name,
                            title: customers[selectedIndex].name,
                            isStart: true),
                        InformationColumnItem(
                            context: context,
                            header: S.of(context).gender,
                            title: customers[selectedIndex].gender,
                            isStart: false),
                      ]
                          .expand((element) => [Expanded(child: element)])
                          .toList(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InformationColumnItem(
                            context: context,
                            header: S.of(context).dateBorn,
                            title: getYmdFormat(
                                DateTime.fromMillisecondsSinceEpoch(
                                    customers[selectedIndex].birthday)),
                            isStart: true),
                        InformationColumnItem(
                            context: context,
                            header: S.of(context).luggage,
                            title: customers[selectedIndex].luggage.toString(),
                            isStart: false),
                      ]
                          .expand((element) => [Expanded(child: element)])
                          .toList(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InformationColumnItem(
                            context: context,
                            header: S.of(context).phoneNumber,
                            title: customers[selectedIndex].phoneNumber,
                            isStart: true),
                        InformationColumnItem(
                            context: context,
                            header: S.of(context).email,
                            title: customers[selectedIndex].emailAddress,
                            isStart: false),
                      ]
                          .expand((element) => [Expanded(child: element)])
                          .toList(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InformationColumnItem(
                            context: context,
                            header: S.of(context).seat,
                            title:
                                '${ticInformation?.seatHeader ?? 'A'}${customers[selectedIndex].seat}',
                            isStart: true),
                        InformationColumnItem(
                          context: context,
                          header: S.of(context).ticketType,
                          title: ticInformation
                                  ?.id.ticketType.ticClass.displayValue ??
                              '',
                          isStart: false,
                        ),
                      ]
                          .expand((element) => [Expanded(child: element)])
                          .toList(),
                    ),
                  ]
                      .expand(
                          (element) => [element, const SizedBox(height: 10.0)])
                      .toList(),
                ),
              )
            : SizedBox(
                height: 150,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.search_off_sharp, color: Colors.grey),
                    Text(
                      S.of(context).addNewCustomer,
                      style: context.titleMedium.copyWith(
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
      ].expand((element) => [element, const SizedBox(height: 15.0)]).toList(),
    );
  }

  Column _addNewCustomerField(
      BuildContext context, TextStyle headerStyle, Color fontColorByCard) {
    return Column(
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
                      _currentSeat?.ticInformation.id.ticketType.ticClass
                              .displayValue ??
                          '',
                      maxLines: 1,
                      style: headerStyle,
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
                      style: headerStyle,
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
                  style: headerStyle,
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
        TextFieldCustom(
          paddingLeft: _hMarginCard,
          paddingRight: _hMarginCard,
          headerText: S.of(context).name,
          hintText: S.of(context).enterYourName,
          headerTextStyle: headerStyle,
          hintStyle: headerStyle,
          controller: _nameController,
          textStyle: headerStyle.copyWith(
            fontWeight: FontWeight.w600,
            color: fontColorByCard,
          ),
        ),
        TextFieldCustom(
          paddingLeft: _hMarginCard,
          paddingRight: _hMarginCard,
          headerText: S.of(context).emailAddress,
          headerTextStyle: headerStyle,
          hintStyle: headerStyle,
          hintText: S.of(context).enterYourEmail,
          controller: _emailController,
          textStyle: headerStyle.copyWith(
            fontWeight: FontWeight.w600,
            color: fontColorByCard,
          ),
        ),
        TextFieldCustom(
          paddingLeft: _hMarginCard,
          paddingRight: _hMarginCard,
          headerText: S.of(context).phoneNumber,
          hintText: S.of(context).enterYourPhoneNumber,
          isPhoneNumberField: true,
          headerTextStyle: headerStyle,
          isNumberInputType: true,
          hintStyle: headerStyle,
          controller: _phoneNumberController,
          textStyle: headerStyle.copyWith(
            fontWeight: FontWeight.w600,
            color: fontColorByCard,
          ),
        ),
        TextFieldCustom(
          paddingLeft: _hMarginCard,
          paddingRight: _hMarginCard,
          headerText: S.of(context).identityNumber,
          hintText: 'xxx-xxxxxx-xxxxxx',
          headerTextStyle: headerStyle,
          isNumberInputType: true,
          hintStyle: headerStyle,
          controller: _identityController,
          textStyle: headerStyle.copyWith(
            fontWeight: FontWeight.w600,
            color: fontColorByCard,
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
              headerTextStyle: headerStyle,
              isNumberInputType: true,
              hintStyle: headerStyle,
              controller: TextEditingController(text: getYmdFormat(dateBorn)),
              textStyle: headerStyle.copyWith(
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
                style: headerStyle,
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
                          style: headerStyle.copyWith(
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
        TextFieldCustom(
          paddingLeft: _hMarginCard,
          paddingRight: _hMarginCard,
          headerText: S.of(context).flightType,
          headerTextStyle: headerStyle,
          isNumberInputType: true,
          hintStyle: headerStyle,
          controller: TextEditingController(text: 'Round Trip'),
          textStyle: headerStyle.copyWith(
            fontWeight: FontWeight.w600,
            color: fontColorByCard,
          ),
          suffix: IconButton(
            icon: const Icon(Icons.arrow_drop_down),
            onPressed: () {},
          ),
        ),
      ].expand((element) => [element, const SizedBox(height: 15.0)]).toList(),
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

  Padding _paddingDivider() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: _hMarginCard),
      child: Divider(),
    );
  }
}

class BottomSelectedSeat extends StatefulWidget {
  final List<Ticket> ticOfFlight;
  final List<Ticket> tics;
  final List<TicketInformation> ticInformation;
  const BottomSelectedSeat({
    super.key,
    required this.ticOfFlight,
    required this.tics,
    required this.ticInformation,
  });

  @override
  State<BottomSelectedSeat> createState() => _BottomSelectedSeatState();
}

class _BottomSelectedSeatState extends State<BottomSelectedSeat> {
  List<Ticket> get _listTicOfFlight => widget.ticOfFlight;
  List<Ticket> get _tics => widget.tics;
  List<TicketInformation> get _ticInformation => widget.ticInformation;
  SeatSelected? _seatSelected;

  void _onSelectedSeat(int index, TicketInformation ticInformation) {
    _seatSelected = SeatSelected(
      seatIndex: index,
      ticInformation: ticInformation,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      children: [
        _after(context.heightDevice, context),
      ],
    );
  }

  Container _after(double heightDevice, BuildContext context) {
    var level1Color = Theme.of(context).dividerColor;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10.0),
      margin: EdgeInsets.only(
        top: heightDevice * 0.15,
        left: _hMarginCard + 40.0,
        right: _hMarginCard + 40.0,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(300.0),
          topRight: Radius.circular(300.0),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 20.0),
          Text(
            S.of(context).premium,
            textAlign: TextAlign.center,
            style: context.timeStyle.copyWith(color: level1Color),
          ),
          const SizedBox(height: 20.0),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  ...mockDataBenefits.map(
                    (e) => Expanded(child: Icon(e['icon'], color: level1Color)),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ..._ticInformation
                  .map<Widget>(
                    (e) => Wrap(
                      direction: Axis.horizontal,
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
                                  color: _listTicOfFlight
                                          .map((item) =>
                                              '${item.type} - ${item.seat}')
                                          .contains('${e.id.ticketType} - $i')
                                      ? Colors.red
                                      : _tics
                                                  .map((item) =>
                                                      '${item.type} - ${item.seat}')
                                                  .contains(
                                                    '${e.id.ticketType} - $i',
                                                  ) ||
                                              (_seatSelected?.seatIndex == i &&
                                                  _seatSelected?.ticInformation
                                                          .id.ticketType ==
                                                      e.id.ticketType)
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
                      element,
                      const SizedBox(height: 5.0),
                      const DividerCustomWithAirplane(),
                      const SizedBox(height: 5.0),
                    ],
                  )
            ],
          ),
          const SizedBox(height: 10.0),
          ButtonCustom(
            onPress: () => context.popArgs(_seatSelected),
            height: 45.0,
            child: Text(S.of(context).seat),
          )
        ],
      ),
    );
  }
}
