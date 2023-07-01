import 'package:flight_booking/core/components/enum/payment_status_enum.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/components/widgets/flux_table/flux_ticket_table.dart';
import 'package:flight_booking/core/components/widgets/loading_indicator.dart';
import 'package:flight_booking/core/components/widgets/payment_status_utils.dart';
import 'package:flight_booking/core/constant/handle_time.dart';
import 'package:flight_booking/domain/entities/credit_card/credit_card.dart';
import 'package:flight_booking/domain/entities/payment/payment_item.dart';
import 'package:flight_booking/presentations/payment_detail/bloc/payment_detail_bloc.dart';
import 'package:flight_booking/presentations/payment_detail/view/widgets/flight_info_card.dart';
import 'package:flight_booking/presentations/payment_detail/view/widgets/payment_detail_card.dart';
import 'package:flight_booking/presentations/payment_detail/view/widgets/payment_info_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flight_booking/core/config/common_ui_config.dart';

import '../../../core/components/widgets/flux_table/flux_table_row.dart';
import '../../../generated/l10n.dart';

class PaymentDetailScreen extends StatefulWidget {
  const PaymentDetailScreen({super.key});

  @override
  State<PaymentDetailScreen> createState() => _PaymentDetailScreenState();
}

class _PaymentDetailScreenState extends State<PaymentDetailScreen> {
  late final PaymentDetailBloc bloc =
      BlocProvider.of<PaymentDetailBloc>(context);

  @override
  void initState() {
    bloc.add(PaymentDetailEvent.fetchPaymentDetailData(id: bloc.paymentId));
    super.initState();
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
          Text(
            status.name,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: status.getColorBaseOnStatus().shade900,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ],
      ),
    );
  }

  Widget _buildPaymentTable(PaymentDetailState state) {
    return FluxTicketTable<PaymentItem>(
      currentIndex: state.data.currentIndex,
      data: state.data.payments,
      onTap: (index) {
        print(index);
        print(state.data.payments.elementAt(index).id);
        bloc.add(
          PaymentDetailEvent.fetchPaymentDetailData(
              id: state.data.payments.elementAt(index).id),
        );
        ;
      },
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
            if (columnIndex == 5) {
              return _buildPaymentStatusComponent(context, data);
            }
            return Text(
              data.toString(),
              style: context.bodyMedium,
            );
          },
          rowData: [
            FlexRowTableData<String>(flex: 2, data: data.id),
            FlexRowTableData<String>(flex: 2, data: data.customer?.name ?? ""),
            FlexRowTableData<String>(flex: 2, data: data.paymentType.name),
            FlexRowTableData<String>(flex: 2, data: data.total.toString()),
            FlexRowTableData<String>(
                flex: 2,
                data: getYmdHmFormat(
                    DateTime.fromMillisecondsSinceEpoch(data.createDate))),
            FlexRowTableData<PaymentStatus>(flex: 2, data: data.paymentStatus),
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
          FlexRowTableData<String>(flex: 2, data: "Customer Name"),
          FlexRowTableData<String>(flex: 2, data: S.of(context).paymentMethod),
          FlexRowTableData<String>(flex: 2, data: S.of(context).amount),
          FlexRowTableData<String>(flex: 2, data: S.of(context).creDate),
          FlexRowTableData<String>(flex: 2, data: S.of(context).status),
        ],
      ),
      isSelectable: true,
      padding: const EdgeInsets.all(8),
    );
  }

  final double cardSpace = 10;

  void _stateChangeListener(BuildContext context, PaymentDetailState state) {
    state.whenOrNull();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentDetailBloc, PaymentDetailState>(
      bloc: bloc,
      listener: _stateChangeListener,
      builder: (context, state) {
        return state.isLoading
            ? Center(
                child: LoadingIndicator(
                    color: Theme.of(context).colorScheme.primary))
            : Scaffold(
                appBar: AppBar(
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  iconTheme: IconThemeData(color: context.titleSmall.color),
                  elevation: 1,
                  title: Text(
                    "Payment Detail",
                    style: context.headlineMedium.copyWith(
                        fontWeight: FontWeight.bold,
                        color: context.titleSmall.color),
                  ),
                ),
                body: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Column(
                            children: [
                              Expanded(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Expanded(
                                        flex: 2,
                                        child: PaymentConfirmCard(
                                          creditCard: state.data.paymentDetail
                                                  .customer?.creditCard ??
                                              const CreditCard(),
                                        )),
                                    SizedBox(width: cardSpace),
                                    Expanded(
                                      flex: 3,
                                      child: FlightInfoCard(
                                        flight: state.data.paymentDetail.flight,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: cardSpace),
                              Expanded(
                                child: _buildPaymentTable(state),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: cardSpace),
                        Expanded(
                            child: PaymentDetailCard(
                          payment: state.data.paymentDetail,
                        )),
                      ],
                    ),
                  ),
                ),
              );
      },
    );
  }
}
