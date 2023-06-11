// ignore_for_file: deprecated_member_use

import 'dart:developer';

import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/enum/search_enum.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/components/widgets/mobile/appbar.dart';
import 'package:flight_booking/core/components/widgets/mobile/custom_template_screen_stack_scroll.dart';
import 'package:flight_booking/presentations_mobile/list_airport_mobile/bloc/airport_mobile_bloc.dart';
import 'package:flight_booking/presentations_mobile/routes_mobile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/components/const/image_const.dart';
import '../../../core/components/widgets/mobile/item_view_custom.dart';
import '../../../core/components/widgets/mobile/sort_button.dart';
import '../../../generated/l10n.dart';

class ListAirportMobileScreen extends StatefulWidget {
  const ListAirportMobileScreen({super.key});

  @override
  State<ListAirportMobileScreen> createState() =>
      _ListAirportMobileScreenState();
}

class _ListAirportMobileScreenState extends State<ListAirportMobileScreen> {
  AirportMobileBloc get _bloc => BlocProvider.of<AirportMobileBloc>(context);

  @override
  void initState() {
    _bloc.add(const AirportMobileEvent.started());
    _bloc.add(const AirportMobileEvent.fetchAirport(pageSize: 25));
    super.initState();
  }

  void _listenStateChange(BuildContext context, AirportMobileState state) {
    state.maybeWhen(
      fetchAirportsSuccess: (data) {},
      fetchAirportsFailed: (data, error) {
        log(error);
      },
      orElse: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AirportMobileBloc, AirportMobileState>(
      listener: _listenStateChange,
      builder: (context, state) {
        final airports = state.data.listAirport;
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return CustomTemplateScreenStackScroll(
          appbar: AppbarCustom(
            backgroundColor: Theme.of(context).primaryColor,
            title: [
              IconButton(
                onPressed: () => context.pop(),
                icon: const Icon(Icons.arrow_back),
              ),
              Text(
                S.of(context).listAirports,
                style: context.headerAppBarTextStyle,
              ),
              IconButton(
                onPressed: () => context.openPageWithRouteAndParams(
                    RoutesMobile.searchMobile, SearchEnum.airportSearch),
                icon: SvgPicture.asset(
                  ImageConst.searchIcon,
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
              ),
            ].expand((element) => [element, const Spacer()]).toList()
              ..removeLast(),
          ),
          children: [
            SliverList(
              delegate: SliverChildListDelegate(
                <Widget>[
                  const SizedBox(height: 15.0),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(width: 15.0),
                        SortButton(
                          title: S.of(context).sortByRating,
                          icon: Icons.star,
                          onPress: () {},
                        ),
                        const SizedBox(width: 8.0),
                        SortButton(
                          title: S.of(context).sortByFlights,
                          icon: Icons.airplane_ticket,
                          onPress: () {},
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Divider(),
                  ),
                  ImageViewField(
                      imageViewType: ImageViewItemType.verticalView,
                      isOuttext: false,
                      marginLeft: 15.0,
                      spacingItem: 15.0,
                      heighItem: 220.0,
                      imageViews: airports
                          .map((airport) => ImageViewStyle(
                                firstText: airport.name,
                                secondText: airport.location,
                                isShowRichText: true,
                                rating: 3.0,
                                richText1: '100 flights',
                                richtText2: '20 flights left',
                                imageView: airport.image,
                                onPress: () => context.openListPageWithRoute(
                                  RoutesMobile.airportDetailMobile,
                                ),
                              ))
                          .toList()),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
