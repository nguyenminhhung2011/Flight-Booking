import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flight_booking/core/components/enum/tic_type_enum.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/components/widgets/mobile/button_custom.dart';
import 'package:flight_booking/core/constant/handle_time.dart';
import 'package:flight_booking/data/models/model_helper.dart';
import 'package:flight_booking/domain/entities/airport/stop_airport.dart';
import 'package:flight_booking/presentations/list_flight/bloc/list_flight_bloc.dart';
import 'package:flight_booking/presentations/list_flight/views/widgets/dot_custom.dart';
import 'package:flight_booking/presentations/list_flight/views/widgets/flight_details_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/entities/airport/airport.dart';
import '../../../domain/entities/flight/flight.dart';
import '../../../domain/entities/ticket/ticket_information.dart';
import '../../../generated/l10n.dart';

class FlightFastView extends StatefulWidget {
  const FlightFastView({super.key});

  @override
  State<FlightFastView> createState() => _FlightFastViewState();
}

class _FlightFastViewState extends State<FlightFastView> {
  ListFlightBloc get _bloc => context.read<ListFlightBloc>();
  List<TicketInformation> get _ticInformation => _bloc.data.ticketInformation;
  Flight? get _currentFlight => _bloc.data.flightSelected;
  List<StopAirport> get _stopAirports =>
      _currentFlight?.stopAirports ?? <StopAirport>[];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ListFlightBloc, ListFlightState>(
        builder: (context, state) {
      return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ButtonCustom(
            height: 45,
            onPress: () {},
            child: Text(S.of(context).viewDetail),
          ),
        ),
        body: state.loadingSubField
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Container(
                width: double.infinity,
                height: double.infinity,
                margin: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Theme.of(context).primaryColor.withOpacity(0.1),
                ),
                child: ListView(
                  children: [
                    if (_currentFlight != null) ...[
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(10.0),
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Theme.of(context).cardColor,
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                              color: Theme.of(context)
                                  .shadowColor
                                  .withOpacity(0.1),
                              blurRadius: 5.0,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Text(
                              S.of(context).overview,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            FlightDetailsWidget(
                              firstTitle: S.of(context).id,
                              firstDesc:
                                  '${S.of(context).flight} ${_currentFlight!.id}',
                              secondTitle: S.of(context).airport,
                              secondDesc: _currentFlight!.airline.airlineName,
                            ),
                            FlightDetailsWidget(
                              firstTitle:
                                  _currentFlight!.departureAirport.location,
                              firstDesc:
                                  getYmdHmFormat(_currentFlight!.timeStart),
                              secondTitle:
                                  _currentFlight!.arrivalAirport.location,
                              secondDesc:
                                  getYmdHmFormat(_currentFlight!.timeEnd),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(
                                horizontal: 10.0,
                                vertical: 10.0,
                              ),
                              width: double.infinity,
                              height: 1,
                              decoration: DottedDecoration(
                                shape: Shape.line,
                                linePosition: LinePosition.bottom,
                              ),
                            ),
                            if (_ticInformation.isNotEmpty) ...[
                              ..._ticInformation.map((e) => TicItemColorView(
                                    ticType:
                                        TicTypeEnum.fromInt(e.id.ticketType),
                                    price: e.price,
                                  ))
                            ],
                          ],
                        ),
                      ),
                    ],
                    if (_currentFlight != null)
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(10.0),
                        margin: const EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Theme.of(context).cardColor,
                          boxShadow: [
                            BoxShadow(
                              color: Theme.of(context)
                                  .shadowColor
                                  .withOpacity(0.1),
                              blurRadius: 5.0,
                            )
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  S.of(context).schedule,
                                  textAlign: TextAlign.center,
                                  style: context.titleLarge
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15.0),
                            _airportStartAndEndField(
                              context,
                              _currentFlight?.departureAirport ??
                                  ModelHelper.defaultAirport,
                              _currentFlight?.timeStart ?? DateTime.now(),
                            ),
                            const SizedBox(height: 7.0),
                            _dot(context),
                            ..._stopAirports
                                .map<Widget>(
                                  (e) => _filedAirportInformation(e, context),
                                )
                                .expand(
                                  (element) => [
                                    element,
                                    _dot(context),
                                  ],
                                ),
                            const SizedBox(height: 7.0),
                            _airportStartAndEndField(
                              context,
                              _currentFlight?.arrivalAirport ??
                                  ModelHelper.defaultAirport,
                              _currentFlight?.timeEnd ?? DateTime.now(),
                            ),
                          ],
                        ),
                      ),
                    const SizedBox(height: 10.0),
                  ],
                ),
              ),
      );
    });
  }

  Row _airportStartAndEndField(
      BuildContext context, Airport airport, DateTime time) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(Icons.airplane_ticket, color: Theme.of(context).primaryColor),
        const SizedBox(width: 10.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                airport.name,
                style: context.titleMedium.copyWith(),
              ),
            ],
          ),
        )
      ],
    );
  }

  Container _filedAirportInformation(StopAirport e, BuildContext context) {
    final headerTextStyle = context.titleMedium.copyWith(
      fontWeight: FontWeight.bold,
      overflow: TextOverflow.ellipsis,
    );

    return Container(
      padding: const EdgeInsets.only(
        left: 15.0,
        top: 5.0,
        bottom: 5.0,
      ),
      margin: const EdgeInsets.only(left: 7.0),
      decoration: DottedDecoration(
        linePosition: LinePosition.left,
        strokeWidth: 1.5,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            getYmdFormat(e.stopTime),
            style: context.titleSmall.copyWith(
              color: Theme.of(context).primaryColor,
              fontStyle: FontStyle.italic,
            ),
          ),
          Row(
            children: [
              const SizedBox(width: 10.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      e.airport.name,
                      style: headerTextStyle,
                    ),
                    const SizedBox(height: 2.0),
                    Text(
                      e.airport.code,
                      style: context.titleSmall,
                    )
                  ],
                ),
              ),
              Text(
                getjmFormat(e.stopTime),
                style: headerTextStyle,
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Container(
            padding: const EdgeInsets.all(10.0),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Theme.of(context).dividerColor.withOpacity(0.05),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...<Map<String, dynamic>>[
                  {'header': S.of(context).description, 'text': e.description},
                  {'header': S.of(context).code, 'text': e.airport.location}
                ].map(
                  (e) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        e['header'].toString(),
                        style: context.titleSmall
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(e['text'], style: context.titleSmall),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  DotCustom _dot(BuildContext context) {
    return DotCustom(
      color: Theme.of(context).primaryColor,
      full: true,
      radius: 15.0,
    );
  }
}

class TicItemColorView extends StatelessWidget {
  final TicTypeEnum ticType;
  final double price;
  const TicItemColorView({
    super.key,
    required this.ticType,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: ticType.colorType!.withOpacity(0.2),
        border: Border.all(
          width: 1,
          color: ticType.colorType!,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ticType.displayValue,
                  maxLines: 1,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  '20/30',
                  maxLines: 1,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
          ),
          Text(
            '\$$price',
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.w400,
                ),
          )
        ],
      ),
    );
  }
}
