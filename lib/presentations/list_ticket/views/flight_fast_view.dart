import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import '../../../generated/l10n.dart';
import 'package:ticket_widget/ticket_widget.dart';

import '../../list_flight/views/widgets/flight_data.dart';

class FlightFastView extends StatelessWidget {
  const FlightFastView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          width: double.infinity,
          height: 45.0,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(S.of(context).viewDetail),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Theme.of(context).primaryColor.withOpacity(0.1),
        ),
        child: ListView(
          children: [
            TicketWidget(
              width: double.infinity,
              height: 510,
              isCornerRounded: true,
              color: Theme.of(context).cardColor,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(10.0),
              shadow: [
                BoxShadow(
                  color: Theme.of(context).shadowColor.withOpacity(0.1),
                  blurRadius: 5.0,
                )
              ],
              child: const FlightData(),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Theme.of(context).cardColor,
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context).shadowColor.withOpacity(0.1),
                    blurRadius: 5.0,
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    S.of(context).flightInformation,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  _rowData(context, S.of(context).driver, 'Nguyen Minh Hung'),
                  _rowData(
                    context,
                    S.of(context).noCustomer,
                    S.of(context).numberCustomer(100),
                  ),
                  Container(
                    height: 1,
                    decoration: DottedDecoration(
                      color: Theme.of(context).dividerColor,
                      shape: Shape.line,
                      linePosition: LinePosition.bottom,
                    ),
                  ),
                  _rowData(context, S.of(context).price, '200,00\$'),
                ]
                    .expand(
                        (element) => [element, const SizedBox(height: 10.0)])
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row _rowData(BuildContext context, String tit, String desc) {
    final TextStyle titleStyle =
        Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.grey);

    final TextStyle? descStyle = Theme.of(context).textTheme.titleMedium;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          tit,
          maxLines: 1,
          textAlign: TextAlign.start,
          style: titleStyle,
        ),
        Expanded(
          child: Text(
            desc,
            maxLines: 1,
            textAlign: TextAlign.end,
            style: descStyle,
          ),
        ),
      ],
    );
  }
}
