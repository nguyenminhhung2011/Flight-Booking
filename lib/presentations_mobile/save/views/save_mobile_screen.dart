import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/enum/tic_type_enum.dart';
import 'package:flight_booking/core/components/widgets/extension/color_extension.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/presentations_mobile/save/bloc/save_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/components/widgets/mobile/flight_custom.dart';
import '../../../core/components/widgets/mobile/item_view_custom.dart';
import '../../../core/components/widgets/mobile/page_view_custom.dart';
import '../../../core/components/widgets/mobile/tic_custom.dart';
import '../../../generated/l10n.dart';
import '../../routes_mobile.dart';

class SaveMobileScreen extends StatefulWidget {
  const SaveMobileScreen({super.key});

  @override
  State<SaveMobileScreen> createState() => _SaveMobileScreenState();
}

class _SaveMobileScreenState extends State<SaveMobileScreen> {
  Bloc get _bloc => BlocProvider.of<SaveBloc>(context);
  @override
  void initState() {
    _bloc.add(const SaveEvent.started());
    super.initState();
  }

  void _listenStateChange(BuildContext context, SaveState state) {
    state.maybeWhen(orElse: () {});
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SaveBloc, SaveState>(
      listener: _listenStateChange,
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).primaryColor,
            automaticallyImplyLeading: false,
            elevation: 0,
            title: Row(
              children: [
                const Spacer(),
                Text(
                  S.of(context).save,
                  style: context.titleMedium.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context)
                        .scaffoldBackgroundColor
                        .fontColorByBackgroundSecond,
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
          body: PageViewCustom(
            hPadding: 5.0,
            vPadding: 5.0,
            hMargin: 15.0,
            duration: 200,
            pageView: [
              PageViewModel(
                header: S.of(context).flight,
                body: ListView(
                  physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics(),
                  ),
                  children: [
                    FlightField(
                      items: [
                        for (int i = 0; i < 5; i++)
                          FlightStyle(
                            timeStart: DateTime.now(),
                            timeFinish: DateTime.now()
                                .add(const Duration(hours: 4, minutes: 50)),
                            startPlace: 'Comilia',
                            comePlace: 'Sylhet',
                            price: (i + 1) * 100,
                            onPress: () => context.openListPageWithRoute(
                                RoutesMobile.flightDetailMobile),
                          )
                      ],
                    ),
                  ],
                ),
              ),
              PageViewModel(
                header: S.of(context).ticket,
                body: ListView(
                  physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics(),
                  ),
                  children: [
                    TicField(
                      paddingLeft: 15.0,
                      paddingRight: 15.0,
                      items: <TicStyle>[
                        for (int i = 0; i < 10; i++)
                          TicStyle(
                            type: TicTypeEnum.businessClass,
                            airportFinish: 'Airport1',
                            airportStart: 'Airport2',
                            price: 212.00,
                            flight: 'Viet Name air',
                            placeEnd: 'Ho Chi Minh City',
                            placeStart: 'Ha Noi',
                            onPress: () => context.openListPageWithRoute(
                                RoutesMobile.ticketDetail),
                          )
                      ],
                    )
                  ],
                ),
              ),
              PageViewModel(
                header: S.of(context).hotel,
                body: ListView(
                  physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics(),
                  ),
                  children: [
                    ImageViewField(
                      imageViewType: ImageViewItemType.verticalView,
                      isOuttext: false,
                      marginLeft: 15.0,
                      spacingItem: 15.0,
                      heighItem: 220.0,
                      imageViews: [
                        for (int i = 0; i < 10; i++)
                          ImageViewStyle(
                            isShowRichText: true,
                            firstText: 'Huong Binh hotel',
                            secondText:
                                'Voi chuyen bay nay chung toi co the dua ban den bat cu noi nao ',
                            rating: 3.0,
                            richText1: '\$100 ',
                            richtText2: 'night',
                            onPress: () => context.openListPageWithRoute(
                              RoutesMobile.airportDetailMobile,
                            ),
                          )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
