import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../../presentations_mobile/flight_history_detail/views/flight_history_detail_screen.dart';

const _hPaddingCard = 15.0;

class PaymentPriceInformationView extends StatelessWidget {
  const PaymentPriceInformationView({
    super.key,
    required this.primaryColor,
    required this.headerStyle,
    required this.headerStyle1,
    required this.titStyle,
    this.margin,
    required this.totalPayment,
    required this.offer,
  });

  final Color primaryColor;
  final TextStyle headerStyle;
  final TextStyle headerStyle1;
  final TextStyle titStyle;
  final EdgeInsetsGeometry? margin;
  final List<Map<String, dynamic>> totalPayment;
  final List<Map<String, dynamic>> offer;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10.0),
      margin: margin ?? const EdgeInsets.symmetric(horizontal: _hPaddingCard),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: primaryColor.withOpacity(0.1),
        border: Border.all(
          width: 1,
          color: primaryColor,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(S.of(context).paymentInfo, style: headerStyle),
          const DividerCustomWithAirplane(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(S.of(context).totalPayment, style: headerStyle1),
                    const SizedBox(height: 15.0),
                    Column(
                      children: totalPayment
                          .map(
                            (e) => RowIndexInformation(
                                context: context,
                                titleStyle: titStyle,
                                header: e['header'],
                                title: e['title'],
                                isOffer: false),
                          )
                          .expand((element) =>
                              [element, const SizedBox(height: 5.0)])
                          .toList()
                        ..remove,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: _hPaddingCard),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(S.of(context).offer, style: headerStyle1),
                    const SizedBox(height: 15.0),
                    Column(
                      children: offer
                          .map(
                            (e) => RowIndexInformation(
                                context: context,
                                titleStyle: titStyle,
                                header: e['header'],
                                title: e['title'],
                                isOffer: true),
                          )
                          .expand((element) =>
                              [element, const SizedBox(height: 5.0)])
                          .toList()
                        ..remove,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const DividerCustomWithAirplane(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Text('\$2313.0', style: headerStyle)],
          ),
        ]
            .expand(
                (element) => [element, const SizedBox(height: _hPaddingCard)])
            .toList()
          ..removeLast(),
      ),
    );
  }
}

class RowIndexInformation extends StatelessWidget {
  const RowIndexInformation({
    super.key,
    required this.context,
    required this.titleStyle,
    required this.header,
    required this.title,
    required this.isOffer,
  });

  final BuildContext context;
  final TextStyle titleStyle;
  final String header;
  final String title;
  final bool isOffer;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          header,
          style: context.titleSmall.copyWith(
              fontWeight: FontWeight.w400,
              color: Theme.of(context).hintColor,
              overflow: TextOverflow.ellipsis,
              fontStyle: isOffer ? FontStyle.italic : null),
        ),
        Text(
          title,
          textAlign: TextAlign.end,
          style: titleStyle.copyWith(
            decoration:
                isOffer ? TextDecoration.lineThrough : TextDecoration.none,
          ),
        ),
      ].expand((element) => [Expanded(child: element)]).toList(),
    );
  }
}
