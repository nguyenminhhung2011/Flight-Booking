import 'package:collection/collection.dart';
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/widgets/card_custom.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/components/widgets/mobile/appbar.dart';
import 'package:flight_booking/core/components/widgets/mobile/button_custom.dart';
import 'package:flight_booking/core/components/widgets/mobile/custom_template_screen_stack_scroll.dart';
import 'package:flight_booking/core/components/widgets/mobile/header_custom.dart';
import 'package:flight_booking/core/constant/constant.dart';
import 'package:flight_booking/presentations_mobile/routes_mobile.dart';
import 'package:flutter/material.dart';

import '../../../core/components/widgets/mobile/category_custom.dart';
import '../../../core/components/widgets/mobile/text_field_custom.dart';
import '../../../generated/l10n.dart';

const _hMargin = 15.0;

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  final ValueNotifier<int> _selectPayment = ValueNotifier<int>(0);
  bool _loading = false;
  void _onSelectPayment(int index) {
    _selectPayment.value = index;
  }

  @override
  Widget build(BuildContext context) {
    var headerStyle = context.titleMedium.copyWith(fontWeight: FontWeight.bold);
    var headerTitleText = context.titleMedium.copyWith(
      fontWeight: FontWeight.w500,
      color: Colors.grey,
    );
    return CustomTemplateScreenStackScroll(
      bottomSheet: Padding(
        padding: const EdgeInsets.all(_hMargin),
        child: SizedBox(
          width: double.infinity,
          height: 50.0,
          child: ButtonCustom(
            loading: _loading,
            color: const Color.fromARGB(255, 249, 173, 58),
            child: Text(S.of(context).payment),
            onPress: () {
              setState(() {
                _loading = true;
              });
              Future.delayed(const Duration(seconds: 3)).whenComplete(
                  () => context.popUntil(RoutesMobile.listFlightMobile));
            },
          ),
        ),
      ),
      appbar: AppbarCustom(
        backgroundColor: Theme.of(context).primaryColor,
        title: [
          if (context.canPop)
            IconButton(
              onPressed: () => context.pop(),
              icon: const Icon(Icons.arrow_back),
            ),
          Text(S.of(context).checkout, style: context.headerAppBarTextStyle),
          if (context.canPop)
            IconButton(onPressed: () {}, icon: const SizedBox())
        ].expand((element) => [element, const Spacer()]).toList()
          ..removeLast(),
      ),
      children: [
        SliverList(
          delegate: SliverChildListDelegate(
            <Widget>[
              HeaderTextCustom(
                headerText: S.of(context).selectPaymentMethod,
                textStyle: headerStyle,
              ),
              ValueListenableBuilder(
                valueListenable: _selectPayment,
                builder: (context, selectPayment, child) {
                  return CategoryField(
                    categoryType: CategoryType.selectedCategory,
                    spacingItem: 15.0,
                    marginLeft: _hMargin,
                    categories: <CategoryStyle>[
                      ...mocPayment.mapIndexed(
                        (index, e) => CategoryStyle(
                          text: e['title'],
                          icon: e['icon'],
                          iconSize: 35,
                          radius: 10.0,
                          isSelected: index == selectPayment,
                          textStyle:
                              Theme.of(context).textTheme.titleSmall!.copyWith(
                                    fontWeight: FontWeight.w500,
                                  ),
                          onPress: () => _onSelectPayment(index),
                        ),
                      )
                    ],
                  );
                },
              ),
              const SizedBox(),
              Container(
                constraints: BoxConstraints(minHeight: context.heightDevice),
                width: double.infinity,
                padding: const EdgeInsets.all(_hMargin),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(25.0),
                  ),
                  color: Theme.of(context).primaryColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10.0),
                    CardCustom(
                      radius: 10.0,
                      width: double.infinity,
                      isShowHeight: false,
                      padding: const EdgeInsets.all(_hMargin),
                      margin: const EdgeInsets.all(0.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextFieldCustom(
                            headerText: 'Card Holder Name',
                            headerTextStyle: headerTitleText,
                            hintStyle: headerTitleText,
                            isShowBorderRadius: false,
                            hPaddingField: 0,
                            spacingText: 0,
                            controller:
                                TextEditingController(text: 'Nguyen Minh Hung'),
                            textStyle: headerStyle.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 10.0),
                          TextFieldCustom(
                            headerText: 'Card Number',
                            headerTextStyle: headerTitleText,
                            hintStyle: headerTitleText,
                            isShowBorderRadius: false,
                            hPaddingField: 0,
                            spacingText: 0,
                            controller:
                                TextEditingController(text: '123 456 789 0123'),
                            textStyle: headerStyle.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 10.0),
                          Row(
                            children: [
                              Expanded(
                                child: TextFieldCustom(
                                  headerText: 'Expiry Date',
                                  headerTextStyle: headerTitleText,
                                  hintStyle: headerTitleText,
                                  isShowBorderRadius: false,
                                  hPaddingField: 0,
                                  spacingText: 0,
                                  controller:
                                      TextEditingController(text: '10/25'),
                                  textStyle: headerStyle.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10.0),
                              Expanded(
                                child: TextFieldCustom(
                                  headerText: 'CCV',
                                  headerTextStyle: headerTitleText,
                                  hintStyle: headerTitleText,
                                  isShowBorderRadius: false,
                                  hPaddingField: 0,
                                  spacingText: 0,
                                  controller: TextEditingController(text: '00'),
                                  textStyle: headerStyle.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    CardCustom(
                      radius: 10.0,
                      width: double.infinity,
                      isShowHeight: false,
                      padding: const EdgeInsets.all(_hMargin),
                      margin: const EdgeInsets.all(0.0),
                      child: Column(
                        children: [
                          _rowPayment(S.of(context).totalPrice, 200.0, false),
                          _rowPayment(S.of(context).tax, 12.0, false),
                          _rowPayment(
                              S.of(context).blackFridayOffer, -20.0, false),
                          Container(
                            height: 0.5,
                            width: double.infinity,
                            decoration: DottedDecoration(
                              linePosition: LinePosition.bottom,
                              color: Theme.of(context).dividerColor,
                            ),
                          ),
                          _rowPayment(S.of(context).totalAmount, 192, true)
                        ]
                            .expand((element) =>
                                [element, const SizedBox(height: 10.0)])
                            .toList()
                          ..removeLast(),
                      ),
                    )
                  ],
                ),
              ),
            ]
                .expand((element) => [const SizedBox(height: 10.0), element])
                .toList(),
          ),
        )
      ],
    );
  }

  Row _rowPayment(String title, double price, bool isFinalPayment) {
    var textStyle = context.titleSmall.copyWith(fontWeight: FontWeight.w400);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: textStyle.copyWith(
              fontWeight: isFinalPayment ? FontWeight.bold : null,
              color: isFinalPayment ? Theme.of(context).primaryColor : null,
            )),
        Text('\$$price', style: textStyle.copyWith(fontWeight: FontWeight.bold))
      ],
    );
  }
}
