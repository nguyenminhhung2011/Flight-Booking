import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/widgets/extension/color_extension.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/components/widgets/mobile/button_custom.dart';
import 'package:flight_booking/core/components/widgets/mobile/custom_template_screen_stack_scroll.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:readmore/readmore.dart';

import '../../../core/components/widgets/card_custom.dart';
import '../../../core/components/widgets/mobile/appbar.dart';
import '../../../core/components/widgets/mobile/category_custom.dart';
import '../../../core/components/widgets/mobile/header_custom.dart';
import '../../../core/components/widgets/mobile/review_custom.dart';
import '../../../core/components/widgets/swiper_custom.dart';
import '../../../core/constant/constant.dart';
import '../../../generated/l10n.dart';

class HotelDetailScreen extends StatelessWidget {
  const HotelDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var headerStyle = Theme.of(context).textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.bold,
        color: Theme.of(context).scaffoldBackgroundColor.fontColorByBackground);
    var smallPrimaryText = context.titleSmall.copyWith(
      fontWeight: FontWeight.bold,
      color: Theme.of(context).primaryColor,
    );
    var titleBigStyle = Theme.of(context).textTheme.titleMedium;

    return CustomTemplateScreenStackScroll(
      bottomSheet: Container(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          width: double.infinity,
          height: 60.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Theme.of(context).cardColor,
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).shadowColor.withOpacity(0.1),
                blurRadius: 5.0,
              )
            ],
          ),
          child: Row(
            children: [
              const Spacer(),
              RichText(
                text: TextSpan(children: <TextSpan>[
                  TextSpan(
                    text: '\$120.000',
                    style: titleBigStyle!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  TextSpan(
                    text: '/night ',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ]),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: ButtonCustom(
                  onPress: () {},
                  width: 180,
                  height: double.infinity,
                  child: Text(S.of(context).bookingTime),
                ),
              )
            ],
          ),
        ),
      ),
      appbar: AppbarCustom(
        title: [
          IconButton(
            onPressed: () => context.pop(),
            icon: Icon(
              Icons.arrow_back,
              color: Theme.of(context)
                  .scaffoldBackgroundColor
                  .fontColorByBackground,
            ),
          ),
          Text(
            'Huong Binh',
            style: context.headerAppBarTextStyle.copyWith(
              color: Theme.of(context)
                  .scaffoldBackgroundColor
                  .fontColorByBackground,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const SizedBox(),
          ),
        ].expand((element) => [element, const Spacer()]).toList()
          ..removeLast(),
      ),
      children: [
        SliverList(
          delegate: SliverChildListDelegate(
            <Widget>[
              const SizedBox(height: 10.0),
              SwiperCustom(
                margin: const EdgeInsets.all(0.0),
                isShowSlideDot: false,
                height: 200,
                itemCount: mockDataImag.length,
                autoPlay: true,
                spacingItem: 10.0,
                itemBuilder: (index) => CardCustom(
                  margin: const EdgeInsets.symmetric(horizontal: 2.0),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(mockDataImag[index]),
                  )),
                ),
                swiperLayout: SwiperLayout.DEFAULT,
              ),
              const SizedBox(height: 20.0),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(15.0),
                margin: const EdgeInsets.symmetric(horizontal: 15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Theme.of(context).primaryColor.withOpacity(0.1),
                ),
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
                          style:
                              context.titleSmall.copyWith(color: Colors.grey),
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
              const SizedBox(height: 10.0),
              HeaderTextCustom(
                headerText: S.of(context).description,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
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
              const SizedBox(height: 10.0),
              HeaderTextCustom(
                headerText: S.of(context).facilities,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
                textStyle: headerStyle,
              ),
              CategoryField(
                categoryType: CategoryType.expanCategory,
                spacingItem: 10.0,
                marginLeft: 0.0,
                numberColumn: 1,
                isIconOut: true,
                categories: <CategoryStyle>[
                  ...mockFacilities.map(
                    (e) => CategoryStyle(
                      text: e['text'],
                      isIcon: true,
                      iconWidget: e['icon'],
                      color: e['color'],
                      iconSize: 35,
                      radius: 100,
                      paddingBottom: 15.0,
                      paddingRight: 15.0,
                      paddingTop: 15.0,
                      paddingLeft: 15.0,
                      textStyle:
                          Theme.of(context).textTheme.titleSmall!.copyWith(
                                fontWeight: FontWeight.w400,
                              ),
                      onPress: () => context.openListPageWithRoute(e['route']),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10.0),
              HeaderTextCustom(
                headerText: S.of(context).reviews,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
                textStyle: headerStyle,
              ),
              ReviewsField(
                spacingItem: 15.0,
                paddingTop: 0,
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
          ),
        ),
      ],
    );
  }
}
