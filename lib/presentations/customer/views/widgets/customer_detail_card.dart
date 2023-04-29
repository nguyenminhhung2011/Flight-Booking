import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ticket_widget/ticket_widget.dart';

import '../../../list_flight/views/widgets/flight_data.dart';

class CustomerDetailCard extends StatelessWidget {
  const CustomerDetailCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(color: Colors.blueGrey, width: 0.2),
            ),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
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
                  const LabelText(
                      label: "Address", title: "hoangankin123@gmail.com"),
                ],
              ),
            ),
          ),
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
          )
        ],
      ),
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
