import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/components/widgets/mobile/rating_custom.dart';
import 'package:flutter/material.dart';

import '../appbar_widget.dart';

class ReviewsField extends StatefulWidget {
  final List<ReviewStyle> reviews;
  final double? paddingLeft;
  final double? paddingRight;
  final double? paddingTop;
  final double? paddingBottom;
  final double? spacingItem;
  final bool isShowOverviewReviews;
  const ReviewsField({
    super.key,
    required this.reviews,
    this.paddingLeft,
    this.paddingRight,
    this.paddingTop,
    this.paddingBottom,
    this.spacingItem,
    this.isShowOverviewReviews = true,
  });

  @override
  State<ReviewsField> createState() => _ReviewsFieldState();
}

class _ReviewsFieldState extends State<ReviewsField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: widget.paddingLeft ?? 15.0,
          top: widget.paddingTop ?? 10.0,
          right: widget.paddingRight ?? 15.0,
          bottom: widget.paddingBottom ?? 10.0),
      child: Column(
        children: [
          if (widget.isShowOverviewReviews)
            const SizedBox(
              //update after
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [],
                  ),
                  SizedBox(width: 5.0),
                  Expanded(
                    child: Column(),
                  ),
                ],
              ),
            ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0),
            child: Divider(),
          ),
          ...widget.reviews.map((e) => ReviewItem(review: e)).expand(
              (element) =>
                  [element, SizedBox(height: widget.spacingItem ?? 10.0)])
        ],
      ),
    );
  }
}

class ReviewItem extends StatelessWidget {
  final ReviewStyle review;
  const ReviewItem({super.key, required this.review});

  bool get isUserImageEnable => review.imageUrl?.isNotEmpty ?? false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (review.isShowUserUrl && isUserImageEnable) ...[
                AvatarWidget(
                  imageUrl: review.imageUrl!,
                  width: 30.0,
                  height: 30.0,
                ),
                const SizedBox(width: 5.0),
              ],
              Expanded(
                child: Text(
                  '${review.userName ?? ''} | 1 days before',
                  style: review.userNameStyle ??
                      context.titleSmall.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.0,
                        color: Theme.of(context).primaryColor,
                      ),
                ),
              ),
              if (review.isShowRating)
                RattingWidgetCustom(rating: review.ratings ?? 0.0)
            ],
          ),
          const SizedBox(height: 5.0),
          Text(
            review.title ?? '',
            style: review.reviewsStyle ??
                context.titleSmall.copyWith(fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 5.0),
          if (review.isShowFav)
            Text(
              '❤️ ${review.fav ?? 0} favorites',
              style: context.titleSmall.copyWith(
                fontSize: 14.0,
              ),
            ),
        ],
      ),
    );
  }
}

class ReviewStyle {
  final double? ratings;
  final String? userName;
  final String? imageUrl;
  final String? title;
  final bool isShowFav;
  final bool isShowRating;
  final bool isShowUserUrl;
  final bool isShowTimeReviews;
  final TextStyle? reviewsStyle;
  final TextStyle? userNameStyle;
  final int? fav;
  final DateTime? timeReviews;
  ReviewStyle({
    this.isShowFav = false,
    this.isShowRating = true,
    this.isShowUserUrl = false,
    this.isShowTimeReviews = true,
    this.fav,
    this.timeReviews,
    this.userNameStyle,
    this.reviewsStyle,
    this.userName,
    this.imageUrl,
    this.ratings,
    this.title,
  });
}
