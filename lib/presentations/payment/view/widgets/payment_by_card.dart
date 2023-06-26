import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/presentations/payment/view/widgets/paymnet_price_infomration_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/components/const/image_const.dart';
import '../../../../core/components/widgets/mobile/button_custom.dart';
import '../../../../core/components/widgets/mobile/text_field_custom.dart';
import '../../../../core/constant/handle_time.dart';
import '../../../../generated/l10n.dart';
import '../../../../presentations_mobile/flight_history_detail/views/flight_history_detail_screen.dart';

const _hPaddingCard = 15.0;

class PaymentByCardTab extends StatefulWidget {
  final Function() onNextPage;
  final bool loading;
  const PaymentByCardTab({
    super.key,
    required this.onNextPage,
    required this.loading,
  });

  @override
  State<PaymentByCardTab> createState() => _PaymentByCardTabState();
}

class _PaymentByCardTabState extends State<PaymentByCardTab> {
  final TextEditingController _paymentNumber = TextEditingController();
  final TextEditingController _nameOnPayment = TextEditingController();
  final TextEditingController _fitToComeDate = TextEditingController();
  final TextEditingController _cvvAndCvn = TextEditingController();
  @override
  void dispose() {
    _paymentNumber.dispose();
    _nameOnPayment.dispose();
    _fitToComeDate.dispose();
    _cvvAndCvn.dispose();
    super.dispose();
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
    final textStyle = context.titleMedium.copyWith(
      fontWeight: FontWeight.w500,
    );
    final primaryColor = Theme.of(context).primaryColor;
    return ListView(
      children: [
        Text(
          S.of(context).makePaymentWithin('03:30s'),
          textAlign: TextAlign.center,
          style: titStyle.copyWith(
            color: primaryColor,
          ),
        ),
        const SizedBox(height: 22.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: _hPaddingCard),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: Text(S.of(context).paymentCard, style: headerStyle)),
              ...[
                ImageConst.visaIcon,
                ImageConst.masterIcon,
                ImageConst.cardIcon
              ]
                  .map((e) => Image.asset(e.toString(), height: 40, width: 40))
                  .expand((element) => [element, const SizedBox(width: 5.0)]),
            ],
          ),
        ),
        const SizedBox(height: 15.0),
        const DividerCustomWithAirplane(),
        const SizedBox(height: 15.0),
        TextFieldCustom(
          paddingLeft: _hPaddingCard,
          paddingRight: _hPaddingCard,
          headerText: S.of(context).paymentNumber,
          headerTextStyle: headerStyle1,
          hintStyle: titStyle1,
          hintText: S.of(context).paymentNumber,
          controller: _paymentNumber,
          textStyle: textStyle,
        ),
        const SizedBox(height: 15.0),
        Row(
          children: [
            Expanded(
              child: TextFieldCustom(
                paddingLeft: _hPaddingCard,
                paddingRight: 5.0,
                headerText: S.of(context).fitToCome,
                headerTextStyle: headerStyle1,
                hintStyle: titStyle1,
                hintText: "MM/YY",
                controller: _fitToComeDate,
                textStyle: textStyle,
              ),
            ),
            Expanded(
              child: TextFieldCustom(
                paddingLeft: 5.0,
                paddingRight: _hPaddingCard,
                headerText: "CVV/CVN",
                headerTextStyle: headerStyle1,
                hintStyle: titStyle1,
                hintText: "3 - 4 number",
                controller: _cvvAndCvn,
                textStyle: textStyle,
              ),
            ),
          ],
        ),
        const SizedBox(height: 15.0),
        TextFieldCustom(
          paddingLeft: _hPaddingCard,
          paddingRight: _hPaddingCard,
          headerText: S.of(context).nameOnCard,
          headerTextStyle: headerStyle1,
          hintStyle: titStyle1,
          hintText: S.of(context).nameOnCard,
          controller: _nameOnPayment,
          textStyle: textStyle,
        ),
        const SizedBox(height: 15.0),
        PaymentPriceInformationView(
          primaryColor: primaryColor,
          headerStyle: headerStyle,
          headerStyle1: headerStyle1,
          titStyle: titStyle,
          totalPayment: <Map<String, dynamic>>[
            {'header': S.of(context).personNumber(1), 'title': '\$252.00'},
            {'header': S.of(context).personNumber(2), 'title': '\$212.00'},
            {'header': S.of(context).totalAmount, 'title': '\$200.00'},
            {'header': S.of(context).codePayment, 'title': '23423423489'},
            {
              'header': S.of(context).timePayment,
              'title': '${getjmFormat(DateTime.now())} - ${getYmdFormat(
                DateTime.now(),
              )}'
            }
          ],
          offer: const <Map<String, dynamic>>[
            {'header': 'Offer month 3', 'title': '\$200.00'},
          ],
        ),
        const SizedBox(height: 15.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: 200,
              height: 45,
              child: ButtonCustom(
                radius: 5.0,
                loading: widget.loading,
                onPress: widget.onNextPage,
                child: Text(
                  S.of(context).paymentByCard,
                  style: headerStyle1,
                ),
              ),
            ),
            const SizedBox(width: _hPaddingCard)
          ],
        ),
      ],
    );
  }
}
