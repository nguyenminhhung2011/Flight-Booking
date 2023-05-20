import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RattingWidgetCustom extends StatelessWidget {
  final IconData? iconData;
  final double? itemPadding;
  final double rating;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  const RattingWidgetCustom({
    super.key,
    this.itemPadding,
    this.iconData,
    this.padding,
    required this.rating,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: rating,
      minRating: 1,
      itemSize: 12.0,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: padding ?? const EdgeInsets.only(right: 2.0),
      itemBuilder: (context, _) => Icon(
        iconData ?? Icons.star,
        color: color ?? Colors.amber,
      ),
      onRatingUpdate: (rating) {},
    );
  }
}
