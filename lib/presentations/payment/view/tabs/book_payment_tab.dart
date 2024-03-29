import 'package:collection/collection.dart';
import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/components/const/image_const.dart';
import '../../../../core/components/widgets/card_custom.dart';
import '../../../../core/components/widgets/mobile/button_custom.dart';
import '../../../../core/components/widgets/mobile/category_custom.dart';
import '../../../../core/components/widgets/mobile/text_field_custom.dart';
import '../../../../core/constant/constant.dart';
import '../../../../domain/entities/customer/customer.dart';
import '../../../../domain/entities/ticket/ticket.dart';
import '../../../../generated/l10n.dart';
import '../../../../presentations_mobile/flight_history_detail/views/flight_history_detail_screen.dart';
import '../../../../presentations_mobile/flight_history_detail/views/widgets/customer_information_field.dart';
import '../../blocs/payment_tab_bloc.dart';

const _hPaddingCard = 15.0;
const _maxWidthDevice = 1200;

class BookPaymentTab extends StatefulWidget {
  final Function() onNextPage;
  const BookPaymentTab({
    super.key,
    required this.onNextPage,
  });

  @override
  State<BookPaymentTab> createState() => _BookPaymentTabState();
}

class _BookPaymentTabState extends State<BookPaymentTab> {
  PaymentTabBloc get _bloc => context.read<PaymentTabBloc>();
  Customer? get _customer => _bloc.data.customer;
  List<Ticket> get _tics => _bloc.data.tics;
  int get _currentIndex => _bloc.data.customerIndex;

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneNumberController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    if (_customer != null) {
      _nameController.text = _customer?.name ?? '';
      _phoneNumberController.text = _customer?.phone ?? '';
      _emailController.text = _customer?.email ?? '';
    }
  }

  void _onCustomerViewChange(int index) {
    _bloc.add(PaymentTabEvent.changeCustomerIndexView(newIndex: index));
  }

  void _onUpdateContactInformation() async {
    final show = await context.showYesNoDialog(300,
        'Update contact information', 'Are you sure update your information?');
    if (!show) {
      return;
    }
    _bloc.add(PaymentTabEvent.updateContactCustomer(
      name: _nameController.text,
      phoneNumber: _phoneNumberController.text,
      email: _emailController.text,
    ));
  }

  @override
  Widget build(BuildContext context) {
    final headerStyle = context.titleLarge
        .copyWith(fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis);
    final headerStyle1 = context.titleMedium
        .copyWith(fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis);
    final titStyle = context.titleMedium.copyWith(
        fontWeight: FontWeight.w500,
        color: Theme.of(context).hintColor,
        overflow: TextOverflow.ellipsis);
    final titStyle1 = context.titleSmall.copyWith(
        fontWeight: FontWeight.w500,
        color: Theme.of(context).hintColor,
        overflow: TextOverflow.ellipsis);
    final primaryColor = Theme.of(context).primaryColor;
    final textStyle = context.titleMedium.copyWith(
      fontWeight: FontWeight.w500,
    );
    return BlocBuilder<PaymentTabBloc, PaymentTabState>(
        builder: (context, state) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: context.widthDevice > _maxWidthDevice
                      ? 120
                      : _hPaddingCard),
              child: ListView(
                children: [
                  Text(S.of(context).bookingForMe, style: headerStyle),
                  const SizedBox(height: 10.0),
                  Text(S.of(context).fillInYourInfo, style: titStyle),
                  const SizedBox(height: 15.0),
                  CardCustom(
                    width: double.infinity,
                    padding: const EdgeInsets.all(_hPaddingCard),
                    margin: const EdgeInsets.all(0.0),
                    isShowHeight: false,
                    child: Row(
                      children: [
                        Image.asset(ImageConst.onboard3,
                            width: 120, height: 100),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '  ${S.of(context).loginOrRegisterAndEn}',
                                style: headerStyle1,
                              ),
                              const SizedBox(height: 10.0),
                              Text(
                                '  ${S.of(context).bookingFasterAndEasier}',
                                style: titStyle1,
                              ),
                              const SizedBox(height: 15.0),
                              TextButton(
                                onPressed: () {},
                                child: state.loadingUpdateContact
                                    ? const Center(
                                        child: CircularProgressIndicator(),
                                      )
                                    : Text(
                                        S.of(context).loginOrRegister,
                                        style: titStyle1.copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: primaryColor,
                                        ),
                                      ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  Text(S.of(context).contactInfo, style: headerStyle),
                  const SizedBox(height: 15.0),
                  CardCustom(
                    width: double.infinity,
                    padding: const EdgeInsets.all(_hPaddingCard),
                    margin: const EdgeInsets.all(0.0),
                    isShowHeight: false,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                S.of(context).contactInformationStatus,
                                style: headerStyle1,
                              ),
                            ),
                            TextButton(
                              onPressed: _onUpdateContactInformation,
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
                                controller: _nameController,
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
                                controller: _emailController,
                                textStyle: textStyle,
                                underText: 'Examples: email@example.com',
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
                          controller: _phoneNumberController,
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
                  const SizedBox(height: 15.0),
                  Text(S.of(context).passengerInfo, style: headerStyle),
                  const SizedBox(height: 15.0),
                  CardCustom(
                    width: double.infinity,
                    padding: const EdgeInsets.all(_hPaddingCard),
                    margin: const EdgeInsets.all(0.0),
                    isShowHeight: false,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CategoryField(
                          categoryType: CategoryType.textCategory,
                          marginLeft: 0.0,
                          marginTop: 10.0,
                          spacingItem: 15.0,
                          marginBottom: 0.0,
                          categories: _tics
                              .mapIndexed(
                                (index, e) => CategoryStyle(
                                  text: 'Person ${index + 1}',
                                  isSelected: index == _currentIndex,
                                  onPress: () => _onCustomerViewChange(index),
                                  textStyle:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                              )
                              .toList(),
                        ),
                        const DividerCustomWithAirplane(),
                        Text(
                          S.of(context).warningsPassenger,
                          style: titStyle1.copyWith(
                              color: primaryColor, overflow: TextOverflow.clip),
                        ),
                        const SizedBox(height: 20.0),
                        CustomerInformationField(
                          isBorder: true,
                          customer: Customer(
                            id: randDomNumber(10),
                            name: _tics[_currentIndex].name,
                            phone: _tics[_currentIndex].phoneNumber,
                            email: _tics[_currentIndex].emailAddress,
                            identifyNum: _tics[_currentIndex].phoneNumber,
                            gender: _tics[_currentIndex].gender,
                            birthday: _tics[_currentIndex].birthday,
                          ),
                        ),
                      ]
                          .expand((element) =>
                              [element, const SizedBox(height: 10.0)])
                          .toList()
                        ..removeLast(),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 200,
                        height: 50,
                        child: ButtonCustom(
                          radius: 5.0,
                          onPress: widget.onNextPage,
                          child: Text(
                            S.of(context).continueText,
                            style: headerStyle,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    });
  }
}
