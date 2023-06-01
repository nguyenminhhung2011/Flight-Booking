import 'package:flight_booking/core/components/widgets/card_custom.dart';
import 'package:flight_booking/core/constant/handle_time.dart';
import 'package:flight_booking/presentations/customer/views/widgets/passenger_info_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

import '../../../../core/components/widgets/swiper_custom.dart';
import '../../../../domain/entities/customer/customer.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CustomerBloc, CustomerState>(
        builder: (context, customerState) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child:
                    CustomerInformationCard(customer: customerState.customer),
              ),
              const Expanded(
                flex: 2,
                child: CustomerTicketInformationCard(),
              )
            ],
          );
        },
      ),
    );
  }
}

class CustomerTicketInformationCard extends StatefulWidget {
  const CustomerTicketInformationCard({
    super.key,
  });

  @override
  State<CustomerTicketInformationCard> createState() =>
      _CustomerTicketInformationCardState();
}

class _CustomerTicketInformationCardState
    extends State<CustomerTicketInformationCard> {
  final List<PassengerInfoCard> cards = const [
    PassengerInfoCard(),
    PassengerInfoCard(),
    PassengerInfoCard(),
    PassengerInfoCard(),
    PassengerInfoCard(),
  ];

  final SwiperController controller = SwiperController();

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
              padding: const EdgeInsets.symmetric(horizontal: 10),
              constraints: const BoxConstraints(maxHeight: 350),
              child: const FlightDataCustomerScreen(),
            ),
            const SizedBox(height: 10),
            Stack(
              children: [
                SwiperCustom(
                  controller: controller,
                  height: 300,
                  itemBuilder: (index) {
                    return cards.elementAt(index);
                  },
                  itemCount: cards.length,
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
                  title: getYmdFormat(customer.birthday),
                ),
                LabelText(
                  label: S.of(context).age,
                  title:
                      ((DateTime.now().difference(customer.birthday).inDays) /
                              365)
                          .toString(),
                ),
                LabelText(label: S.of(context).country, title: "VietNam"),
              ],
            ),
            LabelText(
                label: S.of(context).phoneNumber, title: customer.phoneNumber),
            LabelText(label: S.of(context).email, title: customer.email),
          ],
        ),
      ),
    );
  }
}

class FlightDataCustomerScreen extends StatelessWidget {
  const FlightDataCustomerScreen({
    Key? key,
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
                  firstDesc: 'Hoang Truong',
                  secondTitle: S.of(context).date,
                  secondDesc: '28-08-2022'),
              FlightDetailsWidget(
                  firstTitle: S.of(context).flight,
                  firstDesc: '76836A45',
                  secondTitle: S.of(context).gate,
                  secondDesc: '66B'),
              FlightDetailsWidget(
                firstTitle: S.of(context).ticketNumber,
                firstDesc: '5 Tickets',
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
