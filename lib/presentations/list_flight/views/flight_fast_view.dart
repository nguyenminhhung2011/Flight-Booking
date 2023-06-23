import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flight_booking/core/components/enum/tic_type_enum.dart';
import 'package:flight_booking/core/components/widgets/mobile/button_custom.dart';
import 'package:flight_booking/core/constant/handle_time.dart';
import 'package:flight_booking/presentations/list_flight/bloc/list_flight_bloc.dart';
import 'package:flight_booking/presentations/list_flight/views/widgets/flight_details_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
                        height: 510,
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
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              S.of(context).flightInformation,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            _rowData(context, S.of(context).driver,
                                'Nguyen Minh Hung'),
                            _rowData(
                              context,
                              S.of(context).noCustomer,
                              S.of(context).numberCustomer(100),
                            ),
                            Container(
                              height: 1,
                              decoration: DottedDecoration(
                                color: Theme.of(context).dividerColor,
                                shape: Shape.line,
                                linePosition: LinePosition.bottom,
                              ),
                            ),
                            _rowData(context, S.of(context).price, '200,00\$'),
                          ]
                              .expand((element) =>
                                  [element, const SizedBox(height: 10.0)])
                              .toList(),
                        ),
                      ),
                  ],
                ),
              ),
      );
    });
  }

  Row _rowData(BuildContext context, String tit, String desc) {
    final TextStyle titleStyle =
        Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.grey);

    final TextStyle? descStyle = Theme.of(context).textTheme.titleMedium;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          tit,
          maxLines: 1,
          textAlign: TextAlign.start,
          style: titleStyle,
        ),
        Expanded(
          child: Text(
            desc,
            maxLines: 1,
            textAlign: TextAlign.end,
            style: descStyle,
          ),
        ),
      ],
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
