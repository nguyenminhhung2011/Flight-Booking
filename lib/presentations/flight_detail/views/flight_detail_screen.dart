import 'dart:developer';

import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/enum/item_view_enum.dart';
import 'package:flight_booking/core/components/enum/tic_type_enum.dart';
import 'package:flight_booking/core/components/widgets/extension/interger_extension.dart';
import 'package:flight_booking/core/components/widgets/extension/string_extension.dart';
import 'package:flight_booking/core/components/widgets/mobile/button_custom.dart';
import 'package:flight_booking/core/constant/handle_time.dart';
import 'package:flight_booking/domain/entities/seat_selected/seat_selected.dart';
import 'package:flight_booking/presentations/flight_detail/bloc/flight_detail_bloc.dart';
import 'package:flight_booking/presentations/flight_detail/bloc/flight_detail_model_state.dart';
import 'package:flight_booking/presentations/flight_detail/views/widgets/chair_button.dart';
import 'package:flight_booking/presentations/flight_detail/views/widgets/employee_column.dart';
import 'package:flight_booking/presentations/flight_detail/views/widgets/fast_view_tic.dart';
import 'package:flight_booking/presentations/flight_detail/views/widgets/icon_button.dart';
import 'package:flight_booking/presentations/flight_detail/views/widgets/tic_column.dart';
import 'package:flight_booking/presentations/flight_detail/views/widgets/tic_column_list_view.dart';
import 'package:flight_booking/presentations/list_flight/views/widgets/rich_text_custom.dart';
import 'package:flight_booking/presentations_mobile/flight_history_detail/views/flight_history_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/customer/customer.dart';
import '../../../domain/entities/flight/flight.dart';
import '../../../domain/entities/ticket/ticket.dart';
import '../../../domain/entities/ticket/ticket_information.dart';
import '../../../generated/l10n.dart';
import '../../list_flight/views/widgets/dot_custom.dart';

class FlightDetailScreen extends StatefulWidget {
  const FlightDetailScreen({super.key});

  @override
  State<FlightDetailScreen> createState() => _FlightDetailScreenState();
}

class _FlightDetailScreenState extends State<FlightDetailScreen> {
  FlightDetailBloc get _bloc => BlocProvider.of<FlightDetailBloc>(context);
  FlightDetailState get _state => _bloc.state;
  FlightDetailModelState get _data => _state.data;
  Map<int, TicketInformation> get _ticInformation => _data.ticInformation;
  List<SeatSelected> get _seatsSelected => _data.chairsSelected;
  List<Ticket> get _listTic => _data.tics;
  Flight? get _flight => _data.flight;
  String get _locationDeparture => _flight?.departureAirport.location ?? '';
  String get _locationArrival => _flight?.arrivalAirport.location ?? '';
  @override
  void initState() {
    super.initState();
    _bloc.add(const FlightDetailEvent.getFlightById());
  }

  void _changeItemView(ItemViewEnum itemView) {
    _bloc.add(FlightDetailEvent.changeTypeView(itemView));
  }

  void _showMoreInformation() {
    _bloc.add(const FlightDetailEvent.showMoreInformation());
  }

  void _onSelectedSeat(int seatIndex, TicketInformation tic) {
    _bloc.add(FlightDetailEvent.selectedSeat(
      ticInformation: tic,
      seatIndex: seatIndex,
    ));
  }

  void _onShowSelectedCustomer() async {
    final result = await context.showSelectedCustomer();
    if (result != null && result is Customer) {
      _bloc.add(FlightDetailEvent.updateCustomerSelected(customer: result));
    }
  }

  void _listenStateChanged(_, FlightDetailState state) {
    state.whenOrNull(getFlightByIdSuccess: (data) {
      _bloc.add(const FlightDetailEvent.getTicInformation());
    }, getTicInformationSuccess: (data) {
      _bloc.add(const FlightDetailEvent.getTicsByFlightId());
    }, getTicsByFlightIdSuccess: (data) {
      _bloc.add(const FlightDetailEvent.started());
    }, getTicsByFlightIdFailed: (data, error) {
      log(error);
    }, getFlightByIdFailed: (data, error) {
      log(error);
    }, getTicInformationFailed: (data, error) {
      log(error);
    });
  }

  void _showDialogSelectScott() async {
    final show =
        await context.showBookTicketDialog(_seatsSelected, _bloc.flightId);
    if (show) {
      //do something
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FlightDetailBloc, FlightDetailState>(
      listener: _listenStateChanged,
      builder: (context, state) {
        return Scaffold(
          floatingActionButton: Breakpoints.small.isActive(context)
              ? IconButton(
                  color: Theme.of(context).primaryColor,
                  onPressed: () {},
                  icon: const Icon(Icons.airplanemode_active),
                )
              : const SizedBox(),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          body: Row(
            children: [
              _main(context, state.data),
              Breakpoints.large.isActive(context)
                  ? _sup(context, state.data.animation)
                  : const SizedBox(),
            ],
          ),
        );
      },
    );
  }

  Container _sup(BuildContext context, double animation) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.only(top: 10.0, right: 10.0, bottom: 10.0),
      width: 400,
      height: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Theme.of(context).primaryColor.withOpacity(0.2),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor.withOpacity(0.1),
          )
        ],
      ),
      child: ListView(
        children: [
          const FastViewTic(
            ticType: TicTypeEnum.businessClass,
          ),
          AnimatedContainer(
            duration: const Duration(seconds: 1),
            height: animation,
          ),
          Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.airplanemode_on,
              color: Theme.of(context).primaryColor,
            ),
          ),
          if (_ticInformation.isNotEmpty)
            _shadowBox(
              context,
              Column(
                children: [
                  ..._ticInformation.entries
                      .map(
                        (e) => Wrap(
                          children: [
                            for (int i = 0; i < e.value.quantity; i++)
                              ChairButton(
                                text: '${e.value.seatHeader}$i',
                                check: _listTic
                                    .map(
                                        (item) => '${item.type} - ${item.seat}')
                                    .contains(
                                      '${e.value.id.ticketType} - $i',
                                    ),
                                onPress: () => _onSelectedSeat(i, e.value),
                              )
                          ],
                        ),
                      )
                      .expand((element) => [
                            element,
                            const SizedBox(height: 5.0),
                            const DividerCustomWithAirplane(),
                            const SizedBox(height: 5.0)
                          ])
                      .toList()
                    ..removeLast(),
                ],
              ),
            ),
          ButtonCustom(
            onPress: _showDialogSelectScott,
            height: 45.0,
            child: Text(S.of(context).bookingTime),
          )
        ].expand((element) => [element, const SizedBox(height: 10.0)]).toList(),
      ),
    );
  }

  Container _shadowBox(BuildContext context, Widget widget) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Theme.of(context).cardColor,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor.withOpacity(0.1),
            blurRadius: 10.0,
          ),
        ],
      ),
      child: widget,
    );
  }

  Expanded _main(BuildContext context, FlightDetailModelState data) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Theme.of(context).primaryColor.withOpacity(0.1),
        ),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.airplane_ticket,
                  color: Theme.of(context).primaryColor,
                  size: 20.0,
                ),
                Text(
                  ' ${S.of(context).flightDetail}',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                )
              ],
            ),
            _informationOfFlight(context),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButtonCustom(
                  iconData: Icons.list,
                  onPress: () => _changeItemView(ItemViewEnum.listView),
                  isSec: data.itemView == ItemViewEnum.listView,
                ),
                IconButtonCustom(
                  iconData: Icons.grid_view_sharp,
                  onPress: () => _changeItemView(ItemViewEnum.gridView),
                  isSec: data.itemView == ItemViewEnum.gridView,
                ),
                const SizedBox(width: 20.0),
              ],
            ),
            (data.itemView.isGridView)
                ? _gridCustomerView(context)
                : _listCustomerView(context),
          ]
              .expand((element) => [element, const SizedBox(height: 10.0)])
              .toList(),
        ),
      ),
    );
  }

  Column _listCustomerView(BuildContext context) {
    return const Column(
      children: [
        TicColumnListView(
          ticType: TicTypeEnum.businessClass,
          count: 10,
        ),
        TicColumnListView(
          ticType: TicTypeEnum.businessClass,
          count: 10,
        ),
        TicColumnListView(
          ticType: TicTypeEnum.premiumEconomyClass,
          count: 10,
        ),
        TicColumnListView(
          ticType: TicTypeEnum.firstClass,
          count: 10,
        ),
      ],
    );
  }

  SingleChildScrollView _gridCustomerView(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(width: 20.0),
          ..._ticInformation.entries.map<Widget>((e) {
            final ticType = e.value.id.ticketType.ticClass;
            return TicColumn(
              ticInformation: e.value,
              tics: _listTic
                  .where((element) => element.type == e.value.id.ticketType)
                  .toList(),
              header: ticType.displayValue,
              color: ticType.colorType ?? Theme.of(context).primaryColor,
            );
          })
        ].expand((element) => [element, const SizedBox(width: 10.0)]).toList(),
      ),
    );
  }

  Widget _informationOfFlight(BuildContext context) {
    if (_state.loadingGetFlight) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (_flight == null) {
      return const SizedBox();
    }
    final durationTime = durationBetweenDate(
        _flight?.timeStart ?? DateTime.now(),
        _flight?.timeEnd ?? DateTime.now());
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      padding: const EdgeInsets.all(15.0),
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(width: 1, color: Theme.of(context).primaryColor),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor.withOpacity(0.1),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.airplanemode_active_sharp,
                color: Theme.of(context).primaryColor,
              ),
              Text(
                ' ${_flight?.airline.airlineName}',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              )
            ],
          ),
          const SizedBox(height: 10.0),
          SizedBox(
            width: double.infinity,
            height: 80,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _timePlace(
                  context,
                  getjmFormat(_flight?.timeStart ?? DateTime.now()),
                  _locationDeparture.subString,
                ),
                SizedBox(
                  width: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '${durationTime.inHours}h ${durationTime.inMinutes - durationTime.inHours * 60}m',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(fontWeight: FontWeight.w400),
                      ),
                      Row(
                        children: [
                          const DotCustom(color: Colors.blue, full: false),
                          Expanded(
                            child: Container(
                              height: 1,
                              decoration: DottedDecoration(
                                color: Theme.of(context).dividerColor,
                                shape: Shape.line,
                                linePosition: LinePosition.bottom,
                              ),
                            ),
                          ),
                          const DotCustom(color: Colors.blue, full: true),
                        ],
                      ),
                      Text(
                        S.of(context).directFlight,
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                _timePlace(
                  context,
                  getjmFormat(_flight?.timeEnd ?? DateTime.now()),
                  _locationArrival.substring(
                    0,
                    !_locationArrival.contains(',')
                        ? _locationArrival.length
                        : _locationArrival.indexOf(','),
                  ),
                ),
              ]
                  .expand((element) => [element, const SizedBox(width: 10.0)])
                  .toList()
                ..removeLast(),
            ),
          ),
          const SizedBox(height: 10.0),
          ButtonCustom(
            enableWidth: false,
            onPress: _showMoreInformation,
            radius: 5,
            child: Text(
              _data.showMoreInfor
                  ? S.of(context).hideInformation
                  : S.of(context).showMoreInformation,
            ),
          ),
          const SizedBox(height: 10.0),
          _data.showMoreInfor
              ? _moreInformationField(context)
              : const SizedBox(),
        ],
      ),
    );
  }

  SizedBox _moreInformationField(BuildContext context) {
    final durationTime = durationBetweenDate(
        _flight?.timeStart ?? DateTime.now(),
        _flight?.timeEnd ?? DateTime.now());
    return SizedBox(
      width: double.infinity,
      height: 300.0,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichTextCustom(
                firstText: getjmFormat(_flight?.timeStart ?? DateTime.now()),
                secondText:
                    ' ${getYmdFormat(_flight?.timeStart ?? DateTime.now())}',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Row(
                children: [
                  Icon(
                    Icons.airplane_ticket,
                    color: Theme.of(context).primaryColor,
                    size: 15.0,
                  ),
                  Text(
                    '${durationTime.inHours}h ${durationTime.inMinutes - durationTime.inHours * 60}m',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              RichTextCustom(
                firstText: getjmFormat(_flight?.timeEnd ?? DateTime.now()),
                secondText:
                    ' ${getYmdFormat(_flight?.timeEnd ?? DateTime.now())}',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ],
          ),
          Column(
            children: [
              const DotCustom(color: Colors.blue, full: false),
              Expanded(
                child: Container(
                  height: 1,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 15.0,
                  ),
                  decoration: DottedDecoration(
                    color: Theme.of(context).dividerColor,
                    shape: Shape.line,
                    linePosition: LinePosition.left,
                  ),
                ),
              ),
              const DotCustom(color: Colors.blue, full: true),
            ],
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichTextCustom(
                  firstText: '${_flight?.departureAirport.name ?? ''} ',
                  secondText: _locationDeparture,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                _gridEmployeeView(),
                RichTextCustom(
                  firstText: '${_flight?.arrivalAirport.name ?? ''} ',
                  secondText: _locationArrival,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Expanded _gridEmployeeView() {
    return Expanded(
        child: LayoutBuilder(
      builder: (context, constraints) => Container(
        width: double.infinity,
        padding: const EdgeInsets.all(15.0),
        margin: const EdgeInsets.symmetric(
          vertical: 5.0,
        ),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(width: 1, color: Theme.of(context).primaryColor),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              children: [
                RichTextCustom(
                  firstText: '${S.of(context).customer}: ',
                  secondText: S.of(context).numberCustomer(100),
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(width: 20.0),
                RichTextCustom(
                  firstText: '${S.of(context).employee}: ',
                  secondText: S.of(context).numberEmployee(100),
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  EmployeeColumn(
                    header: S.of(context).flightAttendant,
                    count: 1,
                  ),
                  EmployeeColumn(
                    header: S.of(context).cabinCrew,
                    count: 2,
                  ),
                  EmployeeColumn(
                    header: S.of(context).pilot,
                    count: 3,
                  ),
                  EmployeeColumn(
                    header: S.of(context).firstOfficer,
                    count: 4,
                  ),
                ]
                    .expand((element) => [
                          element,
                          const SizedBox(
                            width: 10.0,
                          )
                        ])
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  Column _timePlace(BuildContext context, String time, String place) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          time,
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                fontWeight: FontWeight.w500,
              ),
        ),
        const SizedBox(height: 5.0),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Text(
            place,
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
