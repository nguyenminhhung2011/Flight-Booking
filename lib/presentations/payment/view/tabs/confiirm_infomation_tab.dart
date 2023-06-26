import 'package:collection/collection.dart';
import 'package:flight_booking/core/components/const/image_const.dart';
import 'package:flight_booking/core/components/widgets/custom_row_column.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/constant/handle_time.dart';
import 'package:flight_booking/presentations/payment/blocs/payment_tab_bloc.dart';
import 'package:flight_booking/presentations_mobile/flight_history_detail/views/flight_history_detail_screen.dart';
import 'package:flight_booking/presentations_mobile/splash_mobile/views/widgets/app_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:screenshot/screenshot.dart';

import '../../../../core/config/common_ui_config.dart';
import '../../../../domain/entities/customer/customer.dart';
import '../../../../domain/entities/flight/flight.dart';
import '../../../../domain/entities/payment/payment.dart';
import '../../../../generated/l10n.dart';

const _hPaddingCard = 15.0;
const _maxWidthDevice = 1200;
const _hMarginCard = 30.0;
const _listFlex = [1, 2, 5, 1, 3, 3];
const _headerTable = [
  "STT",
  "Category",
  "Description",
  "Count",
  "Price",
  "Summary price"
];

class ConfirmInformationTab extends StatefulWidget {
  const ConfirmInformationTab({super.key});

  @override
  State<ConfirmInformationTab> createState() => _ConfirmInformationTabState();
}

class _ConfirmInformationTabState extends State<ConfirmInformationTab> {
  final ScreenshotController controller = ScreenshotController();
  PaymentTabBloc get _bloc => context.read<PaymentTabBloc>();
  Payment? get _payment => _bloc.data.payment;
  Flight? get _flight => _bloc.data.flight;
  Customer? get _customer => _bloc.data.customer;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final headerStyle = context.titleLarge
        .copyWith(fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis);
    final titleStyle = context.titleMedium
        .copyWith(fontWeight: FontWeight.w500, overflow: TextOverflow.ellipsis);
    final primaryColor = Theme.of(context).primaryColor;
    return Screenshot(
      controller: controller,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal:
                    context.widthDevice > _maxWidthDevice ? 120 : _hPaddingCard,
              ),
              child: ListView(
                children: [
                  Text(S.of(context).confirmInformation, style: headerStyle),
                  const SizedBox(height: 20.0),
                  Container(
                    height: context.heightDevice - 145,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: CommonAppUIConfig.primaryRadiusBorder,
                      boxShadow: [
                        BoxShadow(
                          color: Theme.of(context).shadowColor.withOpacity(0.1),
                          blurRadius: 10.0,
                        )
                      ],
                    ),
                    child: ListView(
                      children: [
                        if (_payment != null)
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  height: 70,
                                  margin: const EdgeInsets.symmetric(
                                    horizontal: _hMarginCard,
                                    vertical: _hPaddingCard,
                                  ),
                                  padding: const EdgeInsets.only(
                                      left: _hPaddingCard),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      left: BorderSide(
                                        width: 4,
                                        color: primaryColor,
                                      ),
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        S.of(context).paymentInfo,
                                        style: headerStyle,
                                      ),
                                      Text(
                                        'Id: ${_payment?.id ?? 'Empty'}',
                                        style: titleStyle.copyWith(
                                            color: Theme.of(context).hintColor),
                                      ),
                                      Text(
                                        '${S.of(context).date}: ${getYmdFormat(DateTime.fromMillisecondsSinceEpoch(_payment?.createDate ?? DateTime.now().millisecondsSinceEpoch))}',
                                        style: titleStyle.copyWith(
                                          color: Theme.of(context).hintColor,
                                        ),
                                      ),
                                    ]
                                        .expand((element) => [
                                              element,
                                              const SizedBox(height: 2)
                                            ])
                                        .toList()
                                      ..removeLast(),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10.0),
                              Container(
                                width: 300,
                                height: 100,
                                padding: const EdgeInsets.all(_hPaddingCard),
                                decoration: BoxDecoration(
                                  color: primaryColor.withOpacity(0.2),
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(15.0),
                                    bottomLeft: Radius.circular(15.0),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      ImageConst.onboard3,
                                      width: 40,
                                      height: 40,
                                    ),
                                    const SizedBox(width: 5.0),
                                    const AppName(fontSize: 30.0),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        const DividerCustomWithAirplane(),
                        if (_payment != null && _customer != null)
                          _informationField(context, headerStyle, titleStyle),
                        const DividerCustomWithAirplane(),
                        if (_payment != null)
                          _customerInformation(context, headerStyle),
                        const DividerCustomWithAirplane(),
                        if (_payment != null && _flight != null)
                          _table(
                              context, headerStyle, primaryColor, titleStyle),
                        const DividerCustomWithAirplane(),
                        Row(
                          children: [_buttonCapture(context)],
                        ),
                      ]
                          .expand((element) =>
                              [element, const SizedBox(height: 30.0)])
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Padding _table(BuildContext context, TextStyle headerStyle,
      Color primaryColor, TextStyle titleStyle) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: _hMarginCard),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(S.of(context).transaction, style: headerStyle),
          const SizedBox(height: 20.0),
          ...[
            _headerTable,
            // ..._payment!.tickets.mapIndexed(
            //   (index, e) => [
            //     (index + 1).toString(),
            //     e.name,
            //   ],
            // ),
            [
              '1',
              'Flight ticket',
              'Viet Nam air(SG - HN) | 24/5/2023 \nViet Nam air(SG - HN) | 24/5/2023',
              '2',
              '2.214.133',
              '4.428.266'
            ],
            ['2', 'Offer', 'Sale off 30% per person', '1', '2.133', '2.133'],
          ]
              .mapIndexed(
                (indexRow, row) => Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: indexRow == 0 ? primaryColor : Colors.transparent,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: row
                        .mapIndexed(
                          (index, e) => Expanded(
                            flex: _listFlex[index],
                            child: Text(row[index],
                                style: titleStyle.copyWith(
                                  overflow: TextOverflow.clip,
                                )),
                          ),
                        )
                        .toList()
                        .expand(
                            (element) => [element, const SizedBox(width: 5.0)])
                        .toList(),
                  ),
                ),
              )
              .expandIndexed(
                (index, element) => [
                  element,
                  if (index != 0) const Divider(),
                ],
              ),
          ...<Map<String, dynamic>>[
            {'header': S.of(context).priceSummary, 'data': 2.323},
            {'header': S.of(context).sale, 'data': 1.000},
            {'header': S.of(context).price, 'data': 1.323}
          ]
              .map(
                (e) => Row(
                  children: [
                    const Expanded(flex: 3, child: SizedBox()),
                    Expanded(
                      child: Text(e['header'], style: titleStyle),
                    ),
                    const SizedBox(width: 5.0),
                    Expanded(
                      child: Text(e['data'].toString(), style: titleStyle),
                    )
                  ],
                ),
              )
              .expandIndexed((index, element) =>
                  [element, if (index != 2) const SizedBox(height: 20.0)]),
        ],
      ),
    );
  }

  Padding _customerInformation(BuildContext context, TextStyle headerStyle) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: _hMarginCard),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(S.of(context).customerInformation, style: headerStyle),
          const SizedBox(height: 10.0),
          ..._payment!.tickets
              .map(
                (e) => RichText(
                  text: TextSpan(
                    style: context.titleMedium,
                    children: <TextSpan>[
                      TextSpan(
                        text: e.name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: '  (${e.gender})',
                        style: TextStyle(
                          color: Theme.of(context).hintColor,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
              )
              .expand(
                (element) => [element, const SizedBox(height: 4.0)],
              ),
        ],
      ),
    );
  }

  Padding _informationField(
      BuildContext context, TextStyle headerStyle, TextStyle titleStyle) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: _hMarginCard),
      child: CustomRowColumn(
        spacing: _hPaddingCard,
        isRow: Breakpoints.mediumAndUp.isActive(context),
        children: <FlexItemRowColumData>[
          FlexItemRowColumData(
            flex: 3,
            data: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  S.of(context).customerInformation,
                  style: headerStyle,
                ),
                const SizedBox(height: 10.0),
                ...<Map<String, dynamic>>[
                  {'header': S.of(context).name, 'tit': _customer!.name},
                  {'header': S.of(context).email, 'tit': _customer!.email},
                  {
                    'header': S.of(context).phoneNumber,
                    'tit': _customer!.phoneNumber
                  },
                ]
                    .map(
                      (e) => _rowInformation(e, titleStyle, context),
                    )
                    .toList()
              ]
                  .expand((element) => [element, const SizedBox(height: 5.0)])
                  .toList(),
            ),
          ),
          FlexItemRowColumData(
            flex: 4,
            data: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  S.of(context).customerInformation,
                  style: headerStyle,
                ),
                const SizedBox(height: 10.0),
                ...<Map<String, dynamic>>[
                  {
                    'header': S.of(context).id,
                    'tit': '${S.of(context).payment} ${_payment!.id}'
                  },
                  {
                    'header': S.of(context).status,
                    'tit': _payment!.paymentStatus.displayValue
                  },
                  {
                    'header': S.of(context).payment,
                    'tit': 'Payment by ${_payment!.paymentType.displayValue}'
                  },
                ]
                    .map(
                      (e) => _rowInformation(e, titleStyle, context),
                    )
                    .toList()
              ]
                  .expand((element) => [element, const SizedBox(height: 5.0)])
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  TextButton _buttonCapture(BuildContext context) {
    return TextButton.icon(
      onPressed: () async {
        controller.capture().then((res) {
          if (res != null) {
            showDialog(
              context: context,
              builder: (context) {
                return Dialog(
                  child: Image.memory(res),
                );
              },
            );
          }
        });
      },
      icon: const Icon(Icons.download),
      label: Text(
        "Down Invoice In PNG Type",
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }

  Row _rowInformation(
      Map<String, dynamic> data, TextStyle titleStyle, BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            data['header'],
            style: titleStyle,
          ),
        ),
        Text(
          data['tit'],
          style: titleStyle.copyWith(
            color: Theme.of(context).hintColor,
          ),
        )
      ],
    );
  }
}
