import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/const/image_const.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/components/widgets/mobile/button_custom.dart';
import 'package:flight_booking/core/components/widgets/mobile/custom_template_screen_stack_scroll.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import '../../../core/components/widgets/mobile/appbar.dart';
import '../../../core/components/widgets/mobile/category_custom.dart';
import '../../../core/components/widgets/mobile/header_custom.dart';
import '../../../core/components/widgets/mobile/review_custom.dart';
import '../../../core/constant/constant.dart';
import '../../../generated/l10n.dart';

class HotelDetailScreen extends StatelessWidget {
  const HotelDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var headerStyle = Theme.of(context)
        .textTheme
        .titleMedium!
        .copyWith(fontWeight: FontWeight.bold, color: Colors.white);
    var smallPrimaryText = context.titleSmall.copyWith(
      fontWeight: FontWeight.bold,
      color: Theme.of(context).primaryColor,
    );
    var titleBigStyle = context.titleMedium.copyWith(color: Colors.white);

    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(ImageConst.imageDe1),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(25.0),
            ),
            gradient: LinearGradient(
              end: Alignment.bottomCenter,
              colors: [
                Colors.black26,
                Colors.black45,
                Colors.black87,
              ],
            ),
          ),
        ),
        CustomTemplateScreenStackScroll(
          color: Colors.transparent,
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
                        style: titleBigStyle.copyWith(
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
            expandedHeight: context.heightDevice * 0.4,
            backgroundColor: Colors.transparent,
            title: [
              IconButton(
                onPressed: () => context.pop(),
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
              Text(
                'Huong Binh',
                style: context.headerAppBarTextStyle.copyWith(
                  color: Colors.white,
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
            SliverToBoxAdapter(
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(25.0),
                  ),
                  gradient: LinearGradient(
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black45,
                      Colors.black54,
                      Colors.black87,
                    ],
                  ),
                ),
                constraints: BoxConstraints(minHeight: context.heightDevice),
                width: double.infinity,
                child: _mainField(context, headerStyle, smallPrimaryText),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Column _mainField(
      BuildContext context, TextStyle headerStyle, TextStyle smallPrimaryText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
                          fontWeight: FontWeight.w500, color: Colors.white),
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
        const SizedBox(height: 10.0),
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
            style: context.titleSmall
                .copyWith(color: Colors.white, fontWeight: FontWeight.w400),
          ),
        ),
        const SizedBox(height: 10.0),
        HeaderTextCustom(
          headerText: S.of(context).facilities,
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
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
                textStyle: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(fontWeight: FontWeight.w400, color: Colors.white),
                onPress: () => context.openListPageWithRoute(e['route']),
              ),
            )
          ],
        ),
        const SizedBox(height: 10.0),
        HeaderTextCustom(
          headerText: S.of(context).gallery,
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
          textStyle: headerStyle,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 15.0),
              ...mockDataImag
                  .map(
                    (e) => Container(
                      height: 140,
                      width: context.widthDevice * 0.4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(e),
                          )),
                    ),
                  )
                  .expand((element) => [element, const SizedBox(width: 10.0)])
            ],
          ),
        ),
        const SizedBox(height: 10.0),
        HeaderTextCustom(
          headerText: S.of(context).reviews,
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
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
                  reviewsStyle:
                      context.titleSmall.copyWith(color: Colors.white),
                  fav: 10,
                ),
              )
              .toList(),
        )
      ],
    );
  }
}
