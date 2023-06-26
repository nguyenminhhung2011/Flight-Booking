import 'package:collection/collection.dart';
import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/components/widgets/extension/string_extension.dart';
import 'package:flight_booking/core/components/widgets/mobile/button_custom.dart';
import 'package:flight_booking/core/constant/constant.dart';
import 'package:flight_booking/presentations/list_flight/views/widgets/dot_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';

import '../../../domain/entities/flight/flight.dart';
import '../../../generated/l10n.dart';
import '../../../presentations_mobile/flight_history_detail/views/widgets/customer_information_field.dart';

class SelectLuggage extends StatefulWidget {
  final Flight flight;
  final String customerName;
  const SelectLuggage({
    super.key,
    required this.flight,
    required this.customerName,
  });

  @override
  State<SelectLuggage> createState() => _SelectLuggageState();
}

class _SelectLuggageState extends State<SelectLuggage> {
  final ValueNotifier<int> _luggageIndex = ValueNotifier<int>(0);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _onSelected(int newIndex) {
    _luggageIndex.value = newIndex;
  }

  void _onPop() {
    context.popArgs(luggageConst[_luggageIndex.value]['price'] as double);
  }

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    return Container(
      height: context.heightDevice * 0.7,
      width: Breakpoints.small.isActive(context)
          ? double.infinity
          : context.widthDevice * 0.65,
      // padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Theme.of(context).cardColor,
      ),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: _leftField(context, primaryColor),
                ),
                Expanded(
                  flex: 2,
                  child: _luggageInformationField(context, primaryColor),
                )
              ],
            ),
          ),
          _bottomField(context, primaryColor),
          const SizedBox(height: 15.0),
        ],
      ),
    );
  }

  ListView _luggageInformationField(BuildContext context, Color primaryColor) {
    return ListView(
      children: [
        const SizedBox(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () => context.pop(),
              icon: const Icon(Icons.close),
            ),
            const SizedBox(width: 10.0),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            '${widget.flight.departureAirport.location.subString} -> ${widget.flight.arrivalAirport.location.subString}',
            style: context.titleMedium.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 10.0),
            Icon(Icons.airplane_ticket, color: primaryColor),
            const SizedBox(width: 10.0),
            Text(
              widget.flight.airline.airlineName,
              style: context.titleSmall.copyWith(
                fontWeight: FontWeight.w500,
                color: Theme.of(context).dividerColor,
              ),
            )
          ],
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Theme.of(context).cardColor,
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).shadowColor.withOpacity(0.4),
                blurRadius: 5.0,
              )
            ],
          ),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 3.0,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      S.of(context).customer,
                      style: context.titleSmall.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).hintColor,
                      ),
                    ),
                    Text(
                      'Mr/Mrs ${widget.customerName}',
                      style: context.titleSmall.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Divider(),
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        children: [
                          InformationColumnItem(
                            context: context,
                            header: 'Included (Free)',
                            title: '10 kg',
                            isStart: true,
                          ),
                          InformationColumnItem(
                            context: context,
                            header: 'Total baggage',
                            title: '10 kg',
                            isStart: false,
                          )
                        ]
                            .expand((element) => [Expanded(child: element)])
                            .toList(),
                      ),
                    ),
                    ValueListenableBuilder(
                      valueListenable: _luggageIndex,
                      builder: (context, luggageIndex, child) {
                        return Column(
                          children: [
                            ...luggageConst
                                .mapIndexed<Widget>(
                                  (index, e) => _itemSelected(
                                    index,
                                    luggageIndex,
                                    primaryColor,
                                    context,
                                    e,
                                  ),
                                )
                                .expand((element) => [
                                      element,
                                      const SizedBox(
                                        height: 10.0,
                                      )
                                    ])
                                .toList()
                              ..removeLast(),
                          ],
                        );
                      },
                    )
                  ]
                      .expand(
                          (element) => [const SizedBox(height: 10.0), element])
                      .toList(),
                ),
              )
            ],
          ),
        ),
      ].expand((element) => [element, const SizedBox(height: 10.0)]).toList(),
    );
  }

  InkWell _itemSelected(int index, int luggageIndex, Color primaryColor,
      BuildContext context, Map<String, dynamic> e) {
    return InkWell(
      borderRadius: BorderRadius.circular(5.0),
      onTap: () => _onSelected(index),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(
            width: 1,
            color: index == luggageIndex
                ? primaryColor
                : Theme.of(context).dividerColor,
          ),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: primaryColor),
                shape: BoxShape.circle,
              ),
              child: DotCustom(
                full: true,
                color:
                    index == luggageIndex ? primaryColor : Colors.transparent,
                radius: 8,
              ),
            ),
            const SizedBox(width: 10.0),
            Icon(e['icon'] as IconData, color: primaryColor),
            const SizedBox(width: 5.0),
            Expanded(
              child: Text(
                e['title'],
                style: context.titleSmall.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Text(
              e['price'].toString(),
              style: context.titleSmall.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }

  Container _leftField(BuildContext context, Color primaryColor) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10.0),
        ),
        color: primaryColor.withOpacity(0.3),
      ),
      child: ListView(
        children: [
          const SizedBox(height: 5.0),
          Row(
            children: [
              const SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: Text(
                  S.of(context).luggage,
                  style: context.titleMedium.copyWith(
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  S.of(context).seeDetails,
                  style: context.titleSmall.copyWith(
                    fontWeight: FontWeight.w500,
                    color: primaryColor,
                  ),
                ),
              )
            ],
          ),
          ...['Tickets are not refundable', 'Reschedule Info Unavailable']
              .map<Widget>(
            (e) => Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 10.0),
                Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 1, color: primaryColor),
                    color: Colors.transparent,
                  ),
                  child: Icon(Icons.close, color: primaryColor, size: 9),
                ),
                const SizedBox(width: 4.0),
                Expanded(
                  child: Text(
                    e,
                    style: context.titleSmall.copyWith(
                      fontWeight: FontWeight.w300,
                      fontSize: 11.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              'Choose a flight',
              style: context.titleSmall.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              'Add checked baggage to your flight',
              style: context.titleSmall.copyWith(
                fontWeight: FontWeight.w500,
                color: Theme.of(context).hintColor,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              border: Border(
                left: BorderSide(
                  width: 5,
                  color: primaryColor,
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${widget.flight.departureAirport.location.subString} - ${widget.flight.arrivalAirport.location.subString}',
                    style: context.titleMedium.copyWith(
                      fontWeight: FontWeight.w600,
                      color: primaryColor,
                      // overflow: TextOverflow.
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                    widget.flight.airline.airlineName,
                    style: context.titleSmall.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
          ),
        ].expand((element) => [element, const SizedBox(height: 10.0)]).toList(),
      ),
    );
  }

  Widget _bottomField(BuildContext context, Color primaryColor) {
    return Container(
      padding: const EdgeInsets.only(top: 15.0),
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border(
        top: BorderSide(width: 0.7, color: Theme.of(context).dividerColor),
      )),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: 15.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                    style: context.titleMedium.copyWith(
                      fontWeight: FontWeight.bold,
                      overflow: TextOverflow.ellipsis,
                    ),
                    children: [
                      TextSpan(
                        text: S.of(context).priceSummary,
                      ),
                      TextSpan(
                        text: ' \$ 10.0',
                        style: TextStyle(color: primaryColor),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10.0),
                Text(
                  '(For all flights and passengers)',
                  style: context.titleSmall.copyWith(
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          ButtonCustom(
            onPress: _onPop,
            radius: 5.0,
            enableWidth: false,
            child: Text(
              S.of(context).submit,
              style: context.titleMedium.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(width: 15.0),
        ],
      ),
    );
  }
}
