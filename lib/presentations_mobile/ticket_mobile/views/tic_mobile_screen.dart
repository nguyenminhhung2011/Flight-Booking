import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/enum/tic_type_enum.dart';
import 'package:flight_booking/core/components/widgets/card_custom.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/components/widgets/mobile/appbar.dart';
import 'package:flight_booking/core/components/widgets/mobile/custom_template_screen_stack_scroll.dart';
import 'package:flight_booking/core/components/widgets/mobile/sort_button.dart';
import 'package:flight_booking/presentations/list_flight/views/widgets/dot_custom.dart';
import 'package:flight_booking/presentations_mobile/routes_mobile.dart';
import 'package:flight_booking/presentations_mobile/ticket_mobile/bloc/tic_mobile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/components/widgets/mobile/dropdown_button_custom.dart';
import '../../../core/components/widgets/mobile/tic_custom.dart';
import '../../../domain/entities/airport/airport.dart';
import '../../../generated/l10n.dart';
import '../../search_mobile/views/bottom_filter.dart';

const _hMargin = 15.0;

class TicMobileScreen extends StatefulWidget {
  const TicMobileScreen({super.key});

  @override
  State<TicMobileScreen> createState() => _TicMobileScreenState();
}

class _TicMobileScreenState extends State<TicMobileScreen> {
  TicMobileBloc get _bloc => BlocProvider.of<TicMobileBloc>(context);

  @override
  void initState() {
    super.initState();
    _bloc.add(const TicMobileEvent.started());
    _bloc.add(const TicMobileEvent.fetchTic());
  }

  void _onChangeAirportStart(Airport? airport) {
    _bloc.add(TicMobileEvent.changeAirportStart(airport: airport!));
  }

  void _onChangeAirportFinish(Airport? airport) {
    _bloc.add(TicMobileEvent.changeAirportFinish(airport: airport!));
  }

  void _onChangeTypeTic(TicTypeEnum? type) {
    _bloc.add(TicMobileEvent.changeTypeTic(type: type!));
  }

  void _listenStateChange(BuildContext context, TicMobileState state) {
    state.maybeWhen(orElse: () {});
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TicMobileBloc, TicMobileState>(
      listener: _listenStateChange,
      builder: (context, state) {
        final data = state.data;
        return CustomTemplateScreenStackScroll(
          appbar: AppbarCustom(
            backgroundColor: Theme.of(context).primaryColor,
            title: [
              IconButton(
                onPressed: () => context.pop(),
                icon: const Icon(Icons.arrow_back),
              ),
              Text(S.of(context).ticket, style: context.headerAppBarTextStyle),
              IconButton(onPressed: () {}, icon: const SizedBox())
            ].expand((element) => [element, const Spacer()]).toList()
              ..removeLast(),
          ),
          children: [
            SliverList(
              delegate: SliverChildListDelegate(
                <Widget>[
                  CardCustom(
                    isShowHeight: false,
                    margin: const EdgeInsets.symmetric(horizontal: _hMargin),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SortButton(
                              title: S.of(context).sortByPrice,
                              icon: Icons.price_change,
                              onPress: () {},
                            ),
                          ],
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Row(
                            children: [
                              Expanded(
                                child: DropdownButtonCustom<Airport?>(
                                  value: data.airportStart,
                                  onChange: _onChangeAirportStart,
                                  items: filterAirport
                                      .map<DropdownMenuItem<Airport>>(
                                        (Airport value) =>
                                            DropdownMenuItem<Airport>(
                                          value: value,
                                          child: Text(value.name),
                                        ),
                                      )
                                      .toList(),
                                ),
                              ),
                              const SizedBox(width: 10.0),
                              Expanded(
                                child: DropdownButtonCustom<Airport?>(
                                  value: data.airportFinish,
                                  onChange: _onChangeAirportFinish,
                                  items: filterAirport
                                      .map<DropdownMenuItem<Airport>>(
                                        (Airport value) =>
                                            DropdownMenuItem<Airport>(
                                          value: value,
                                          child: Text(value.name),
                                        ),
                                      )
                                      .toList(),
                                ),
                              ),
                            ],
                          ),
                        ),
                        DropdownButtonCustom<TicTypeEnum?>(
                          width: double.infinity,
                          value: data.typeTic,
                          items: [
                            TicTypeEnum.businessClass,
                            TicTypeEnum.economyClass,
                            TicTypeEnum.firstClass,
                            TicTypeEnum.premiumEconomyClass
                          ]
                              .map<DropdownMenuItem<TicTypeEnum>>(
                                  (TicTypeEnum value) => DropdownMenuItem(
                                        value: value,
                                        child: Row(
                                          children: [
                                            DotCustom(
                                              color: value.colorType,
                                              full: false,
                                            ),
                                            Text(' ${value.displayValue}')
                                          ],
                                        ),
                                      ))
                              .toList(),
                          onChange: _onChangeTypeTic,
                        ),
                      ]
                          .expand((element) =>
                              [element, const SizedBox(height: 10)])
                          .toList()
                        ..removeLast(),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: _hMargin),
                    child: Divider(),
                  ),
                  TicField(
                    paddingLeft: _hMargin,
                    paddingRight: _hMargin,
                    items: <TicStyle>[
                      for (int i = 0; i < 10; i++)
                        TicStyle(
                          type: data.typeTic,
                          airportFinish: 'Airport1',
                          airportStart: 'Airport2',
                          price: 212.00,
                          flight: 'Viet Name air',
                          placeEnd: 'Ho Chi Minh City',
                          placeStart: 'Ha Noi',
                          onPress: () => context
                              .openListPageWithRoute(RoutesMobile.ticketDetail),
                        )
                    ],
                  )
                ]
                    .expand((element) =>
                        [const SizedBox(height: _hMargin), element])
                    .toList(),
              ),
            )
          ],
        );
      },
    );
  }
}
