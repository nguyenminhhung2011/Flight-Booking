import 'package:flight_booking/core/components/widgets/card_custom.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/constant/constant.dart';
import 'package:flight_booking/core/constant/handle_time.dart';
import 'package:flight_booking/data/models/model_helper.dart';
import 'package:flight_booking/domain/entities/ticket/ticket.dart';
import 'package:flight_booking/presentations/customer/views/widgets/passenger_info_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

import '../../../../core/components/widgets/swiper_custom.dart';
import '../../../../domain/entities/customer/customer.dart';
import '../../../../domain/entities/payment/payment.dart';
import '../../../../domain/entities/ticket/ticket_information.dart';
import '../../../../generated/l10n.dart';
import '../../../list_flight/views/widgets/flight_details_widget.dart';
import '../../bloc/customer_bloc.dart';

class CustomerDetailCard extends StatefulWidget {
  const CustomerDetailCard({super.key});

  @override
  State<CustomerDetailCard> createState() => _CustomerDetailCardState();
}

class _CustomerDetailCardState extends State<CustomerDetailCard> {
  CustomerBloc get _customerBloc => BlocProvider.of<CustomerBloc>(context);

  Customer? get _customerSelected => _customerBloc.data.customerSelected;
  Payment? get _latestPayment => _customerBloc.data.paymentSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CustomerBloc, CustomerState>(
        builder: (context, customerState) {
          if (customerState.isLoadingGetPayment) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: CustomerInformationCard(
                  customer: _customerSelected ?? ModelHelper.defaultCustomer,
                ),
              ),
              Expanded(
                flex: 2,
                child: CustomerTicketInformationCard(
                  customer:
                      _latestPayment?.customer ?? ModelHelper.defaultCustomer,
                  ticInformation: ticInformationConst,
                  listTics: _latestPayment?.ticket ?? [],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}

class CustomerTicketInformationCard extends StatefulWidget {
  final Customer customer;
  final List<Ticket> listTics;
  final Map<int, TicketInformation> ticInformation;
  const CustomerTicketInformationCard({
    super.key,
    required this.customer,
    required this.listTics,
    required this.ticInformation,
  });

  @override
  State<CustomerTicketInformationCard> createState() =>
      _CustomerTicketInformationCardState();
}

class _CustomerTicketInformationCardState
    extends State<CustomerTicketInformationCard> {
  final SwiperController controller = SwiperController();
  @override
  void dispose() {
    // controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: Theme.of(context).cardColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 10.0),
              constraints: const BoxConstraints(maxHeight: 350),
              child: FlightDataCustomerScreen(
                customer: widget.customer,
                tics: widget.listTics,
              ),
            ),
            const SizedBox(height: 10),
            if (widget.listTics.isNotEmpty)
              Stack(
                children: [
                  SwiperCustom(
                    controller: controller,
                    height: 300,
                    itemBuilder: (index) {
                      final tic = widget.listTics[index];
                      final ticInformation = widget.ticInformation[tic.type];
                      return PassengerInfoCard(
                        ticket: widget.listTics[index],
                        ticInformation: ticInformation,
                      );
                    },
                    itemCount: widget.listTics.length,
                    swiperLayout: SwiperLayout.DEFAULT,
                  ),
                  Positioned(
                    left: 0,
                    top: 5,
                    bottom: 5,
                    child: IconButton(
                      splashRadius: 20,
                      icon: Icon(
                        size: 30,
                        Icons.arrow_back_ios_new,
                        color: Theme.of(context).primaryColor,
                      ),
                      onPressed: () {
                        controller.previous();
                      },
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 5,
                    bottom: 5,
                    child: IconButton(
                      splashRadius: 20,
                      icon: Icon(
                        size: 30,
                        Icons.arrow_forward_ios,
                        color: Theme.of(context).primaryColor,
                      ),
                      onPressed: () {
                        controller.next();
                      },
                    ),
                  ),
                ],
              )
            else
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.search_off_sharp,
                      color: Theme.of(context).primaryColor),
                  const SizedBox(height: 10.0),
                  Text(
                    'Empty',
                    style: context.titleMedium.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                    ),
                  )
                ],
              ),
          ],
        ),
      ),
    );
  }
}

class CustomerInformationCard extends StatelessWidget {
  const CustomerInformationCard({
    super.key,
    required this.customer,
  });

  final Customer customer;

  @override
  Widget build(BuildContext context) {
    return CardCustom(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Text(
                S.of(context).customerInformation,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LabelText(label: S.of(context).name, title: customer.name),
                LabelText(label: S.of(context).gender, title: customer.gender),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LabelText(
                  label: S.of(context).birthday,
                  title: getYmdFormat(
                      DateTime.fromMillisecondsSinceEpoch(customer.birthday)),
                ),
                LabelText(
                  label: S.of(context).age,
                  title: ((DateTime.now()
                              .difference(DateTime.fromMillisecondsSinceEpoch(
                                  customer.birthday))
                              .inDays) /
                          365)
                      .toString(),
                ),
                LabelText(label: S.of(context).country, title: "VietNam"),
              ],
            ),
            LabelText(label: S.of(context).phoneNumber, title: customer.phone),
            LabelText(label: S.of(context).email, title: customer.email),
          ],
        ),
      ),
    );
  }
}

class FlightDataCustomerScreen extends StatelessWidget {
  final Customer customer;
  final List<Ticket> tics;
  const FlightDataCustomerScreen({
    Key? key,
    required this.customer,
    required this.tics,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/seat.png",
              fit: BoxFit.contain,
              height: 40,
              width: 40,
            ),
            const SizedBox(width: 5),
            Text(
              S.of(context).flightTickets,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(5),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text(
                "Paid",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FlightDetailsWidget(
                  firstTitle: S.of(context).name,
                  firstDesc: customer.name,
                  secondTitle: S.of(context).date,
                  secondDesc: getYmdFormat(
                      DateTime.fromMillisecondsSinceEpoch(customer.birthday))),
              FlightDetailsWidget(
                firstTitle: S.of(context).gender,
                firstDesc: customer.gender,
                secondTitle: S.of(context).phoneNumber,
                secondDesc: customer.phone,
              ),
              FlightDetailsWidget(
                firstTitle: S.of(context).ticketNumber,
                firstDesc: '${tics.length} Tickets',
                secondTitle: S.of(context).amount,
                secondDesc: '100 \$',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class DotsSwitchPage extends StatefulWidget {
  const DotsSwitchPage({
    super.key,
    required this.onTap,
    required this.dotsCount,
    this.distance = 0,
    required this.dotSize,
  });

  final Function(int index) onTap;
  final int dotsCount;
  final double distance;
  final double dotSize;

  @override
  State<DotsSwitchPage> createState() => _DotsSwitchPageState();
}

class _DotsSwitchPageState extends State<DotsSwitchPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        for (int i = 0; i < widget.dotsCount; i++) ...[
          InkWell(
            child: Icon(
              Icons.circle,
              color: _currentIndex == i
                  ? Theme.of(context).primaryColor
                  : Theme.of(context).dividerColor,
              size: widget.dotSize,
            ),
            onTap: () {
              setState(() => _currentIndex = i);
              WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                widget.onTap(i);
              });
            },
          ),
          if (i != widget.dotsCount - 1) SizedBox(width: widget.distance),
        ]
      ],
    );
  }
}

class LabelText extends StatelessWidget {
  const LabelText({
    super.key,
    required this.label,
    required this.title,
  });
  final String label;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Colors.grey),
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ],
      ),
    );
  }
}
