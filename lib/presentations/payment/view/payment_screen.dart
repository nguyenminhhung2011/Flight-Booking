import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/data/models/model_helper.dart';
import 'package:flight_booking/presentations/payment/view/tabs/book_payment_tab.dart';
import 'package:flight_booking/presentations/payment/view/tabs/confiirm_infomation_tab.dart';
import 'package:flight_booking/presentations/payment/view/tabs/paymnet_tab.dart';
import 'package:flight_booking/presentations/payment/view/widgets/price_summary_cad.dart';
import 'package:flight_booking/presentations/payment/view/widgets/tic_information.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/entities/customer/customer.dart';
import '../../../domain/entities/flight/flight.dart';
import '../../../domain/entities/payment/payment.dart';
import '../../../domain/entities/ticket/ticket.dart';
import '../../../domain/entities/ticket/ticket_information.dart';
import '../../customer/views/widgets/customer_detail_card.dart';
import '../blocs/payment_tab_bloc.dart';

const _maxWidthDevice = 1200;

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  PaymentTabBloc get _bloc => BlocProvider.of<PaymentTabBloc>(context);
  Flight? get _flight => _bloc.data.flight;
  Customer? get _customer => _bloc.data.customer;
  Map<int, TicketInformation>? get _ticInformation => _bloc.data.ticInformation;
  List<Ticket> get _tics => _bloc.data.tics;
  Map<String, double> get _priceSummary => _bloc.data.priceSummary;
  Payment? get _payment => _bloc.data.payment;

  final ValueNotifier<int> _pageIndex = ValueNotifier<int>(0);
  final PageController _pageController = PageController();

  @override
  void initState() {
    _bloc.add(const PaymentTabEvent.getPaymentById());
    _bloc.add(const PaymentTabEvent.getFlightById());
    _bloc.add(const PaymentTabEvent.getTicInformation());
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onNextPage(int index) {
    _pageIndex.value = _pageIndex.value + 1;
    _pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.fastOutSlowIn);
  }

  void _listenStateChange(_, PaymentTabState state) {
    state.maybeWhen(
      addTicToDBSuccess: (data) {
        if (_payment != null) {
          _onNextPage(2);
        }
      },
      updateContactCustomerSuccess: (data) {
        context.showSuccessDialog(
          width: 300,
          header: 'Update',
          title: 'Update contact information success!',
        );
      },
      getPaymentByIdFailed: (data, error) {
        context.showSuccessDialog(width: 300, header: 'Error', title: error);
      },
      addTicToDBFailed: (data, error) {
        context.showSuccessDialog(width: 300, header: 'Error', title: error);
      },
      updateContactCustomerFailed: (data, error) {
        context.showSuccessDialog(width: 300, header: 'Error', title: error);
      },
      orElse: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    final hintColor = Theme.of(context).hintColor;
    return WillPopScope(
      onWillPop: () async {
        return await context.showYesNoDialog(
          400,
          "Warning",
          "Are you sure to cancel payment process ? ",
        );
      },
      child: BlocConsumer<PaymentTabBloc, PaymentTabState>(
        listener: _listenStateChange,
        builder: (context, state) {
          if (state.loadingGetData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (_customer == null || _flight == null || _ticInformation == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return Scaffold(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            appBar: AppBar(
              toolbarHeight: 80.0,
              backgroundColor: Colors.transparent,
              iconTheme: Theme.of(context).iconTheme,
              elevation: 0,
              centerTitle: true,
              title: ValueListenableBuilder(
                  valueListenable: _pageIndex,
                  builder: (context, pageIndex, child) {
                    return Container(
                      width: context.widthDevice > _maxWidthDevice
                          ? context.widthDevice / 2
                          : double.infinity,
                      margin: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.document_scanner,
                            color: primaryColor,
                            size: 30.0,
                          ),
                          const SizedBox(width: 10.0),
                          Stack(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    width: 300,
                                    height: 6.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      color: hintColor.withOpacity(0.2),
                                    ),
                                  ),
                                  Icon(Icons.airplane_ticket,
                                      color: hintColor, size: 20)
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  AnimatedContainer(
                                    constraints:
                                        const BoxConstraints(maxWidth: 300),
                                    duration: const Duration(milliseconds: 300),
                                    width: 300.0 * pageIndex * 1.0,
                                    height: 6.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      color: primaryColor,
                                    ),
                                  ),
                                  Icon(Icons.airplane_ticket,
                                      color: primaryColor, size: 20)
                                ],
                              )
                            ],
                          ),
                          const SizedBox(width: 10.0),
                          Icon(
                            Icons.payments,
                            color: pageIndex > 0 ? primaryColor : hintColor,
                            size: 30.0,
                          ),
                          const SizedBox(width: 10.0),
                          Stack(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    width: 300,
                                    height: 6.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      color: hintColor.withOpacity(0.2),
                                    ),
                                  ),
                                  Icon(Icons.airplane_ticket,
                                      color: hintColor, size: 20)
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  AnimatedContainer(
                                    duration: const Duration(milliseconds: 300),
                                    constraints:
                                        const BoxConstraints(maxWidth: 300),
                                    width: pageIndex > 1
                                        ? 300.0 * (pageIndex - 1) * 1.0
                                        : 0,
                                    height: 6.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      color: primaryColor,
                                    ),
                                  ),
                                  Icon(Icons.airplane_ticket,
                                      color: pageIndex > 0
                                          ? primaryColor
                                          : hintColor,
                                      size: 20)
                                ],
                              )
                            ],
                          ),
                          const SizedBox(width: 10.0),
                          Icon(
                            Icons.check_circle_outline_sharp,
                            color: pageIndex == 2 ? primaryColor : hintColor,
                            size: 30.0,
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            body: Row(
              children: [
                if (context.widthDevice > _maxWidthDevice) ...[
                  Container(
                    width: 450,
                    margin: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    height: context.heightDevice,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        const TicInformation(),
                        // if (_customer != null && _ticInformation != null)
                        CustomerTicketInformationCard(
                          customer: _customer ?? ModelHelper.defaultCustomer,
                          listTics: _tics,
                          ticInformation: _ticInformation ?? {},
                        ),
                        PriceSummaryCard(
                          tics: _tics,
                          priceSummary: _priceSummary,
                        ),
                      ],
                    ),
                  ),
                ],
                Expanded(
                  child: PageView(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: _pageController,
                    children: [
                      BookPaymentTab(
                        onNextPage: () => _onNextPage(1),
                      ),
                      const PaymentTab(),
                      if (_payment != null) const ConfirmInformationTab(),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
