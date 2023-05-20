import 'package:collection/collection.dart';
import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/widgets/extension/color_extension.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/components/widgets/mobile/appbar.dart';
import 'package:flight_booking/core/components/widgets/mobile/button_custom.dart';
import 'package:flight_booking/core/components/widgets/mobile/category_custom.dart';
import 'package:flight_booking/core/components/widgets/mobile/custom_template_screen_stack_scroll.dart';
import 'package:flight_booking/core/components/widgets/mobile/flight_custom.dart';
import 'package:flight_booking/core/components/widgets/mobile/header_custom.dart';
import 'package:flight_booking/core/constant/constant.dart';
import 'package:flight_booking/presentations_mobile/airport_detail_mobile/bloc/airport_detail_mobile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:readmore/readmore.dart';

import '../../../core/components/const/image_const.dart';
import '../../../core/components/widgets/mobile/image_preview_custom.dart';
import '../../../core/components/widgets/mobile/item_view_custom.dart';
import '../../../core/components/widgets/mobile/review_custom.dart';
import '../../../core/constant/handle_time.dart';
import '../../../generated/l10n.dart';
import '../../routes_mobile.dart';

class AirportDetailMobileScreen extends StatefulWidget {
  const AirportDetailMobileScreen({super.key});

  @override
  State<AirportDetailMobileScreen> createState() =>
      _AirportDetailMobileScreenState();
}

class _AirportDetailMobileScreenState extends State<AirportDetailMobileScreen> {
  AirportDetailMobileBloc get _bloc =>
      BlocProvider.of<AirportDetailMobileBloc>(context);

  @override
  void initState() {
    super.initState();
    _bloc.add(const AirportDetailMobileEvent.onStarted());
  }

  void onTabChange(int index) {
    _bloc.add(AirportDetailMobileEvent.changeTabView(index: index));
  }

  void _listenStateChange(
    BuildContext context,
    AirportDetailMobileState state,
  ) {
    state.maybeWhen(orElse: () {});
  }

  @override
  Widget build(BuildContext context) {
    var headerStyle = Theme.of(context)
        .textTheme
        .titleMedium!
        .copyWith(fontWeight: FontWeight.w600, color: Colors.grey);
    return BlocConsumer<AirportDetailMobileBloc, AirportDetailMobileState>(
      listener: _listenStateChange,
      builder: (context, state) {
        final data = state.data;
        return CustomTemplateScreenStackScroll(
          floatingButton: data.tabIndex == 2
              ? ButtonCustom(
                  radius: 5.0,
                  width: context.widthDevice * 0.4,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          S.of(context).writeReviews,
                          style: context.titleSmall.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      const SizedBox(width: 4),
                      const Icon(Icons.edit),
                    ],
                  ),
                  onPress: () {},
                )
              : null,
          appbar: AppbarCustom(
            pinned: true,
            backgroundColor: Theme.of(context).primaryColor,
            aftarImage: ImageConst.bacground,
            widgeExpanded: ImagePreviewCustom(images: mockDataImag),
            expandedHeight: context.heightDevice * 0.35,
            title: [
              IconButton(
                onPressed: () => context.pop(),
                icon: const Icon(Icons.arrow_back),
              ),
              const Spacer(),
            ],
          ),
          children: [
            SliverList(
              delegate: SliverChildListDelegate(
                <Widget>[
                  const SizedBox(height: 20.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CategoryField(
                        categoryType: CategoryType.textCategory,
                        marginLeft: 15.0,
                        marginTop: 10.0,
                        spacingItem: 15.0,
                        categories: [
                          S.of(context).detial,
                          S.of(context).flight,
                          S.of(context).reviews
                        ]
                            .mapIndexed(
                              (index, e) => CategoryStyle(
                                text: e,
                                isSelected: data.tabIndex == index,
                                onPress: () => onTabChange(index),
                                textStyle:
                                    Theme.of(context).textTheme.titleMedium,
                              ),
                            )
                            .toList(),
                      ),
                      [
                        // 🚑 Dumb code
                        _detailTab(headerStyle, context),
                        _flightTab(headerStyle),
                        _reviewsTab(headerStyle),
                      ][data.tabIndex],
                    ],
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _reviewsTab(TextStyle headerStyle) {
    return Column(
      children: [
        ReviewsField(
          spacingItem: 15.0,
          reviews: mockDataReviews
              .map(
                (e) => ReviewStyle(
                  title: e['reviews'],
                  userName: e['name'],
                  ratings: e['rating'] * 1.0,
                  isShowFav: true,
                  fav: 10,
                ),
              )
              .toList(),
        )
      ],
    );
  }

  Widget _flightTab(TextStyle headerStyle) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderTextCustom(
          headerText: S.of(context).upcoming,
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
          textStyle: headerStyle,
        ),
        FlightItem(
          margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
          item: FlightStyle(
            price: 20.0,
            timeStart: DateTime.now(),
            timeFinish: DateTime.now().add(const Duration(hours: 10)),
            startPlace: 'HaNoi',
            comePlace: 'HCM City',
            onPress: () {},
          ),
        ),
        const SizedBox(height: 5.0),
        HeaderTextCustom(
          headerText: S.of(context).landingFlight,
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
          textStyle: headerStyle,
        ),
        FlightField(
          type: FlightType.horizontalFlight,
          paddingBottom: 10.0,
          paddingLeft: 15.0,
          items: [
            for (int i = 0; i < 5; i++)
              FlightStyle(
                timeStart: DateTime.now(),
                timeFinish:
                    DateTime.now().add(const Duration(hours: 4, minutes: 50)),
                startPlace: 'Comilia',
                comePlace: 'Sylhet',
                price: (i + 1) * 100,
                shadowRadius: 5.0,
                shadowColorPercent: 0.2,
                shadowOffsetX: 0,
                shadowOffsetY: 5.0,
                onPress: () => context
                    .openListPageWithRoute(RoutesMobile.flightDetailMobile),
              )
          ],
        ),
        const SizedBox(height: 5.0),
        HeaderTextCustom(
          headerText: S.of(context).departureFlight,
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
          textStyle: headerStyle,
        ),
        FlightField(
          type: FlightType.horizontalFlight,
          paddingBottom: 10.0,
          paddingLeft: 15.0,
          items: [
            for (int i = 0; i < 5; i++)
              FlightStyle(
                timeStart: DateTime.now(),
                timeFinish:
                    DateTime.now().add(const Duration(hours: 4, minutes: 50)),
                startPlace: 'Comilia',
                comePlace: 'Sylhet',
                price: (i + 1) * 100,
                shadowRadius: 5.0,
                shadowColorPercent: 0.2,
                shadowOffsetX: 0,
                shadowOffsetY: 5.0,
                onPress: () => context
                    .openListPageWithRoute(RoutesMobile.flightDetailMobile),
              )
          ],
        ),
        const SizedBox(height: 40.0),
      ],
    );
  }

  Widget _detailTab(TextStyle headerStyle, BuildContext context) {
    var smallPrimaryText = context.titleSmall.copyWith(
      fontWeight: FontWeight.bold,
      color: Theme.of(context).primaryColor,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Viet Nam air',
                      maxLines: 1,
                      style: context.headlineSmall.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context)
                            .scaffoldBackgroundColor
                            .fontColorByBackground,
                      ),
                    ),
                  ),
                  Text(
                    '⭐ 4.9(5,6k reviews)',
                    style: context.titleSmall.copyWith(color: Colors.grey),
                  ),
                ],
              ),
              Text(
                '🗺️ Thi Xa An khe, tinh Gia Lai',
                style: context.titleSmall.copyWith(
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: Divider(),
        ),
        HeaderTextCustom(
          headerText: S.of(context).description,
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
          textStyle: headerStyle,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: ReadMoreText(
            'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
            trimLines: 2,
            colorClickableText: Theme.of(context).primaryColor,
            trimMode: TrimMode.Line,
            trimCollapsedText: 'Show more',
            trimExpandedText: 'Show less',
            lessStyle: smallPrimaryText,
            moreStyle: smallPrimaryText,
          ),
        ),
        const SizedBox(height: 5.0),
        HeaderTextCustom(
          headerText: S.of(context).timeActivity,
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          textStyle: headerStyle,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(text: S.of(context).open, style: smallPrimaryText),
                TextSpan(
                  text: ' ${getjmFormat(DateTime.now())}',
                  style: context.titleSmall,
                ),
                const TextSpan(text: ' - '),
                TextSpan(text: S.of(context).close, style: smallPrimaryText),
                TextSpan(
                  text: ' ${getjmFormat(DateTime.now())}',
                  style: context.titleSmall,
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: 5.0),
        HeaderTextCustom(
          headerText: S.of(context).airportContact,
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          textStyle: headerStyle,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Wrap(
            children: [
              'Viet Nam air',
              'Super Airport',
              'Pig Airport',
              'Cat Airport'
            ]
                .map(
                  (e) => Padding(
                    padding: const EdgeInsets.only(right: 10.0, bottom: 3.0),
                    child: Text(
                      e,
                      style: smallPrimaryText.copyWith(
                        decoration: TextDecoration.underline,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
        HeaderTextCustom(
          headerText: S.of(context).anotherAirport,
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          textStyle: headerStyle,
        ),
        ImageViewField(
          imageViewType: ImageViewItemType.horizontalView,
          isOuttext: false,
          marginLeft: 15.0,
          spacingItem: 15.0,
          heighItem: 220.0,
          imageViews: [
            for (int i = 0; i < 10; i++)
              ImageViewStyle(
                firstText: 'VietName air',
                secondText:
                    'Voi chuyen bay nay chung toi co the dua ban den bat cu noi nao ',
                rating: 3.0,
              )
          ],
        ),
        const SizedBox(height: 20.0),
      ],
    );
  }
}
