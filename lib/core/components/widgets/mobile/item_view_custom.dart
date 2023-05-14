import 'package:collection/collection.dart';
import 'package:flight_booking/core/components/widgets/mobile/rating_custom.dart';
import 'package:flight_booking/core/components/widgets/mobile/save_icon_button.dart';
import 'package:flutter/material.dart';

import '../../const/image_const.dart';
import '../card_custom.dart';

enum ImageViewItemType {
  horizontalView,
  gridView,
}

class ImageViewField extends StatelessWidget {
  final List<ImageViewStyle> imageViews;
  final ImageViewItemType imageViewType;
  final bool isOuttext;
  final double? marginLeft;
  final double? marginRight;
  final double? marginTop;
  final double? marginBottom;
  final double? spacingItem;
  final bool isNetworImage;
  final double? widthItem;
  final double? heighItem;
  const ImageViewField({
    super.key,
    required this.imageViewType,
    required this.imageViews,
    this.isOuttext = true,
    this.isNetworImage = true,
    this.marginLeft,
    this.marginRight,
    this.marginTop,
    this.marginBottom,
    this.spacingItem,
    this.widthItem,
    this.heighItem,
  });

  @override
  Widget build(BuildContext context) {
    if (imageViewType == ImageViewItemType.horizontalView) {
      return Padding(
        padding: EdgeInsets.only(
          top: marginTop ?? 0.0,
          right: marginRight ?? 0.0,
          bottom: marginBottom ?? 0.0,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: marginLeft ?? 0.0),
              ...imageViews.map(
                (e) => ImageViewItem(
                  imageView: e,
                  isOutText: isOuttext,
                  widthItem: widthItem,
                  heightItem: heighItem,
                ),
              )
            ]
                .expandIndexed(
                  (index, element) => [
                    element,
                    if (index != 0)
                      SizedBox(
                        width: spacingItem ?? 10.0,
                      )
                  ],
                )
                .toList(),
          ),
        ),
      );
    }
    return const Placeholder();
  }
}

class ImageViewItem extends StatefulWidget {
  final ImageViewStyle imageView;
  final bool isOutText;
  final double? widthItem;
  final double? heightItem;

  const ImageViewItem({
    super.key,
    required this.imageView,
    required this.isOutText,
    this.widthItem,
    this.heightItem,
  });

  @override
  State<ImageViewItem> createState() => _ImageViewItemState();
}

class _ImageViewItemState extends State<ImageViewItem> {
  double get heightItem => widget.heightItem ?? 180.0;

  @override
  Widget build(BuildContext context) {
    if (widget.isOutText) {
      return ImageViewWithTextOut(
        heightItem: heightItem,
        imageViewStyle: widget.imageView,
        width: widget.widthItem,
      );
    }
    return ImageViewWithTextIn(
      heightItem: heightItem,
      imageViewStyle: widget.imageView,
      width: widget.widthItem,
    );
  }
}

class ImageViewWithTextIn extends StatelessWidget {
  final double heightItem;
  final ImageViewStyle imageViewStyle;
  final double? width;
  final double? height;
  const ImageViewWithTextIn({
    super.key,
    required this.heightItem,
    required this.imageViewStyle,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CardCustom(
          margin: const EdgeInsets.all(0.0),
          width: width ?? 150,
          height: height ?? 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(imageViewStyle.radius ?? 15.0),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                imageViewStyle.imageView ?? ImageConst.imageDe1,
              ),
            ),
          ),
        ),
        Container(
          width: width ?? 150,
          height: height ?? 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(imageViewStyle.radius ?? 15.0),
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              colors: [
                Theme.of(context).shadowColor.withOpacity(0.2),
                Theme.of(context).shadowColor.withOpacity(0.1),
                Theme.of(context).primaryColor.withOpacity(0.2),
                Theme.of(context).primaryColor.withOpacity(0.1),
              ],
            ),
          ),
          child: Column(
            children: [
              const Spacer(),
              ImageViewChildItem(
                imageViewStyle: imageViewStyle,
                isWhiteText: true,
              ),
            ],
          ),
        ),
        if (imageViewStyle.isShowFavorite!)
          SaveIconButton(isSaved: false, onPress: () {}),
      ],
    );
  }
}

class ImageViewWithTextOut extends StatelessWidget {
  const ImageViewWithTextOut({
    super.key,
    required this.heightItem,
    required this.imageViewStyle,
    this.width,
  });

  final double heightItem;
  final ImageViewStyle imageViewStyle;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: width ?? 180.0,
        margin: const EdgeInsets.only(bottom: 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(imageViewStyle.radius ?? 15.0),
          color: Theme.of(context).cardColor,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).shadowColor.withOpacity(0.1),
              blurRadius: imageViewStyle.blurRadius ?? 5.0,
            )
          ],
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: heightItem,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(imageViewStyle.radius ?? 15.0),
                      topRight: Radius.circular(imageViewStyle.radius ?? 15.0),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        imageViewStyle.imageView ?? ImageConst.imageDe,
                      ),
                    ),
                  ),
                ),
                ImageViewChildItem(imageViewStyle: imageViewStyle),
              ],
            ),
            if (imageViewStyle.isShowFavorite!)
              SaveIconButton(isSaved: false, onPress: () {})
          ],
        ),
      ),
    );
  }
}

class ImageViewChildItem extends StatelessWidget {
  const ImageViewChildItem({
    super.key,
    required this.imageViewStyle,
    this.isWhiteText = false,
  });

  final ImageViewStyle imageViewStyle;
  final bool? isWhiteText;

  bool get whiteText => isWhiteText ?? false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: imageViewStyle.paddingTop ?? 5.0,
        right: imageViewStyle.paddingRight ?? 10.0,
        left: imageViewStyle.paddingLeft ?? 10.0,
        bottom: imageViewStyle.paddingBottom ?? 5.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            imageViewStyle.firstText,
            maxLines: 1,
            style: imageViewStyle.firstTextStyle ??
                Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.w600,
                      overflow: TextOverflow.ellipsis,
                      color: whiteText ? Colors.white : null,
                    ),
          ),
          if (imageViewStyle.secondText != null)
            Text(
              imageViewStyle.secondText!,
              maxLines: 2,
              style: imageViewStyle.secondTextStyle ??
                  Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.w300,
                        fontSize: 12.0,
                        color: whiteText ? Colors.white : null,
                      ),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (imageViewStyle.rating != null)
                Expanded(
                  child: RattingWidgetCustom(
                    rating: imageViewStyle.rating!,
                  ),
                ),
            ],
          ),
        ]
            .expand((element) => [
                  element,
                  const SizedBox(
                    height: 2.0,
                  )
                ])
            .toList()
          ..removeLast(),
      ),
    );
  }
}

class ImageViewStyle {
  final String firstText;
  final String? secondText;
  final String? imageView;
  final TextStyle? firstTextStyle;
  final TextStyle? secondTextStyle;
  final double? pricePerDay;
  final double? paddingTop;
  final double? paddingLeft;
  final double? paddingRight;
  final double? paddingBottom;
  final double? iconSize;
  final double? rating;
  final double? radius;
  final double? blurRadius;
  final bool? isShowFavorite;
  ImageViewStyle({
    required this.firstText,
    this.imageView,
    this.radius,
    this.blurRadius,
    this.secondText,
    this.paddingTop,
    this.paddingLeft,
    this.paddingRight,
    this.paddingBottom,
    this.iconSize,
    this.pricePerDay,
    this.rating,
    this.firstTextStyle,
    this.secondTextStyle,
    this.isShowFavorite = true,
  });
}
