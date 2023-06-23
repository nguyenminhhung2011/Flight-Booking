import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/const/image_const.dart';
import 'package:flight_booking/core/components/widgets/appbar_widget.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/components/widgets/mobile/appbar.dart';
import 'package:flight_booking/core/constant/constant.dart';
import 'package:flutter/material.dart';
import '../../../core/components/widgets/mobile/category_custom.dart';
import '../../../core/components/widgets/mobile/custom_template_screen_stack_scroll.dart';
import '../../../core/components/widgets/mobile/header_custom.dart';
import '../../../core/components/widgets/mobile/item_view_custom.dart';
import '../../../generated/l10n.dart';

class HomeMobileScreen extends StatefulWidget {
  const HomeMobileScreen({super.key});

  @override
  State<HomeMobileScreen> createState() => _HomeMobileScreenState();
}

class _HomeMobileScreenState extends State<HomeMobileScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomTemplateScreenStackScroll(
      appbar: AppbarCustom(
        pinned: true,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        aftarImage: ImageConst.bacground,
        expandedHeight: context.heightDevice * 0.4,
        title: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          const Spacer(),
          const AvatarWidget(
            imageUrl: ImageConst.avatarDefaults,
            width: 40,
          ),
          const SizedBox(width: 10.0),
        ],
      ),
      children: [
        SliverList(
          delegate: SliverChildListDelegate(
            <Widget>[
              HeaderTextCustom(
                headerText: S.of(context).goTour,
                textStyle: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
              ),
              HeaderTextCustom(
                headerText: S.of(context).sologan,
                textStyle: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(fontWeight: FontWeight.w300),
              ),
              const SizedBox(height: 5.0),
              CategoryField(
                categoryType: CategoryType.expanCategory,
                spacingItem: 10.0,
                marginLeft: 0.0,
                numberColumn: 1,
                isIconOut: true,
                categories: <CategoryStyle>[
                  ...mockCategory.map(
                    (e) => CategoryStyle(
                      text: e['text'],
                      icon: e['icon'],
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
              const SizedBox(height: 5.0),
              HeaderTextCustom(
                headerText: S.of(context).recomendAirport,
                textStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                isShowSeeMore: true,
                onPress: () {},
              ),
              ImageViewField(
                imageViewType: ImageViewItemType.horizontalView,
                isOuttext: true,
                marginLeft: 15.0,
                spacingItem: 15.0,
                imageViews: [
                  for (int i = 0; i < 10; i++)
                    ImageViewStyle(
                      firstText: 'VietName air',
                      secondText: 'sfsdfsdfsdfhsdbfsdfsdfsdnfsdf',
                      rating: 3.0,
                    )
                ],
              ),
              HeaderTextCustom(
                headerText: S.of(context).recomendAirport,
                textStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                isShowSeeMore: true,
                onPress: () {},
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
              const SizedBox(height: 69.0),
            ]
                .expand((element) => [element, const SizedBox(height: 5.0)])
                .toList()
              ..removeLast(),
          ),
        ),
      ],
    );
  }
}
