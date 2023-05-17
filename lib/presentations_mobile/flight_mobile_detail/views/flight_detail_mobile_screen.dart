import 'dart:developer';

import 'package:collection/collection.dart';
import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/widgets/extension/color_extension.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/components/widgets/mobile/custom_template_screen_stack_scroll.dart';
import 'package:flight_booking/core/constant/constant.dart';
import 'package:flutter/material.dart';

import '../../../core/components/widgets/mobile/appbar.dart';
import '../../../core/components/widgets/mobile/button_custom.dart';
import '../../../core/components/widgets/mobile/text_field_custom.dart';
import '../../../generated/l10n.dart';

const _hMarginCard = 20.0;

class FlightDetailMobileSccreen extends StatefulWidget {
  const FlightDetailMobileSccreen({super.key});

  @override
  State<FlightDetailMobileSccreen> createState() =>
      _FlightDetailMobileSccreenState();
}

class _FlightDetailMobileSccreenState extends State<FlightDetailMobileSccreen> {
  @override
  Widget build(BuildContext context) {
    final heightDevice = context.heightDevice;
    var fontColorBycard = Theme.of(context).cardColor.fontColorByBackground;
    var headerTextStyle = context.timeStyle
        .copyWith(fontWeight: FontWeight.w600, color: Colors.grey);
    return CustomTemplateScreenStackScroll(
      bottomSheet: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
        child: ButtonCustom(
          height: 50,
          child: Text(S.of(context).bookingTime),
          onPress: () {},
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
            S.of(context).flightDetail,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ],
      ),
      afterMainScreen: _after(heightDevice, context),
      children: [
        SliverList(
          delegate: SliverChildListDelegate(<Widget>[
            _book(heightDevice, context, fontColorBycard, headerTextStyle),
          ]),
        )
      ],
    );
  }

  Container _book(double heightDevice, BuildContext context,
      Color fontColorBycard, TextStyle headerStyle) {
    return Container(
      constraints: BoxConstraints(minHeight: heightDevice),
      // padding: const EdgeInsets.all(25.0),
      margin: EdgeInsets.only(
        left: _hMarginCard,
        right: _hMarginCard,
        top: heightDevice * 0.45,
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                          color: fontColorBycard,
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
                          color: fontColorBycard,
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
                  ...mockDataBenefits.map((e) => _benfitWithtext(e, context)),
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
            headerTextStyle: headerStyle,
            hintStyle: headerStyle,
            controller: TextEditingController(text: 'Nguyen Minh Hung'),
            textStyle: headerStyle.copyWith(
              fontWeight: FontWeight.w600,
              color: fontColorBycard,
            ),
          ),
          TextFieldCustom(
            paddingLeft: _hMarginCard,
            paddingRight: _hMarginCard,
            headerText: S.of(context).emailAddress,
            headerTextStyle: headerStyle,
            hintStyle: headerStyle,
            controller:
                TextEditingController(text: 'hungnguyen.201102@gmail.com'),
            textStyle: headerStyle.copyWith(
              fontWeight: FontWeight.w600,
              color: fontColorBycard,
            ),
          ),
          TextFieldCustom(
            paddingLeft: _hMarginCard,
            paddingRight: _hMarginCard,
            headerText: S.of(context).phoneNumber,
            isPhoneNumberField: true,
            headerTextStyle: headerStyle,
            isNumberInputType: true,
            hintStyle: headerStyle,
            controller: TextEditingController(text: '30012-345-67'),
            textStyle: headerStyle.copyWith(
              fontWeight: FontWeight.w600,
              color: fontColorBycard,
            ),
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
              color: fontColorBycard,
            ),
            suffix: IconButton(
              icon: const Icon(Icons.arrow_drop_down),
              onPressed: () {},
            ),
          ),
        ].expand((element) => [element, const SizedBox(height: 15.0)]).toList(),
      ),
    );
  }

  Expanded _benfitWithtext(Map<String, dynamic> e, BuildContext context) {
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
    int chec,
  ) {
    var color = chec == 1
        ? color1
        : chec == 2
            ? color2
            : color3;
    return GestureDetector(
      onTap: onPress,
      child: Icon(Icons.chair_sharp, color: color),
    );
  }
}
