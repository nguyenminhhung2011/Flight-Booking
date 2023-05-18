import 'package:flight_booking/core/components/widgets/card_custom.dart';
import 'package:flight_booking/presentations/customer/views/widgets/passenger_info_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:intl/intl.dart';

import '../../../../core/components/widgets/swiper_custom.dart';
import '../../../../generated/l10n.dart';
import '../../../list_flight/views/widgets/flight_details_widget.dart';

class CustomerDetailCard extends StatefulWidget {
  const CustomerDetailCard({super.key});

  @override
  State<CustomerDetailCard> createState() => _CustomerDetailCardState();
}

class _CustomerDetailCardState extends State<CustomerDetailCard> {
  final PageController pageController = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: CustomerInformationCard(),
          ),
          Expanded(
            flex: 2,
            child: CustomerTicketInformationCard(),
          )
        ],
      ),
    );
  }
}

class CustomerTicketInformationCard extends StatelessWidget {
  const CustomerTicketInformationCard({
    super.key,
  });

  final List<PassengerInfoCard> cards = const [
    PassengerInfoCard(),
    PassengerInfoCard(),
    PassengerInfoCard(),
    PassengerInfoCard(),
    PassengerInfoCard(),
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: Colors.blueGrey, width: 0.2),
      ),
      color: Theme.of(context).cardColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                constraints: const BoxConstraints(maxHeight: 350),
                child: const FlightDataCustomerScreen(),
              ),
              const SizedBox(height: 10),
              SwiperCustom(
                height: 300,
                itemBuilder: (index) {
                  return cards.elementAt(index);
                },
                itemCount: cards.length,
                swiperLayout: SwiperLayout.DEFAULT,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomerInformationCard extends StatelessWidget {
  const CustomerInformationCard({
    super.key,
  });

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
                "Customer Information",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LabelText(label: "Name", title: "Hoang Truong"),
                LabelText(label: "Gender", title: "Male"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LabelText(
                  label: "Birthday",
                  title: DateFormat().add_yMd().format(DateTime.now()),
                ),
                LabelText(
                  label: "Age",
                  title: 15.toString(),
                ),
                const LabelText(label: "Country", title: "VietNam"),
              ],
            ),
            const LabelText(label: "Phone", title: "01232352345234"),
            const LabelText(label: "Address", title: "hoangankin123@gmail.com"),
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
              "images/seat.png",
              fit: BoxFit.contain,
              height: 50,
              width: 50,
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
          padding: const EdgeInsets.only(top: 25.0),
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
