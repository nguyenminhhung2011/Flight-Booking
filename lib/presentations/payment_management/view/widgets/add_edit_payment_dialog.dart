import 'package:collection/collection.dart';
import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/widgets/card_custom.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/components/widgets/loading_indicator.dart';
import 'package:flight_booking/core/components/widgets/mobile/category_custom.dart';
import 'package:flight_booking/core/components/widgets/mobile/text_field_custom.dart';
import 'package:flight_booking/core/constant/constant.dart';
import 'package:flight_booking/core/dependency_injection/di.dart';
import 'package:flight_booking/domain/entities/customer/customer.dart';
import 'package:flight_booking/generated/l10n.dart';
import 'package:flight_booking/presentations/payment_management/bloc/add_edit_payment_bloc/add_edit_payment_bloc.dart';
import 'package:flight_booking/presentations_mobile/flight_history_detail/views/flight_history_detail_screen.dart';
import 'package:flight_booking/presentations_mobile/flight_history_detail/views/widgets/customer_information_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class EditPaymentDialog extends StatefulWidget {
  const EditPaymentDialog({super.key, required this.id});

  final int id;

  @override
  State<EditPaymentDialog> createState() => _EditPaymentDialogState();
}

class _EditPaymentDialogState extends State<EditPaymentDialog> {
  final AddEditPaymentBloc bloc = injector.get<AddEditPaymentBloc>();

  late final headerStyle1 = context.titleMedium
      .copyWith(fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis);

  late final titStyle1 = context.titleSmall.copyWith(
      fontWeight: FontWeight.w500,
      color: Theme.of(context).hintColor,
      overflow: TextOverflow.ellipsis);

  late final primaryColor = Theme.of(context).primaryColor;

  late final textStyle = context.titleMedium.copyWith(
    fontWeight: FontWeight.w500,
  );

  late final height = MediaQuery.of(context).size.height;
  late final width = MediaQuery.of(context).size.width;

  final customerNameController = TextEditingController();
  final customerEmailController = TextEditingController();
  final customerPhoneController = TextEditingController();
  final customerDobController = TextEditingController();

  final PageController pageController =
      PageController(initialPage: 0, keepPage: true);

  final ValueNotifier<int> currentPerson = ValueNotifier(0);

  @override
  void initState() {
    pageController.addListener(() {
      if (pageController.page != null) {
        currentPerson.value = pageController.page!.ceil();
      }
    });

    bloc.getPaymentDetail(widget.id);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    currentPerson.dispose();
    super.dispose();
  }

  void _stateChangeListener(BuildContext context, AddEditPaymentState state) {
    if (state is AddEditPaymentStateFailed) {
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          state.message,
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
        ),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddEditPaymentBloc, AddEditPaymentState>(
      bloc: bloc,
      listener: _stateChangeListener,
      builder: (context, state) {
        customerNameController.text = state.payment.customer?.name ?? "";
        customerEmailController.text = state.payment.customer?.email ?? "";
        customerPhoneController.text =
            state.payment.customer?.phoneNumber ?? "";
        customerDobController.text = DateFormat()
            .add_yMd()
            .format(state.payment.customer?.birthday ?? DateTime.now());
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          child: Container(
            height: height * 0.8,
            width: width * 0.6,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.all(30),
            child: state is LoadingDialogState
                ? const LoadingIndicator()
                : SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Edit Payment Information",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            IconButton(
                              onPressed: Navigator.of(context).pop,
                              iconSize: 25,
                              constraints: const BoxConstraints(),
                              icon: Icon(
                                Icons.close,
                                color:
                                    Theme.of(context).colorScheme.onBackground,
                              ),
                            )
                          ],
                        ),
                        Divider(
                            color: Theme.of(context).hintColor,
                            height: 15,
                            thickness: 0.5),
                        CardCustom(
                          width: double.infinity,
                          padding: const EdgeInsets.all(15),
                          margin: const EdgeInsets.all(0.0),
                          isShowHeight: false,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      S.of(context).contactInformationStatus,
                                      style: headerStyle1,
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      S.of(context).save,
                                      style: titStyle1.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: primaryColor,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const DividerCustomWithAirplane(),
                              Row(
                                children: [
                                  Expanded(
                                    child: TextFieldCustom(
                                      paddingLeft: 0,
                                      paddingRight: 0,
                                      headerText: S.of(context).name,
                                      headerTextStyle: headerStyle1,
                                      hintStyle: titStyle1,
                                      hintText: S.of(context).enterYourName,
                                      controller: customerNameController,
                                      textStyle: textStyle,
                                      underText: 'as on ID card (unsigned)',
                                      underTextStyle: titStyle1,
                                    ),
                                  ),
                                  const SizedBox(width: 10.0),
                                  Expanded(
                                    child: TextFieldCustom(
                                      paddingLeft: 0,
                                      paddingRight: 0,
                                      headerText: S.of(context).emailAddress,
                                      headerTextStyle: headerStyle1,
                                      hintText: S.of(context).enterYourEmail,
                                      hintStyle: titStyle1,
                                      controller: customerEmailController,
                                      textStyle: textStyle,
                                      underText: 'Examples: email@example.com',
                                      underTextStyle: titStyle1,
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: TextFieldCustom(
                                      paddingLeft: 0,
                                      paddingRight: 0,
                                      headerText: S.of(context).phoneNumber,
                                      isPhoneNumberField: true,
                                      headerTextStyle: headerStyle1,
                                      isNumberInputType: true,
                                      hintStyle: titStyle1,
                                      hintText:
                                          S.of(context).enterYourPhoneNumber,
                                      controller: customerPhoneController,
                                      textStyle: textStyle,
                                      underText:
                                          'For example: +84 901234567 where (+84) is the country code and 901234567 is the mobile number',
                                      underTextStyle: titStyle1,
                                    ),
                                  ),
                                  const SizedBox(width: 10.0),
                                  Expanded(
                                    child: TextFieldCustom(
                                      onTap: () async {
                                        (await context.pickDateTime());
                                      },
                                      paddingLeft: 0,
                                      paddingRight: 0,
                                      headerText: S.of(context).birthday,
                                      headerTextStyle: headerStyle1,
                                      hintText: "Enter your birthday",
                                      hintStyle: titStyle1,
                                      controller: customerDobController,
                                      textStyle: textStyle,
                                      underText: '',
                                      underTextStyle: titStyle1,
                                    ),
                                  ),
                                ],
                              ),
                            ]
                                .expand<Widget>((element) =>
                                    [element, const SizedBox(height: 10.0)])
                                .toList()
                              ..removeLast(),
                          ),
                        ),
                        const SizedBox(height: 15.0),
                        CardCustom(
                          width: double.infinity,
                          padding: const EdgeInsets.all(15),
                          margin: const EdgeInsets.all(0.0),
                          isShowHeight: false,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              ValueListenableBuilder<int>(
                                valueListenable: currentPerson,
                                builder: (context, value, child) =>
                                    CategoryField(
                                  categoryType: CategoryType.textCategory,
                                  marginLeft: 0.0,
                                  marginTop: 10.0,
                                  spacingItem: 15.0,
                                  marginBottom: 0.0,
                                  categories: state.payment.tickets
                                      .map((ticket) => ticket.name)
                                      .mapIndexed(
                                        (index, e) => CategoryStyle(
                                          text: e,
                                          isSelected: index == value,
                                          onPress: () {
                                            pageController.animateToPage(
                                              index,
                                              duration: const Duration(
                                                  milliseconds: 500),
                                              curve: Curves.fastOutSlowIn,
                                            );
                                          },
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .titleMedium,
                                        ),
                                      )
                                      .toList(),
                                ),
                              ),
                              const DividerCustomWithAirplane(),
                              Text(
                                S.of(context).warningsPassenger,
                                style: titStyle1.copyWith(
                                    color: primaryColor,
                                    overflow: TextOverflow.clip),
                              ),
                              const SizedBox(height: 20.0),
                              SizedBox(
                                height: 250,
                                child: PageView(
                                  controller: pageController,
                                  physics: const NeverScrollableScrollPhysics(),
                                  children: state.payment.tickets
                                      .map(
                                        (ticket) => CustomerInformationField(
                                          isBorder: true,
                                          customer: Customer(
                                            id: int.parse(ticket.id),
                                            name: ticket.name,
                                            phoneNumber: ticket.phoneNumber,
                                            email: ticket.emailAddress,
                                            identifyNum: "identityNum",
                                            gender: ticket.gender,
                                            birthday: ticket.dateBorn,
                                          ),
                                        ),
                                      )
                                      .toList(),
                                ),
                              )
                            ]
                                .expand((element) =>
                                    [element, const SizedBox(height: 10.0)])
                                .toList()
                              ..removeLast(),
                          ),
                        ),
                        const SizedBox(height: 20),
                        CardCustom(
                          width: double.infinity,
                          padding: const EdgeInsets.all(15),
                          margin: const EdgeInsets.all(0.0),
                          isShowHeight: false,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      "Payment Card Information",
                                      style: headerStyle1,
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      S.of(context).save,
                                      style: titStyle1.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: primaryColor,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const DividerCustomWithAirplane(),
                              TextFieldCustom(
                                paddingLeft: 0,
                                paddingRight: 0,
                                headerText: S.of(context).name,
                                headerTextStyle: headerStyle1,
                                hintStyle: titStyle1,
                                hintText: "Enter your card number",
                                controller:
                                    TextEditingController(text: "Hoang"),
                                textStyle: textStyle,
                                underText: '',
                                underTextStyle: titStyle1,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: TextFieldCustom(
                                      onTap: () async {
                                        (await context.pickDateTime());
                                      },
                                      paddingLeft: 0,
                                      paddingRight: 0,
                                      headerText: 'Issue Date',
                                      headerTextStyle: headerStyle1,
                                      hintStyle: titStyle1,
                                      hintText: "20-03-2002",
                                      controller: TextEditingController(),
                                      textStyle: textStyle,
                                      underText: '',
                                      underTextStyle: titStyle1,
                                    ),
                                  ),
                                  const SizedBox(width: 10.0),
                                  Expanded(
                                    child: TextFieldCustom(
                                      onTap: () async {
                                        (await context.pickDateTime());
                                      },
                                      paddingLeft: 0,
                                      paddingRight: 0,
                                      headerText: "Expiration Date",
                                      headerTextStyle: headerStyle1,
                                      hintText: S.of(context).enterYourEmail,
                                      hintStyle: titStyle1,
                                      controller: TextEditingController(),
                                      textStyle: textStyle,
                                      underText: "20-03-2002",
                                      underTextStyle: titStyle1,
                                    ),
                                  )
                                ],
                              ),
                              TextFieldCustom(
                                paddingLeft: 0,
                                paddingRight: 0,
                                headerText: S.of(context).phoneNumber,
                                isPhoneNumberField: true,
                                headerTextStyle: headerStyle1,
                                isNumberInputType: true,
                                hintStyle: titStyle1,
                                hintText: S.of(context).enterYourPhoneNumber,
                                controller: TextEditingController(),
                                textStyle: textStyle,
                                underText:
                                    'For example: +84 901234567 where (+84) is the country code and 901234567 is the mobile number',
                                underTextStyle: titStyle1,
                              ),
                            ]
                                .expand((element) =>
                                    [element, const SizedBox(height: 10.0)])
                                .toList()
                              ..removeLast(),
                          ),
                        ),
                      ],
                    ),
                  ),
          ),
        );
      },
    );
  }
}
