import 'package:collection/collection.dart';
import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/widgets/extension/color_extension.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/components/widgets/mobile/custom_template_screen_stack_scroll.dart';
import 'package:flight_booking/core/components/widgets/mobile/header_custom.dart';
import 'package:flight_booking/core/constant/constant.dart';
import 'package:flight_booking/core/constant/handle_time.dart';
import 'package:flight_booking/domain/entities/credit_card/credit_card.dart';
import 'package:flight_booking/domain/entities/customer/customer.dart';
import 'package:flight_booking/presentations_mobile/select_scott_mobile/bloc/select_scott_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/components/widgets/mobile/appbar.dart';
import '../../../core/components/widgets/mobile/button_custom.dart';
import '../../../core/components/widgets/mobile/dropdown_button_custom.dart';
import '../../../core/components/widgets/mobile/text_field_custom.dart';
import '../../../generated/l10n.dart';
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
  List<Customer> get listCustomerSelected => _bloc.data.listCustomer;

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _identityController = TextEditingController();

  // final TextEditingController _dateBornController = TextEditingController();
  final ValueNotifier<String> _gender = ValueNotifier<String>('Male');
  final ValueNotifier<DateTime> _dateBorn =
      ValueNotifier<DateTime>(DateTime.now());

  @override
  void initState() {
    super.initState();
    _bloc.add(const SelectScottEvent.started());
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
    state.maybeWhen(orElse: () {});
  }

  void _onChangeTab(int index) {
    _bloc.add(SelectScottEvent.changeTab(tab: index));
  }

  void _onAddNewCustomer() {
    _bloc.add(SelectScottEvent.addNewCustomer(
        customer: Customer(
      creditCard: const CreditCard(),
      id: randDomNumber(100),
      name: _nameController.text,
      identifyNum: _identityController.text,
      phone: _phoneNumberController.text,
      email: _emailController.text,
      gender: _gender.value,
      birthday: _dateBorn.value.millisecondsSinceEpoch,
    )));
    _clearText();
  }

  void _onRemoveCustomer(int index) {
    _bloc.add(SelectScottEvent.removeCustomer(index: index));
  }

  void _bottomClicked(int index) {
    if (index == 1) {
      _onAddNewCustomer();
      return;
    }
    if (listCustomerSelected.isEmpty) {
      //⭐Handle after
      return;
    }
    context.openListPageWithRoute(RoutesMobile.checkout);
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
          afterMainScreen: _after(heightDevice, context),
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
    final customers = state.data.listCustomer;
    final tab = state.data.tab;
    final selectCustomer = state.data.selectCustomer;
    return Container(
      margin: EdgeInsets.only(
        left: _hMarginCard,
        right: _hMarginCard,
        top: heightDevice * 0.45,
        bottom: 70.0,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(30.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).primaryColor.withOpacity(0.3),
            blurRadius: 20.0,
            offset: const Offset(0, -10.0),
          ),
        ],
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
            ? _listCustomerSelectedView(context, customers, selectCustomer)
            : _addNewCustomerField(context, headerStyle, fontColorByCard),
      ]),
    );
  }

  Column _listCustomerSelectedView(
      BuildContext context, List<Customer> customers, int selectedIndex) {
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
            child: Text(S.of(context).add),
            onPress: () => _onChangeTab(1),
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
                            header: S.of(context).identityNumber,
                            title: customers[selectedIndex].identifyNum,
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
                            title: customers[selectedIndex].phone,
                            isStart: true),
                        InformationColumnItem(
                            context: context,
                            header: S.of(context).email,
                            title: customers[selectedIndex].email,
                            isStart: false),
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
                      S.of(context).firstClass,
                      maxLines: 1,
                      style: headerStyle,
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

  Container _after(double heightDevice, BuildContext context) {
    var level1Color = Theme.of(context).dividerColor;
    var level2Color = Theme.of(context).hintColor;
    var level3Color = Theme.of(context).primaryColor;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10.0),
      margin: EdgeInsets.only(
        top: heightDevice * 0.15,
        left: _hMarginCard + 40.0,
        right: _hMarginCard + 40.0,
      ),
      height: heightDevice * 0.85,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(300.0),
          topRight: Radius.circular(300.0),
        ),
      ),
      child: ListView(
        // crossAxisAlignment: CrossAxisAlignment.center,
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
          const SizedBox(height: 40.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: _gridChair(level1Color, level2Color, level3Color),
          )
        ],
      ),
    );
  }

  Column _gridChair(Color level1Color, Color leve2Color, Color level3Color) {
    return Column(
      children: [
        for (int indexColumn = 1;
            indexColumn < fakeNumberChairiInFlight / 4;
            indexColumn++)
          Row(
            children: [
              for (int indexRow = 0; indexRow < 4; indexRow++)
                _chairIcon(() => null, level1Color, leve2Color, level3Color,
                    fakeDataChair[indexColumn * 4 + indexRow]['chec']),
            ]
                .expandIndexed((index, element) => [
                      element,
                      if (index == 0 || index == 2) const Spacer(),
                      if (index == 1) const SizedBox(width: 5.0)
                    ])
                .toList(),
          ),
      ].expand((element) => [element, const SizedBox(height: 10.0)]).toList(),
    );
  }

  Widget _chairIcon(
    Function() onPress,
    Color color1,
    Color color2,
    Color color3,
    int check,
  ) {
    var color = check == 1
        ? color1
        : check == 2
            ? color2
            : color3;
    return GestureDetector(
      onTap: onPress,
      child: Icon(Icons.chair_sharp, color: color),
    );
  }
}
