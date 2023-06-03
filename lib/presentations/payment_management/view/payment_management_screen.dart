import 'dart:math';
import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/const/image_const.dart';
import 'package:flight_booking/core/components/enum/action_enum.dart';
import 'package:flight_booking/core/components/enum/payment_status_enum.dart';
import 'package:flight_booking/core/components/enum/payment_type.dart';
import 'package:flight_booking/core/components/widgets/custom_row_column.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/components/widgets/flux_table/flux_table_row.dart';
import 'package:flight_booking/core/components/widgets/flux_table/flux_ticket_table.dart';
import 'package:flight_booking/core/components/widgets/mobile/sort_button.dart';
import 'package:flight_booking/core/components/widgets/payment_status_utils.dart';
import 'package:flight_booking/core/components/widgets/range_date_picker_custom.dart';
import 'package:flight_booking/core/config/common_ui_config.dart';
import 'package:flight_booking/core/constant/handle_time.dart';
import 'package:flight_booking/domain/entities/payment/payment.dart';
import 'package:flight_booking/generated/l10n.dart';
import 'package:flight_booking/presentations/payment_management/bloc/payment_bloc.dart';
import 'package:flight_booking/presentations/payment/view/widgets/payment_method_statistic_component.dart';
import 'package:flight_booking/presentations/payment/view/widgets/payment_statistic_component.dart';
import 'package:flight_booking/presentations/payment/view/widgets/payment_status_statistic_component.dart';
import 'package:flight_booking/presentations/payment/view/widgets/ticket_tier_statistic_component.dart';
import 'package:flight_booking/presentations/settings/views/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/components/enum/tic_type_enum.dart';

enum PaymentFilterMethod {
  calendarMethod,
  statusMethod,
  paymentMethod,
}

class PaymentManagementScreen extends StatefulWidget {
  const PaymentManagementScreen({super.key});

  @override
  State<PaymentManagementScreen> createState() =>
      _PaymentManagementScreenState();
}

class _PaymentManagementScreenState extends State<PaymentManagementScreen> {
  PaymentBloc get _paymentBLoc => BlocProvider.of(context);

  void _stateChangeListener(BuildContext context, PaymentState state) {
    state.whenOrNull(
      initial: (data) {},
      loading: (data) {},
      deletePaymentSuccess: (data) {},
      fetchListPaymentDataSuccess: (data) {},
      fetchPaymentDataSuccess: (data) {},
      openPaymentDetailSuccess: (data) {
        context.openPaymentDetailPage();
      },
    );
  }

  void _filterPayment(PaymentType? type) async {}

  void _filterStatus(PaymentStatus? status) async {}

  void _filterCalendar() async {
    final dateRange = await context.pickRangeDate(RangeDateController());
    if (dateRange == null) return;
    _paymentBLoc.add(PaymentEvent.fetchPaymentData(dateRange: dateRange));
  }

  Widget _buildFilterButton({
    required PaymentFilterMethod filter,
    required String title,
    required IconData icon,
  }) {
    return switch (filter) {
      PaymentFilterMethod.paymentMethod => DropdownButton<PaymentType>(
          value: PaymentType.all,
          items: [
            DropdownMenuItem(
              value: PaymentType.card,
              child: Text(PaymentType.card.name, style: context.bodyMedium),
            ),
            DropdownMenuItem(
              value: PaymentType.cash,
              child: Text(PaymentType.cash.name, style: context.bodyMedium),
            ),
            DropdownMenuItem(
              value: PaymentType.all,
              child: Text(PaymentType.all.name, style: context.bodyMedium),
            ),
          ],
          onChanged: _filterPayment,
        ),
      PaymentFilterMethod.statusMethod => DropdownButton<PaymentStatus>(
          items: [],
          onChanged: _filterStatus,
        ),
      _ => SortButton(
          title: title,
          icon: icon,
          onPress: _filterCalendar,
        ),
    };
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentBloc, PaymentState>(
      listener: _stateChangeListener,
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.payment,
                        size: 30,
                        color: Theme.of(context).primaryColor,
                      ),
                      title: Text(
                        S.of(context).paymentManagement,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    _divider(context),
                    _buildStatisticRow(context),
                    _divider(context),
                    CustomRowColumn(
                      isRow: Breakpoints.large.isActive(context),
                      children: <FlexItemRowColumData>[
                        FlexItemRowColumData(
                          flex: 2,
                          data: const PaymentStatusStatisticComponent(),
                        ),
                        FlexItemRowColumData(
                          flex: 2,
                          data: const PaymentMethodStatisticComponent(),
                        ),
                        FlexItemRowColumData(
                          flex: 3,
                          data: TicketTierStatisticComponent(
                            datas: [
                              PieData(tit: TicTypeEnum.businessClass, data: 12),
                              PieData(tit: TicTypeEnum.economyClass, data: 20),
                              PieData(tit: TicTypeEnum.firstClass, data: 20),
                              PieData(
                                tit: TicTypeEnum.premiumEconomyClass,
                                data: 30,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ...<Map<String, dynamic>>[
                          {
                            'icon': Icons.calendar_month,
                            'text': S.of(context).dateRange,
                            'case': PaymentFilterMethod.calendarMethod,
                          },
                          {
                            'icon': Icons.flag,
                            'text': S.of(context).status,
                            'case': PaymentFilterMethod.statusMethod,
                          },
                          {
                            'icon': Icons.credit_card,
                            'text': S.of(context).paymentMethod,
                            'case': PaymentFilterMethod.paymentMethod,
                          }
                        ]
                            .map(
                              (e) => _buildFilterButton(
                                filter: e['case'] as PaymentFilterMethod,
                                title: e['text'].toString(),
                                icon: e['icon'] as IconData,
                              ),
                            )
                            .expand(
                              (element) => [
                                element,
                                const SizedBox(width: 10.0),
                              ],
                            ),
                        const Spacer(),
                        Expanded(
                          child: CustomerTextField(
                            prefixWidget: const Icon(Icons.search),
                            isDense: true,
                            hint: S.of(context).searchByAccount,
                            hintStyle: context.bodyMedium.copyWith(
                                color: Theme.of(context).disabledColor),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.6,
                      child: _buildPaymentTable(context),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Divider _divider(BuildContext context) {
    return Divider(
      height: 20,
      thickness: 0.5,
      color: Theme.of(context).dividerColor,
    );
  }

  Widget _buildStatisticRow(BuildContext context) {
    return CustomRowColumn(
        isRow: Breakpoints.large.isActive(context),
        children: <Map<String, dynamic>>[
          {
            'title': S.of(context).totalPaymentsToday,
            'image': ImageConst.totalPayment,
          },
          {
            'title': S.of(context).totalCustomersToday,
            'image': ImageConst.totalCustomer,
          },
          {
            'title': S.of(context).totalFlightsToday,
            'image': ImageConst.totalFlight,
          },
          {
            'title': S.of(context).totalPassengerToday,
            'image': ImageConst.totalPassenger,
          },
        ]
            .map(
              (e) => FlexItemRowColumData(
                data: PaymentStatisticComponent(
                  title: e['title'],
                  imageAssets: e['image'],
                ),
              ),
            )
            .toList());
  }

  Widget _buildPaymentStatusComponent(
    BuildContext context,
    PaymentStatus status,
  ) {
    return Container(
      width: 150,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      decoration: BoxDecoration(
        color: status.getColorBaseOnStatus().shade200,
        borderRadius: CommonAppUIConfig.primaryRadiusBorder,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            status.getIconBaseOnStatus(),
            color: status.getColorBaseOnStatus().shade900,
          ),
          const SizedBox(width: 5),
          Expanded(
            child: Text(
              status.name,
              style: context.bodyMedium.copyWith(
                color: status.getColorBaseOnStatus().shade900,
                fontWeight: FontWeight.w600,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }

  PaymentStatus getRandomStatus() {
    final status = [
      PaymentStatus.create,
      PaymentStatus.declined,
      PaymentStatus.pending,
      PaymentStatus.succeeded
    ];
    return status.elementAt(Random().nextInt(4));
  }

  Widget _buildPaymentTable(BuildContext context) {
    return FluxTicketTable<Payment>(
      data: [
        for (int i = 0; i < 30; i++)
          Payment(
            id: S.of(context).idData(i),
            customerId: S.of(context).customerID(i),
            flightId: S.of(context).flightIdParams(i),
            paymentMethod: S.of(context).paymentMethodParams(i),
            amount: (i + 1) * 5.9,
            creDate: DateTime.now().add(Duration(seconds: i)),
            status: S.of(context).statusParams(i),
          )
      ],
      rowBuilder: (data) {
        return FluxTableRow(
          rowDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).scaffoldBackgroundColor,
            border:
                Border.all(width: 0.15, color: Theme.of(context).disabledColor),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          itemBuilder: (data, int columnIndex) {
            if (columnIndex == 6) {
              return _buildPaymentStatusComponent(context, data);
            }
            if (columnIndex == 7) {
              return PopupMenuButton<ActionEnum>(
                itemBuilder: (context) => [
                  PopupMenuItem<ActionEnum>(
                    value: ActionEnum.detail,
                    child: Text(
                      ActionEnum.detail.name,
                      style: context.bodyMedium,
                    ),
                  ),
                  PopupMenuItem<ActionEnum>(
                    child: Text(
                      ActionEnum.edit.name,
                      style: context.bodyMedium,
                    ),
                  ),
                  PopupMenuItem<ActionEnum>(
                    child: Text(
                      ActionEnum.delete.name,
                      style: context.bodyMedium,
                    ),
                  ),
                ],
                onSelected: (value) {
                  if (value == ActionEnum.detail) {
                    context.openPaymentDetailPage();
                  }
                },
                icon: const Icon(Icons.more_vert),
              );
            }
            return Text(
              data.toString(),
              style: context.bodyMedium,
            );
          },
          rowData: [
            FlexRowTableData<String>(flex: 2, data: data.id),
            FlexRowTableData<String>(flex: 2, data: data.customerId),
            FlexRowTableData<String>(flex: 2, data: data.flightId),
            FlexRowTableData<String>(flex: 2, data: data.paymentMethod),
            FlexRowTableData<String>(flex: 2, data: data.amount.toString()),
            FlexRowTableData<String>(flex: 2, data: getMMMMEEEd(data.creDate)),
            FlexRowTableData<PaymentStatus>(flex: 2, data: getRandomStatus()),
            FlexRowTableData<String>(flex: 1),
          ],
        );
      },
      rowSelectedDecoration: BoxDecoration(
          border: Border.all(width: 2, color: Theme.of(context).primaryColor)),
      titleRow: FluxTableRow(
        margin: const EdgeInsets.symmetric(vertical: 5.0),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        rowDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).scaffoldBackgroundColor,
          border:
              Border.all(width: 0.15, color: Theme.of(context).disabledColor),
        ),
        itemBuilder: (data, index) {
          if (data == null) return const SizedBox();
          return Text(data.toString());
        },
        rowData: [
          FlexRowTableData<String>(flex: 2, data: S.of(context).id),
          FlexRowTableData<String>(flex: 2, data: S.of(context).customerId),
          FlexRowTableData<String>(flex: 2, data: S.of(context).flightId),
          FlexRowTableData<String>(flex: 2, data: S.of(context).paymentMethod),
          FlexRowTableData<String>(flex: 2, data: S.of(context).amount),
          FlexRowTableData<String>(flex: 2, data: S.of(context).creDate),
          FlexRowTableData<String>(flex: 2, data: S.of(context).status),
          FlexRowTableData<String>(flex: 1, data: S.of(context).actions),
        ],
      ),
      isSelectable: true,
      padding: const EdgeInsets.all(8),
    );
  }
}
