import 'package:collection/collection.dart';
import 'package:flight_booking/core/components/widgets/mobile/rating_custom.dart';
import 'package:flight_booking/core/components/widgets/mobile/save_icon_button.dart';
import 'package:flutter/material.dart';

import '../../const/image_const.dart';
import '../card_custom.dart';

enum ImageViewItemType {
  horizontalView, // done
  gridView,
  verticalView; // done

  bool get isHorizontalView => this == ImageViewItemType.horizontalView;
  bool get isGridView => this == ImageViewItemType.gridView;
}

class ImageViewField extends StatelessWidget {
  final List<ImageViewStyle> imageViews;
  final ImageViewItemType imageViewType;
  final double? marginLeft;
  final double? marginRight;
  final double? marginTop;
  final double? marginBottom;
  final double? spacingItem;
  final double? widthItem;
  final double? heighItem;
  final bool isNetworImage;
  final bool isOuttext;
  final bool isSliver;
  final int? crossCount;
  const ImageViewField({
    super.key,
    required this.imageViewType,
    required this.imageViews,
    this.isOuttext = true,
    this.isSliver = false,
    this.isNetworImage = true,
    this.marginLeft,
    this.marginRight,
    this.marginTop,
    this.marginBottom,
    this.spacingItem,
    this.widthItem,
    this.heighItem,
    this.crossCount,
  });

  @override
  Widget build(BuildContext context) {
    if (imageViewType.isHorizontalView) {
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
    if (imageViewType.isGridView) {
      return SliverPadding(
        //update after
        padding: EdgeInsets.only(
          left: marginLeft ?? 15.0,
          top: marginTop ?? 15.0,
          right: marginRight ?? 15.0,
          bottom: marginBottom ?? 15.0,
        ),
        sliver: SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 5.0,
            crossAxisCount: 2,
            mainAxisSpacing: 2.0,
            childAspectRatio: 0.65,
          ),
          delegate: SliverChildBuilderDelegate(
            addAutomaticKeepAlives: false,
            (BuildContext contex, int index) => Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ImageViewItem(
                  imageView: imageViews[index],
                  isOutText: isOuttext,
                  isFullWidthItem: false,
                ),
              ],
            ),
            childCount: imageViews.length,
          ),
        ),
      );
    }
    if (isSliver) {
      //🚑 dumb code because i hard core this code
      return SliverList(
        delegate: SliverChildListDelegate(<Widget>[
          SizedBox(height: marginTop ?? 20.0),
          ...imageViews
              .map(
                (e) => ImageViewItem(
                  imageView: e,
                  isOutText: isOuttext,
                  isFullWidthItem: true,
                ),
              )
              .expand((element) => [
                    element,
                    SizedBox(height: spacingItem ?? 10.0),
                  ])
        ]),
      );
    }
    return Column(
      children: [
        SizedBox(height: marginTop ?? 20.0),
        ...imageViews
            .map(
              (e) => ImageViewItem(
                imageView: e,
                isOutText: isOuttext,
                isFullWidthItem: true,
              ),
            )
            .expand((element) => [
                  element,
                  SizedBox(height: spacingItem ?? 10.0),
                ])
      ],
    );
  }
}

class ImageViewItem extends StatefulWidget {
  final ImageViewStyle imageView;
  final bool isFullWidthItem;
  final bool isOutText;
  final double? widthItem;
  final double? heightItem;
  final double? paddingLeft;
  final double? paddingRight;

  const ImageViewItem({
    super.key,
    required this.imageView,
    required this.isOutText,
    this.widthItem,
    this.heightItem,
    this.isFullWidthItem = false,
    this.paddingLeft,
    this.paddingRight,
  });

  @override
  State<ImageViewItem> createState() => _ImageViewItemState();
}

class _ImageViewItemState extends State<ImageViewItem> {
  double get heightItem => widget.heightItem ?? 180.0;

  @override
  Widget build(BuildContext context) {
    if (widget.isFullWidthItem) {
      var heightImage = heightItem > 100.0 ? 100.0 : heightItem;
      return ImageViewFullWidth(
        heightImage: heightImage,
        imageView: widget.imageView,
        paddingLeft: widget.paddingLeft,
        paddingRight: widget.paddingRight,
      );
    }
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

class ImageViewFullWidth extends StatelessWidget {
  final ImageViewStyle imageView;
  final double? paddingLeft;
  final double? paddingRight;
  const ImageViewFullWidth({
    super.key,
    required this.heightImage,
    required this.imageView,
    this.paddingLeft,
    this.paddingRight,
  });

  final double heightImage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: imageView.onPress,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(
              left: paddingLeft ?? 15.0,
              right: paddingRight ?? 15.0,
            ),
            width: double.infinity,
            padding: EdgeInsets.only(
              top: imageView.paddingTop ?? 5.0,
              bottom: imageView.paddingBottom ?? 5.0,
              left: imageView.paddingLeft ?? 5.0,
              right: imageView.paddingRight ?? 5.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(imageView.radius ?? 15.0),
              ),
              color: Theme.of(context).cardColor,
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).shadowColor.withOpacity(
                        imageView.opacticShadow ?? 0.1,
                      ),
                  blurRadius: imageView.blurRadius ?? 5.0,
                )
              ],
            ),
            child: Row(
              children: [
                Container(
                  height: heightImage,
                  width: heightImage,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(imageView.radius ?? 15.0),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        imageView.imageView ?? ImageConst.imageDe1,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 5.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ImageViewChildItem(imageViewStyle: imageView),
                    ],
                  ),
                )
              ],
            ),
          ),
          if (imageView.isShowFavorite!)
            SaveIconButton(
              isSaved: false,
              onPress: () {},
              posRight: paddingRight ?? 15.0 + 5.0,
            ),
        ],
      ),
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
    return GestureDetector(
      onTap: imageViewStyle.onPress,
      child: Stack(
        children: [
          CardCustom(
            margin: const EdgeInsets.all(0.0),
            width: width ?? 150,
            height: height ?? 200,
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(imageViewStyle.radius ?? 15.0),
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
              borderRadius:
                  BorderRadius.circular(imageViewStyle.radius ?? 15.0),
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
      ),
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
      onTap: imageViewStyle.onPress,
      child: Container(
        width: width ?? 180.0,
        margin: const EdgeInsets.only(bottom: 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(imageViewStyle.radius ?? 15.0),
          color: Theme.of(context).cardColor,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).shadowColor.withOpacity(
                    imageViewStyle.opacticShadow ?? 0.1,
                  ),
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
    var titleBigStyle = Theme.of(context).textTheme.titleMedium;

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
          if (imageViewStyle.isShowRichText)
            RichText(
              text: TextSpan(children: <TextSpan>[
                TextSpan(
                  text: imageViewStyle.richText1 ?? '',
                  style: titleBigStyle!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                TextSpan(
                  text: '/${imageViewStyle.richtText2 ?? ''} ',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ]),
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
  final String? richText1;
  final String? richtText2;
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
  final double? opacticShadow;
  final bool? isShowFavorite;
  final bool isShowRichText;
  final Function()? onPress;
  ImageViewStyle({
    required this.firstText,
    this.onPress,
    this.imageView,
    this.richText1,
    this.richtText2,
    this.isShowRichText = false,
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
    this.opacticShadow,
  });
}

class ImageViewSkelton extends StatelessWidget {
  const ImageViewSkelton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
