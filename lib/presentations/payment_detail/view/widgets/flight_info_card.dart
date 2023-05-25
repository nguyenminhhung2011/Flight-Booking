import 'package:dotted_line/dotted_line.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/config/common_ui_config.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FlightInfoCard extends StatelessWidget {
  const FlightInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: CommonAppUIConfig.primaryRadiusBorder,
        side: BorderSide(
          width: 0.5,
          color: Theme.of(context).dividerColor,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          children: [
            const Expanded(child: FlightScheduleComponent()),
            Divider(thickness: 1, color: Theme.of(context).dividerColor),
            const Expanded(child: FlightScheduleInformation()),
            Divider(thickness: 1, color: Theme.of(context).dividerColor),
            const Expanded(child: FlightDestinationComponent()),
          ],
        ),
      ),
    );
  }
}

class FlightDestinationComponent extends StatelessWidget {
  const FlightDestinationComponent({super.key});

  Widget _buildColumnDataDisplay(
    BuildContext context, {
    required String headline,
    required String title,
    String? airportCode,
    String? subtitle,
  }) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            headline,
            style:
                context.titleSmall.copyWith(color: Theme.of(context).hintColor),
          ),
          Text.rich(
            style: Theme.of(context).textTheme.titleMedium,
            TextSpan(
              children: [
                TextSpan(
                  text: title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                if (airportCode != null)
                  TextSpan(
                    text: " $airportCode",
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
              ],
            ),
          ),
          if (subtitle != null)
            Text(
              subtitle,
              style: context.titleSmall
                  .copyWith(color: Theme.of(context).hintColor),
            ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 3,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: _buildColumnDataDisplay(
                  context,
                  headline: 'From',
                  title: "Ho Chi Minh",
                  airportCode: "SGN",
                  subtitle: "Tan Son Nhat International Airport",
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).cardColor,
                ),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              Expanded(
                child: _buildColumnDataDisplay(
                  context,
                  headline: 'To',
                  title: "Ha Noi",
                  airportCode: "HAN",
                  subtitle: "Noi Bai International Airport",
                ),
              ),
            ],
          ),
        ),
        VerticalDivider(color: Colors.grey, thickness: 0.5, width: 20),
        Expanded(
          flex: 1,
          child: _buildColumnDataDisplay(
            context,
            headline: 'Total Passenger',
            title: "30",
          ),
        ),
      ],
    );
  }
}

class FlightScheduleComponent extends StatelessWidget {
  const FlightScheduleComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: ListTile(
            dense: true,
            minLeadingWidth: 0,
            contentPadding: const EdgeInsets.all(0),
            leading: Image.asset(
              "icons/airplane.png",
              height: 50,
              width: 50,
              fit: BoxFit.contain,
              filterQuality: FilterQuality.high,
            ),
            title: Text(
              "Vietnam Airlines",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "Boeing 737-80",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Theme.of(context).hintColor),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "11:00",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "BOM",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: Theme.of(context).hintColor),
                    ),
                  ],
                ),
                const SizedBox(width: 5),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "0h 50m",
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(color: Theme.of(context).hintColor),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          DottedLine(
                            lineLength: 150,
                            direction: Axis.horizontal,
                            lineThickness: 1.0,
                            dashLength: 4.0,
                            dashColor: Theme.of(context).primaryColor,
                            dashRadius: 0.0,
                            dashGapLength: 4.0,
                            dashGapColor: Colors.transparent,
                            dashGapRadius: 0.0,
                          ),
                          RotatedBox(
                            quarterTurns: 1,
                            child: Icon(
                              Icons.flight,
                              color: Theme.of(context).primaryColor,
                            ),
                          )
                        ],
                      ),
                      Text(
                        "1 Stop",
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "11:00",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "BOM",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: Theme.of(context).hintColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Ho Chi Minh City",
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                "(3h 0m)",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Theme.of(context).hintColor),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class FlightScheduleInformation extends StatelessWidget {
  const FlightScheduleInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.flight_takeoff,
                    color: Theme.of(context).textTheme.titleMedium?.color,
                  ),
                  const SizedBox(width: 15),
                  Text(
                    "Department",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Text(
                DateFormat().add_yMMMMEEEEd().format(DateTime.now()),
                style: context.titleSmall.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                DateFormat().add_jm().format(DateTime.now()),
                style: context.titleSmall.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).hintColor),
              ),
              Text(
                "Ho Chi Minh City, Pleiku Gia Lai",
                style: context.titleSmall.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).hintColor),
              )
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                isThreeLine: true,
                leading: Icon(
                  Icons.airline_stops,
                  color: Theme.of(context).textTheme.titleMedium?.color,
                ),
                title: Text(
                  "Layover at Daklak Airport CCU",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  DateFormat().add_jm().format(DateTime.now()),
                  style: context.titleSmall.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).hintColor),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.flight_land,
                      color: Theme.of(context).textTheme.titleMedium?.color,
                    ),
                    const SizedBox(width: 15),
                    Text(
                      "Arrival",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Text(
                  DateFormat().add_yMMMMEEEEd().format(DateTime.now()),
                  style:
                      context.titleSmall.copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  DateFormat().add_jm().format(DateTime.now()),
                  style: context.titleSmall.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).hintColor),
                ),
                Text(
                  "Ho Chi Minh City, Pleiku Gia Lai",
                  style: context.titleSmall.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).hintColor),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
