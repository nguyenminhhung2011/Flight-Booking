// ignore_for_file: deprecated_member_use

import 'dart:developer';

import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/const/image_const.dart';
import 'package:flight_booking/core/components/enum/search_enum.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/components/widgets/extension/string_extension.dart';
import 'package:flight_booking/core/components/widgets/mobile/calendar_custom.dart';
import 'package:flight_booking/presentations_mobile/list_flight_mobile/bloc/flight_mobile_bloc.dart';
import 'package:flight_booking/presentations_mobile/routes_mobile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/components/widgets/mobile/button_custom.dart';
import '../../../core/components/widgets/mobile/flight_custom.dart';
import '../../../generated/l10n.dart';

class ListFlightMobileScreen extends StatefulWidget {
  const ListFlightMobileScreen({super.key});

  @override
  State<ListFlightMobileScreen> createState() => _ListFlightMobileScreenState();
}

class _ListFlightMobileScreenState extends State<ListFlightMobileScreen> {
  FlightMobileBloc get _bloc => BlocProvider.of<FlightMobileBloc>(context);
  final _controller = ScrollController();

  @override
  void initState() {
    _bloc.add(const FlightMobileEvent.fetchFlight(pageSize: 10, cursor: 0));
    super.initState();
    _controller.addListener(_listenController);
  }

  @override
  void dispose() {
    _controller.removeListener(_listenController);
    _controller.dispose();
    super.dispose();
  }

  void _listenController() {
    if (_controller.position.atEdge) {
      if (_controller.position.pixels == _controller.position.maxScrollExtent) {
        _bloc.add(FlightMobileEvent.fetchFlight(
          pageSize: 10,
          cursor: _bloc.state.data.cursor + 1,
        ));
      }
      // bool isTop =
      //     _controller.position.pixels == _controller.position.maxScrollExtent;
      // if (isTop) {
      //   // _bloc.add(const AirportMobileEvent.fetchAirport(pageSize: 10));
      // } else {
      //   if (!_bloc.state.isLoading) {

      //   }
      // }
    }
  }

  void _onGetFlightByDate(DateTime date) {
    _bloc.add(FlightMobileEvent.getFlightByDate(
      month: date.month,
      day: date.day,
      year: date.year,
    ));
  }

  void _onRefresh() {
    _bloc.add(const FlightMobileEvent.fetchFlight(pageSize: 10, cursor: 0));
  }

  void _listenStateChange(_, FlightMobileState state) {
    state.maybeWhen(
      fetchFlightsFailed: (data, error) {
        log(error);
      },
      orElse: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    final heightDevice = MediaQuery.of(context).size.height;
    return BlocConsumer<FlightMobileBloc, FlightMobileState>(
      listener: _listenStateChange,
      builder: (context, state) {
        return Scaffold(
          floatingActionButton: ButtonCustom(
            radius: 5.0,
            width: context.widthDevice * 0.4,
            onPress: _onRefresh,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Text(
                    S.of(context).refresh,
                    style: context.titleSmall.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                const SizedBox(width: 3),
                const Icon(Icons.refresh),
              ],
            ),
          ),
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Theme.of(context).primaryColor,
            title: Row(
              children: [
                IconButton(
                  onPressed: () => context.pop(),
                  icon: const Icon(Icons.arrow_back),
                ),
                Text(
                  S.of(context).flight,
                  style: context.headerAppBarTextStyle,
                ),
                IconButton(
                  onPressed: () => context.openPageWithRouteAndParams(
                    RoutesMobile.searchMobile,
                    SearchEnum.flightSearch,
                  ),
                  icon: SvgPicture.asset(
                    ImageConst.searchIcon,
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                ),
              ].expand((element) => [element, const Spacer()]).toList()
                ..removeLast(),
            ),
          ),
          body: ListView(
            controller: _controller,
            physics: const BouncingScrollPhysics(),
            children: [
              CalendarCustom(
                type: CalendarType.timelineCalendar,
                headerText: S.of(context).listFlights,
                onSelectedDate: _onGetFlightByDate,
                style: CalenderStyleCustom(),
              ),
              const SizedBox(height: 20.0),
              Container(
                constraints: BoxConstraints(minHeight: heightDevice),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(25.0),
                  ),
                  color: Theme.of(context).primaryColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (state.data.listFlight.isNotEmpty)
                      FlightField(
                        items: [
                          ...state.data.listFlight.map((e) => FlightStyle(
                                timeStart: e.timeStart,
                                timeFinish: e.timeEnd,
                                startPlace:
                                    e.departureAirport.location.subString,
                                comePlace: e.arrivalAirport.location.subString,
                                price: 100,
                                onPress: () =>
                                    context.openPageWithRouteAndParams(
                                  RoutesMobile.flightDetailMobile,
                                  e.id,
                                ),
                              ))

                          // for (int i = 0; i < 5; i++)
                        ],
                      ),
                    if (state.isLoading) ...[
                      const SizedBox(height: 10.0),
                      Center(
                        child: CircularProgressIndicator(
                          color: Theme.of(context).cardColor,
                        ),
                      ),
                      const SizedBox(height: 10.0),
                    ],
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
