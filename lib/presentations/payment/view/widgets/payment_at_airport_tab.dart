import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/presentations/payment/view/widgets/paymnet_price_infomration_view.dart';
import 'package:flutter/material.dart';

import '../../../../core/components/widgets/mobile/button_custom.dart';
import '../../../../core/constant/handle_time.dart';
import '../../../../generated/l10n.dart';
import '../../../../presentations_mobile/flight_history_detail/views/flight_history_detail_screen.dart';
import '../../../list_flight/views/widgets/dot_custom.dart';

const _hPaddingCard = 15.0;

class PaymentAtAirportTab extends StatefulWidget {
  final Function() onNextPage;
  final bool loading;
  const PaymentAtAirportTab({
    super.key,
    required this.onNextPage,
    required this.loading,
  });

  @override
  State<PaymentAtAirportTab> createState() => _PaymentAtAirportTabState();
}

class _PaymentAtAirportTabState extends State<PaymentAtAirportTab> {
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
    final textStyle = context.titleMedium.copyWith(
      fontWeight: FontWeight.w500,
    );
    final primaryColor = Theme.of(context).primaryColor;
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: _hPaddingCard),
          child: Text(S.of(context).paymentAtAirport, style: headerStyle),
        ),
        const SizedBox(height: 22.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: _hPaddingCard),
          child: Text(S.of(context).noteBeforePayment, style: headerStyle),
        ),
        const SizedBox(height: 10.0),
        Container(
          padding: const EdgeInsets.all(10.0),
          margin: const EdgeInsets.symmetric(horizontal: _hPaddingCard),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(
                width: 1,
                color: Theme.of(context).dividerColor,
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...[
                'Payment must be made by the specified deadline and within the store\'s business hours.',
                'To find the store closest to you, please visit here.',
                'You can proceed to pay at one of the following stores:'
              ]
                  .map(
                    (e) => Row(
                      children: [
                        DotCustom(color: primaryColor, full: true),
                        const SizedBox(width: 10.0),
                        Expanded(child: Text(e, style: textStyle)),
                      ],
                    ),
                  )
                  .expand((element) => [element, const SizedBox(height: 5.0)]),
            ],
          ),
        ),
        const SizedBox(height: 22.0),
        const DividerCustomWithAirplane(),
        const SizedBox(height: 22.0),
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
        const SizedBox(height: 22.0),
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
                  S.of(context).paymentAtAirport,
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
