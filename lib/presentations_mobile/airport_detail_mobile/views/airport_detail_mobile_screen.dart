import 'package:collection/collection.dart';
import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/widgets/extension/color_extension.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/components/widgets/mobile/appbar.dart';
import 'package:flight_booking/core/components/widgets/mobile/category_custom.dart';
import 'package:flight_booking/core/components/widgets/mobile/custom_template_screen_stack_scroll.dart';
import 'package:flight_booking/core/components/widgets/mobile/header_custom.dart';
import 'package:flight_booking/core/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../core/components/const/image_const.dart';
import '../../../core/components/widgets/mobile/item_view_custom.dart';
import '../../../generated/l10n.dart';

class AirportDetailMobileScreen extends StatefulWidget {
  const AirportDetailMobileScreen({super.key});

  @override
  State<AirportDetailMobileScreen> createState() =>
      _AirportDetailMobileScreenState();
}

class _AirportDetailMobileScreenState extends State<AirportDetailMobileScreen> {
  final ValueNotifier<int> tabView = ValueNotifier<int>(0);
  void onTabChange(int index) {
    tabView.value = index;
  }

  @override
  Widget build(BuildContext context) {
    var headerStyle = Theme.of(context)
        .textTheme
        .titleMedium!
        .copyWith(fontWeight: FontWeight.w600, color: Colors.grey);
    return CustomTemplateScreenStackScroll(
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
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                child: Divider(),
              ),
              ValueListenableBuilder(
                valueListenable: tabView,
                builder: (_, tab, __) {
                  return CategoryField(
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
                            isSelected: tab == index,
                            onPress: () => onTabChange(index),
                            textStyle: Theme.of(context).textTheme.titleMedium,
                          ),
                        )
                        .toList(),
                  );
                },
              ),
              _detailTab(headerStyle),
            ],
          ),
        ),
      ],
    );
  }

  Widget _detailTab(TextStyle headerStyle) {
    return Column(
      children: [
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
            lessStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor),
            moreStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor),
          ),
        ),
        const SizedBox(height: 5.0),
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
      ],
    );
  }
}

class ImagePreviewCustom extends StatefulWidget {
  final List<String> images;
  const ImagePreviewCustom({
    super.key,
    required this.images,
  });

  @override
  State<ImagePreviewCustom> createState() => _ImagePreviewCustomState();
}

class _ImagePreviewCustomState extends State<ImagePreviewCustom> {
  final ValueNotifier<int> _indexPage = ValueNotifier<int>(0);

  void onPageChange(int index) {
    _indexPage.value = index;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          PageView.builder(
            itemCount: widget.images.length,
            onPageChanged: onPageChange,
            itemBuilder: (_, index) => Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(widget.images[index]),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    colors: [
                      Theme.of(context).shadowColor.withOpacity(0.2),
                      Theme.of(context).shadowColor.withOpacity(0.3)
                    ],
                  )),
                ),
              ],
            ),
          ),
          ValueListenableBuilder<int>(
            valueListenable: _indexPage,
            builder: (context, indexPage, child) {
              return Align(
                alignment: Alignment.bottomCenter,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: mockDataImag
                        .mapIndexed((index, e) => FastImagePreview(
                            imageUrl: e, isView: index == indexPage))
                        .toList()
                        .expand(
                            (element) => [element, const SizedBox(width: 5.0)])
                        .toList(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class FastImagePreview extends StatelessWidget {
  final String imageUrl;
  final bool isView;
  final Function()? onPress;
  const FastImagePreview({
    super.key,
    required this.imageUrl,
    required this.isView,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: isView ? 80 : 60,
        height: isView ? 50 : 30,
        margin: const EdgeInsets.only(bottom: 10.0),
        decoration: BoxDecoration(
          border: Border.all(width: 1.5, color: Theme.of(context).primaryColor),
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(imageUrl),
          ),
        ),
      ),
    );
  }
}
