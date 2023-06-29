import 'dart:developer';

import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/enum/payment_type.dart';
import 'package:flight_booking/core/components/widgets/card_custom.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/components/widgets/extension/interger_extension.dart';
import 'package:flight_booking/core/components/widgets/extension/string_extension.dart';
import 'package:flight_booking/core/config/common_ui_config.dart';
import 'package:flight_booking/core/constant/constant.dart';
import 'package:flight_booking/domain/entities/ticket/ticket_information.dart';
import 'package:flight_booking/presentations/customer/views/widgets/customer_detail_card.dart';
import 'package:flight_booking/presentations/list_flight/views/flight_fast_view.dart';
import 'package:flight_booking/presentations/list_flight/views/widgets/dot_custom.dart';
import 'package:flight_booking/presentations_mobile/flight_history_detail/views/flight_history_detail_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_timeline/flutter_timeline.dart';
import 'package:intl/intl.dart';
import '../../../core/components/enum/payment_status_enum.dart';
import '../../../core/components/widgets/flux_table/flux_table_row.dart';
import '../../../core/components/widgets/flux_table/flux_ticket_table.dart';
import '../../../core/constant/handle_time.dart';
import '../../../domain/entities/airport/airport.dart';
import '../../../domain/entities/customer/customer.dart';
import '../../../domain/entities/payment/payment_detail_item.dart';
import '../../../domain/entities/payment/payment_item.dart';
import '../../../generated/l10n.dart';
import '../../customer/bloc/detail/customer_detail_bloc.dart';
import '../../list_flight/views/widgets/flight_details_widget.dart';

class CustomerDetailScreen extends StatefulWidget {
  const CustomerDetailScreen({super.key});

  @override
  State<CustomerDetailScreen> createState() => _CustomerDetailScreenState();
}

class _CustomerDetailScreenState extends State<CustomerDetailScreen> {
  CustomerDetailBloc get _bloc => BlocProvider.of<CustomerDetailBloc>(context);
  Customer? get _customer => _bloc.data.customer;
  List<PaymentItem> get _payments => _bloc.data.payments;
  PaymentDetailItem? get _payment => _bloc.data.payment;
  List<TicketInformation> get _ticInformation => _bloc.data.ticInformation;

  @override
  void initState() {
    super.initState();
    _bloc.add(const CustomerDetailEvent.getCustomerById());
    _bloc.add(const CustomerDetailEvent.getPaymentItemsByCustomerId());
  }

  void _listenChangeB(_, CustomerDetailState state) {
    state.maybeWhen(
      getPaymentItemsByCustomerIdSuccess: (data) {
        if (data.payments.isNotEmpty) {
          _bloc.add(CustomerDetailEvent.selectedPayment(
            paymentId: int.parse(data.payments.first.id),
          ));
        }
      },
      selectedPaymentSuccess: (data) {
        if (data.payment != null) {
          _bloc.add(CustomerDetailEvent.getTicInformationByFlightId(
            id: data.payment!.flight?.id ?? 0,
          ));
        }
      },
      getTicInformationByFlightIdFailed: (data, error) {
        context.showSuccessDialog(width: 300, header: 'Error', title: error);
      },
      selectedPaymentFailed: (data, error) {
        context.showSuccessDialog(width: 300, header: 'Error', title: error);
      },
      getPaymentItemsByCustomerIdFailed: (data, error) {
        context.showSuccessDialog(width: 300, header: 'Error', title: error);
      },
      getCustomerByIdFailed: (data, error) {
        context.showSuccessDialog(width: 300, header: 'Error', title: error);
      },
      orElse: () {},
    );
  }

  void _onSelectedPayment(int paymentId) {
    _bloc.add(CustomerDetailEvent.selectedPayment(paymentId: paymentId));
  }

  Widget _buildFlightHistoryTable(BuildContext context) {
    debugPrint("_buildFlightHistoryTable");
    return FluxTicketTable<PaymentItem>(
      padding: const EdgeInsets.all(10),
      isSelectable: true,
      titleRow: FluxTableRow(
        margin: const EdgeInsets.symmetric(vertical: 5.0),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        rowDecoration: BoxDecoration(color: Theme.of(context).primaryColor),
        itemBuilder: (data, index) {
          if (data == null) return const SizedBox();
          return Text(data.toString());
        },
        rowData: [
          FlexRowTableData<String>(flex: 1, data: S.of(context).id),
          FlexRowTableData<String>(flex: 1, data: S.of(context).creDate),
          FlexRowTableData<String>(flex: 1, data: S.of(context).paymentStatus),
          FlexRowTableData<String>(flex: 1, data: S.of(context).paymentType),
          FlexRowTableData<String>(flex: 1, data: S.of(context).totalAmount),
        ],
      ),
      onTap: (index) => _onSelectedPayment(int.parse(_payments[index].id)),
      data: _payments,
      rowBuilder: (data) {
        final textStyle = context.titleMedium.copyWith(
          fontWeight: FontWeight.w600,
          overflow: TextOverflow.ellipsis,
        );
        return FluxTableRow(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          itemBuilder: (data, index) {
            if (index == 2) {
              final rowData = data as PaymentStatus;
              return Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                decoration: BoxDecoration(
                  color: rowData.colorType.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(7.0),
                  border: Border.all(width: 1, color: rowData.colorType),
                ),
                child: Text(
                  rowData.displayValue,
                  style: textStyle.copyWith(color: rowData.colorType),
                ),
              );
            }
            if (index == 3) {
              final rowData = data as PaymentType;
              return Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  border: Border.all(
                    width: 1,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      switch (rowData) {
                        PaymentType.card => Icons.payment,
                        PaymentType.cash => Icons.airplane_ticket,
                        _ => Icons.card_travel_sharp
                      },
                      color: Theme.of(context).primaryColor,
                    ),
                    const SizedBox(width: 5.0),
                    Text(rowData.displayValue, style: textStyle),
                  ],
                ),
              );
            }
            return Text(data.toString(), style: textStyle);
          },
          rowData: [
            FlexRowTableData<String>(flex: 1, data: data.id.toString()),
            FlexRowTableData<String>(
              flex: 1,
              data: getYmdFormat(
                  DateTime.fromMillisecondsSinceEpoch(data.createDate)),
            ),
            FlexRowTableData<PaymentStatus>(flex: 1, data: data.paymentStatus),
            FlexRowTableData<PaymentType>(flex: 1, data: data.paymentType),
            FlexRowTableData<String>(flex: 1, data: data.total.toString()),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CustomerDetailBloc, CustomerDetailState>(
        listener: _listenChangeB,
        builder: ((context, state) {
          if (state.loadingGetData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (_customer == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return Scaffold(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            body: SafeArea(
              child: Container(
                padding: const EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 0.2, color: Theme.of(context).cardColor),
                    borderRadius: CommonAppUIConfig.primaryRadiusBorder),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 370,
                                  child: CustomerInformationCard(
                                      customer: _customer!),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: state.loadingGetItm
                                      ? const Center(
                                          child: CircularProgressIndicator())
                                      : _payment != null
                                          ? _flightOverview()
                                          : const SizedBox(),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Expanded(
                            flex: 2,
                            child: _buildFlightHistoryTable(context),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: Column(
                        children: [
                          const Expanded(
                            flex: 1,
                            child: FlightInformationCard(),
                          ),
                          Expanded(
                            flex: 2,
                            child: state.loadingGetItm
                                ? const Center(
                                    child: CircularProgressIndicator())
                                : _payment != null
                                    ? CustomerTicketInformationCard(
                                        customer: _customer!,
                                        listTics: _payment?.ticket ?? [],
                                        ticInformation: ticInformationConst,
                                      )
                                    : const SizedBox(),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }));
  }

  CardCustom _flightOverview() {
    final flight = _payment!.flight;
    final primaryColor = Theme.of(context).primaryColor;
    return CardCustom(
      child: Row(
        children: [
          CardCustom(
            width: 350,
            height: double.infinity,
            padding: const EdgeInsets.all(10.0),
            margin: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.of(context).overview,
                  style: context.titleMedium.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                FlightDetailsWidget(
                  firstTitle: S.of(context).id,
                  firstDesc: '${S.of(context).flight} ${flight!.id}',
                  secondTitle: S.of(context).airport,
                  secondDesc: flight.airline.airlineName,
                  padding: 0,
                ),
                FlightDetailsWidget(
                  firstTitle: flight.departureAirport.code,
                  firstDesc: getYmdHmFormat(flight.timeStart),
                  secondTitle: flight.arrivalAirport.code,
                  secondDesc: getYmdHmFormat(flight.timeEnd),
                  padding: 0,
                ),
                const DividerCustomWithAirplane(),
                Expanded(
                    child: ListView.builder(
                  itemCount: _ticInformation.length,
                  itemBuilder: (context, index) {
                    final ticInform = _ticInformation[index];
                    final type = ticInform.id.ticketType.ticClass;
                    return Row(
                      children: [
                        Icon(Icons.airplane_ticket, color: type.colorType),
                        const SizedBox(width: 5.0),
                        Expanded(
                          child: Text(
                            type.displayValue,
                            style: context.titleSmall.copyWith(
                              fontWeight: FontWeight.w500,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        Text(
                          '\$ ${ticInform.quantity}',
                          style: context.titleSmall.copyWith(
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                          ),
                        )
                      ],
                    );
                  },
                ))
              ]
                  .expand((element) => [
                        element,
                        const SizedBox(
                          height: 5.0,
                        )
                      ])
                  .toList()
                ..removeLast(),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(S.of(context).schedule,
                    style: context.titleMedium
                        .copyWith(fontWeight: FontWeight.bold)),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _startAndEndAirport(
                        flight.departureAirport, flight.timeStart, false),
                    _startAndEndAirport(
                        flight.arrivalAirport, flight.timeEnd, true)
                  ],
                ),
                const SizedBox(height: 5.0),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.airplane_ticket, color: primaryColor),
                    _dotDecoration(),
                    ...flight.stopAirports.map(
                      (e) {
                        return Expanded(
                          child: Row(
                            children: [
                              DotCustom(
                                  color: primaryColor, full: true, radius: 12),
                              _dotDecoration(),
                            ],
                          ),
                        );
                      },
                    ),
                    Icon(Icons.airplane_ticket, color: primaryColor),
                  ],
                ),
                const SizedBox(height: 5.0),
                Text(
                  S.of(context).listStopAirports,
                  style: context.titleMedium.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const DividerCustomWithAirplane(),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: flight.stopAirports
                          .map(
                            (e) => Container(
                              padding: const EdgeInsets.all(10.0),
                              margin: const EdgeInsets.only(left: 10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                border:
                                    Border.all(width: 1, color: primaryColor),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      DotCustom(
                                        color: primaryColor,
                                        full: true,
                                        radius: 10,
                                      ),
                                      const SizedBox(width: 5.0),
                                      Text(
                                        e.airport.name,
                                        style: context.titleSmall.copyWith(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Icon(Icons.flight, color: primaryColor),
                                  const SizedBox(height: 2),
                                  Text(getYmdHmFormat(e.stopTime)),
                                  const Spacer(),
                                ],
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Expanded _dotDecoration() {
    return Expanded(
      child: Container(
        width: double.infinity,
        height: 1,
        decoration: DottedDecoration(
          linePosition: LinePosition.bottom,
        ),
      ),
    );
  }

  Column _startAndEndAirport(Airport airport, DateTime time, bool isEnd) {
    return Column(
      crossAxisAlignment:
          isEnd ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        Text(
          getYmdFormat(time),
          style: context.titleSmall.copyWith(
            color: Theme.of(context).primaryColor,
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(height: 5.0),
        Text(
          airport.code,
          style: context.titleMedium.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 2.0),
        Text(
          airport.location.subString,
          style: context.titleMedium.copyWith(),
        ),
      ],
    );
  }
}

class CustomerAirlinePieChart extends StatefulWidget {
  const CustomerAirlinePieChart({super.key});

  @override
  State<CustomerAirlinePieChart> createState() =>
      _CustomerAirlinePieChartState();
}

class _CustomerAirlinePieChartState extends State<CustomerAirlinePieChart> {
  int _touchIndex = -1;

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == _touchIndex;
      final fontSize = isTouched ? 20.0 : 16.0;
      final radius = isTouched ? 110.0 : 100.0;
      const shadows = [Shadow(color: Colors.black, blurRadius: 2)];

      switch (i) {
        case 0:
          return PieChartSectionData(
            color: Colors.blue,
            value: 40,
            title: '40%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffffff),
              shadows: shadows,
            ),
            badgePositionPercentageOffset: .98,
          );
        case 1:
          return PieChartSectionData(
            color: Colors.yellow,
            value: 30,
            title: '30%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffffff),
              shadows: shadows,
            ),
            badgePositionPercentageOffset: .98,
          );
        case 2:
          return PieChartSectionData(
            color: Colors.purple,
            value: 16,
            title: '16%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffffff),
              shadows: shadows,
            ),
            badgePositionPercentageOffset: .98,
          );
        case 3:
          return PieChartSectionData(
            color: Colors.green,
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffffff),
              shadows: shadows,
            ),
            badgePositionPercentageOffset: .98,
          );
        default:
          throw Exception('Oh no');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: Colors.blueGrey, width: 0.2),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: PieChart(
                PieChartData(
                  borderData: FlBorderData(show: false),
                  sectionsSpace: 0,
                  centerSpaceRadius: 0,
                  pieTouchData: PieTouchData(
                    touchCallback: (FlTouchEvent event, pieTouchResponse) {
                      setState(() {
                        if (!event.isInterestedForInteractions ||
                            pieTouchResponse == null ||
                            pieTouchResponse.touchedSection == null) {
                          _touchIndex = -1;
                          return;
                        }
                        _touchIndex = pieTouchResponse
                            .touchedSection!.touchedSectionIndex;
                      });
                    },
                  ),
                  sections: showingSections(),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(height: 20, width: 20, color: Colors.green),
                        Text(
                          "Some Text",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(height: 20, width: 20, color: Colors.green),
                        Text(
                          "Some Text",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(height: 20, width: 20, color: Colors.green),
                        Text(
                          "Some Text",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FlightInformationCard extends StatelessWidget {
  const FlightInformationCard({super.key});

  Widget get _buildPlaneIndicator {
    return Container(
      width: 24,
      height: 24,
      decoration: const BoxDecoration(
          color: Colors.lightBlue,
          borderRadius: BorderRadius.all(
            Radius.circular(64),
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.lightBlueAccent,
                blurRadius: 16,
                offset: Offset(0, 4))
          ]),
      child: const Icon(
        Icons.flight,
        color: Colors.white,
        size: 15,
      ),
    );
  }

  Widget _buildAirportTimeName(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "USA, Airport",
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        Text(
          DateFormat().add_yMd().add_Hm().format(DateTime.now()),
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: Theme.of(context).dividerColor.withOpacity(0.5)),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: Colors.blueGrey, width: 0.2),
      ),
      color: Theme.of(context).cardColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/icons/direct-flight.png",
                  height: 30,
                  width: 30,
                  fit: BoxFit.contain,
                ),
                const SizedBox(width: 5),
                Text(
                  "Flight Information",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Detail",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: Theme.of(context).primaryColor),
                  ),
                )
              ],
            ),
            Flexible(
              child: TimelineTheme(
                data: TimelineThemeData(
                    gutterSpacing: 5,
                    itemGap: 0,
                    lineColor: Theme.of(context).primaryColor),
                child: Timeline(
                  shrinkWrap: true,
                  indicatorSize: 30,
                  events: [
                    TimelineEventDisplay(
                      child: TimelineEventCard(
                        title: _buildAirportTimeName(context),
                        content: Text(
                            "someone commented on your timeline ${DateTime.now()}"),
                      ),
                      indicator: _buildPlaneIndicator,
                    ),
                    TimelineEventDisplay(
                      child: TimelineEventCard(
                        title: _buildAirportTimeName(context),
                        content: Text(
                            "someone commented on your timeline ${DateTime.now()}"),
                      ),
                      indicator: _buildPlaneIndicator,
                    ),
                    TimelineEventDisplay(
                      child: TimelineEventCard(
                        title: _buildAirportTimeName(context),
                        content: Text(
                            "someone commented on your timeline ${DateTime.now()}"),
                      ),
                      indicator: _buildPlaneIndicator,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
