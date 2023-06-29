import 'package:flight_booking/core/components/enum/payment_type.dart';
import 'package:flight_booking/core/config/common_ui_config.dart';
import 'package:flight_booking/domain/entities/credit_card/credit_card.dart';
import 'package:flight_booking/presentations/settings/views/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PaymentConfirmCard extends StatefulWidget {
  const PaymentConfirmCard({
    super.key,
    required this.creditCard,
  });
  final CreditCard creditCard;
  @override
  State<PaymentConfirmCard> createState() => _PaymentConfirmCardState();
}

class _PaymentConfirmCardState extends State<PaymentConfirmCard> {
  int currentIndex = 0;

  PaymentType paymentType = PaymentType.card;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: CommonAppUIConfig.primaryRadiusBorder),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Credit Card Information",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const Divider(
              height: 20,
              thickness: 1,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Radio<PaymentType>(
                      groupValue: paymentType,
                      onChanged: (value) {
                        if (value != null) {
                          setState(() {
                            paymentType = value;
                          });
                        }
                      },
                      value: PaymentType.card,
                    ),
                    const SizedBox(width: 15),
                    const PaymentMethodSelection(),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Radio<PaymentType>(
                      groupValue: paymentType,
                      onChanged: (value) {
                        if (value != null) {
                          setState(() {
                            paymentType = value;
                          });
                        }
                      },
                      value: PaymentType.cash,
                    ),
                    const SizedBox(width: 20),
                    Image.asset(
                      "icons/money.png",
                      height: 50,
                      width: 50,
                      fit: BoxFit.contain,
                      filterQuality: FilterQuality.high,
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Text(
              "Card Number",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            CustomerTextField(
                enable: paymentType == PaymentType.card,
                controller:
                    TextEditingController(text: widget.creditCard.creditNum)),
            const Spacer(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Text("Expiration Date",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontWeight: FontWeight.bold)),
                ),
                Expanded(
                  child: Text("CVC",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: CustomerTextField(
                    enable: paymentType == PaymentType.card,
                    controller: TextEditingController(
                        text: DateFormat("dd/MM/yyyy").format(
                      DateTime.fromMillisecondsSinceEpoch(
                          widget.creditCard.expiredDate),
                    )),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                    child: CustomerTextField(
                  enable: paymentType == PaymentType.card,
                  controller:
                      TextEditingController(text: widget.creditCard.cvc),
                )),
              ],
            ),
            const Spacer(),
            Text(
              "Name on card",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            CustomerTextField(
              enable: paymentType == PaymentType.card,
              controller:
                  TextEditingController(text: widget.creditCard.nameCard),
              width: MediaQuery.of(context).size.width,
              hint: "Enter your Card holder name",
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentMethodSelection extends StatefulWidget {
  const PaymentMethodSelection({super.key});

  @override
  State<PaymentMethodSelection> createState() => _PaymentMethodSelectionState();
}

class _PaymentMethodSelectionState extends State<PaymentMethodSelection> {
  int _currentIndex = 0;

  Map<int, String> selectionData = {
    0: "icons/paypal.png",
    1: "icons/atm-card.png",
    2: "icons/visa.png",
  };
  Widget _buildImageSelectable(String imageUrl, int index) {
    return InkWell(
      borderRadius: CommonAppUIConfig.primaryRadiusBorder,
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: CommonAppUIConfig.primaryRadiusBorder,
          border: _currentIndex == index
              ? Border.all(
                  width: 3,
                  style: BorderStyle.solid,
                  color: Theme.of(context).primaryColor,
                )
              : null,
        ),
        child: Image.asset(
          imageUrl,
          height: 50,
          width: 50,
          fit: BoxFit.contain,
          filterQuality: FilterQuality.high,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: selectionData.entries
          .map((e) => _buildImageSelectable(e.value, e.key))
          .toList(),
    );
  }
}
