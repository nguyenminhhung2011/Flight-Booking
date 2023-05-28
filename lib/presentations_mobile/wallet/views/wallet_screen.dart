import 'package:collection/collection.dart';
import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/const/image_const.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/components/widgets/extension/string_extension.dart';
import 'package:flight_booking/core/components/widgets/mobile/appbar.dart';
import 'package:flight_booking/core/components/widgets/mobile/button_custom.dart';
import 'package:flight_booking/core/components/widgets/mobile/custom_template_screen_stack_scroll.dart';
import 'package:flight_booking/core/components/widgets/mobile/header_custom.dart';
import 'package:flight_booking/core/constant/handle_time.dart';
import 'package:flight_booking/presentations_mobile/wallet/views/widgets/bottom_add_new_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

import '../../../core/components/widgets/card_custom.dart';
import '../../../core/components/widgets/swiper_custom.dart';
import '../../../core/constant/constant.dart';
import '../../../generated/l10n.dart';

const _hMarginCard = 15.0;

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  var displayString = '242FSFG4S4G4G3'.groupString();

  Future _openBottomAddCard() {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
        top: Radius.circular(15.0),
      )),
      builder: (context) {
        return const BottomAddNewCard();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomTemplateScreenStackScroll(
      appbar: AppbarCustom(
        backgroundColor: Theme.of(context).primaryColor,
        title: [
          IconButton(
            onPressed: () => context.pop(),
            icon: const Icon(Icons.arrow_back),
          ),
          const Spacer(),
          Text(S.of(context).wallet, style: context.headerAppBarTextStyle),
          const Spacer(),
          IconButton(onPressed: () {}, icon: const SizedBox())
        ],
      ),
      children: [
        SliverList(
          delegate: SliverChildListDelegate(
            <Widget>[
              const SizedBox(height: _hMarginCard),
              SwiperCustom(
                margin: const EdgeInsets.all(0.0),
                height: 200,
                itemCount: mockDataImag.length,
                autoPlay: false,
                spacingItem: 10.0,
                itemBuilder: (index) {
                  final boldStyle = context.titleMedium.copyWith(
                      fontWeight: FontWeight.bold,
                      overflow: TextOverflow.ellipsis);
                  return CardCustom(
                    margin: const EdgeInsets.all(0.0),
                    color: Theme.of(context).primaryColor.withOpacity(0.6),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(ImageConst.splash),
                      ),
                    ),
                    padding: const EdgeInsets.all(_hMarginCard),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(ImageConst.masterIcon,
                                width: 40, height: 30),
                            Text(
                              S.of(context).maestroCard,
                              style: context.titleMedium,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: displayString.mapIndexed((index, e) {
                                final style = context.titleMedium
                                    .copyWith(fontWeight: FontWeight.bold);
                                if (index == 1 || index == 2) {
                                  return Text('****', style: style);
                                }
                                return Text(e, style: style);
                              }).toList()),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text('Minh Hung', style: boldStyle),
                            ),
                            Expanded(
                              child: Text(
                                getYmdFormat(DateTime.now()),
                                textAlign: TextAlign.end,
                                style: boldStyle,
                              ),
                            ),
                          ],
                        ),
                      ].expand((element) => [element, const Spacer()]).toList()
                        ..removeLast(),
                    ),
                  );
                },
                swiperLayout: SwiperLayout.DEFAULT,
              ),
              const SizedBox(height: _hMarginCard),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: _hMarginCard),
                child: ButtonCustom(
                  height: 45.0,
                  onPress: _openBottomAddCard,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(S.of(context).addNewCard),
                      const SizedBox(width: 5.0),
                      const Icon(Icons.add, size: 15.0),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: _hMarginCard),
              HeaderTextCustom(
                headerText: S.of(context).expenses,
                isShowSeeMore: true,
                textStyle:
                    context.titleMedium.copyWith(fontWeight: FontWeight.bold),
                onPress: () {},
              ),
              ...<Map<String, dynamic>>[
                {'icon': ImageConst.masterIcon, 'price': 221.21},
                {'icon': ImageConst.cardIcon, 'price': 123.21},
                {'icon': ImageConst.visaIcon, 'price': 211.21},
                {'icon': ImageConst.masterIcon, 'price': 341.21},
              ].map((e) => ExpensesItem(
                    icon: e['icon'],
                    title: 'Flight booking',
                    time: DateTime.now(),
                    price: e['price'],
                  ))
            ],
          ),
        )
      ],
    );
  }
}

class ExpensesItem extends StatelessWidget {
  final String icon;
  final String title;
  final DateTime time;
  final double price;
  const ExpensesItem({
    super.key,
    required this.icon,
    required this.title,
    required this.time,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: _hMarginCard),
      leading: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Theme.of(context).cardColor,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).shadowColor.withOpacity(0.1),
              blurRadius: 3.0,
            )
          ],
        ),
        child: Image.asset(icon, width: 30, height: 30),
      ),
      title: Text(
        title,
        style: context.titleMedium.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        getYmdHmFormat(time),
        style: context.titleSmall.copyWith(
          fontWeight: FontWeight.w400,
          color: Theme.of(context).hintColor,
        ),
      ),
      trailing: Text(
        '-\$$price',
        style: context.titleMedium.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
