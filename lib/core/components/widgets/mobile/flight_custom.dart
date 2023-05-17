import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/components/widgets/extension/string_extension.dart';
import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../constant/handle_time.dart';
import 'button_custom.dart';

enum FlightType {
  gridFlight,
  listFlight, // done
  horizontalFlight; // done

  bool get isGridFlight => this == FlightType.gridFlight;
  bool get isListFlight => this == FlightType.listFlight;
}

class FlightField extends StatelessWidget {
  final double? paddingLeft;
  final double? paddingRight;
  final double? paddingTop;
  final double? paddingBottom;
  final double spacingItem;
  final List<FlightStyle> items;
  final FlightType type;
  const FlightField({
    super.key,
    this.paddingLeft,
    this.paddingRight,
    this.paddingTop,
    this.paddingBottom,
    this.type = FlightType.listFlight,
    required this.items,
    this.spacingItem = 10.0,
  });

  @override
  Widget build(BuildContext context) {
    if (type.isListFlight) {
      return Padding(
        padding: EdgeInsets.only(
          right: paddingRight ?? 20.0,
          left: paddingLeft ?? 20.0,
          top: paddingTop ?? 20.0,
          bottom: paddingBottom ?? 15.0,
        ),
        child: Column(
          children: items
              .map((e) => FlightItem(item: e))
              .toList()
              .expand((element) => [element, SizedBox(height: spacingItem)])
              .toList()
            ..removeLast(),
        ),
      );
    }
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(width: paddingLeft ?? 10.0),
          ...items
              .map((e) => FlightItem(
                    item: e,
                    isSmallItem: true,
                    margin: EdgeInsets.only(
                      top: paddingTop ?? 0.0,
                      bottom: paddingBottom ?? 0.0,
                    ),
                  ))
              .expand(
                (element) => [element, SizedBox(width: spacingItem)],
              )
        ],
      ),
    );
  }
}

class FlightItem extends StatelessWidget {
  final FlightStyle item;
  final EdgeInsetsGeometry? margin;
  final bool isSmallItem;
  const FlightItem({
    super.key,
    this.isSmallItem = false,
    required this.item,
    this.margin,
  });

  double get dotSize => 8.0;
  @override
  Widget build(BuildContext context) {
    final widthDevice = context.widthDevice;

    var primaryColor = Theme.of(context).primaryColor;
    var bodySmallStyle = Theme.of(context).textTheme.bodySmall;
    var titleBigStyle = Theme.of(context).textTheme.titleLarge;

    if (isSmallItem) {
      return _smallItem(
        widthDevice,
        context,
        primaryColor,
        bodySmallStyle,
      );
    }
    return _fullScreenItem(
      context,
      titleBigStyle,
      primaryColor,
      bodySmallStyle,
    );
  }

  double get percentWidthDevice =>
      item.percentWidthDevice < 0.48 ? 0.48 : item.percentWidthDevice;

  Container _smallItem(double widthDevice, BuildContext context,
      Color primaryColor, TextStyle? bodySmallStyle) {
    return Container(
      width: widthDevice * percentWidthDevice,
      margin: margin,
      padding: EdgeInsets.only(
        left: item.paddingLeft ?? 10.0,
        right: item.paddingLeft ?? 10.0,
        top: item.paddingTop ?? 10.0,
        bottom: item.paddingBottom ?? 10.0,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.all(
          Radius.circular(item.radius),
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Theme.of(context)
                .shadowColor
                .withOpacity(item.shadowColorPercent ?? 0.1),
            blurRadius: item.shadowRadius ?? 5.0,
            offset: Offset(
              item.shadowOffsetX ?? 0.0,
              item.shadowOffsetY ?? 0.0,
            ),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _flightInfo(primaryColor, context, bodySmallStyle),
          const SizedBox(height: 5.0),
          PlaceAndTimeFlight(
            timeStart: item.timeStart,
            timeFinish: item.timeFinish,
            startPlace: item.startPlace,
            finishPlace: item.comePlace,
          ),
          const Divider(),
          ButtonCustom(
            onPress: () {},
            child: Text(
              S.of(context).view,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
        ].expand((element) => [element, const SizedBox(height: 5.0)]).toList()
          ..removeLast(),
      ),
    );
  }

  Row _flightInfo(
      Color primaryColor, BuildContext context, TextStyle? bodySmallStyle) {
    return Row(
      children: <Widget>[
        _dot(primaryColor),
        const SizedBox(width: 2),
        Text(S.of(context).flightInfo, style: bodySmallStyle)
      ],
    );
  }

  ClipPath _fullScreenItem(BuildContext context, TextStyle? titleBigStyle,
      Color primaryColor, TextStyle? bodySmallStyle) {
    return ClipPath(
      clipper: item.enableClipper ? FlightClipper() : null,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(item.radius),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(item.radius),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            StartAndComePlace(
              startPlace: item.startPlace,
              comePlace: item.comePlace,
            ),
            const Divider(),
            TimeStartAndFinish(
              timeStart: item.timeStart,
              timeFinish: item.timeFinish,
            ),
            const LineDottedDecoration(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ...[
                  Text(
                    '\$${item.price}',
                    style: titleBigStyle!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                    ),
                  ),
                  Text('/${S.of(context).person}', style: bodySmallStyle),
                ],
                const Spacer(),
                ...[
                  _dot(primaryColor),
                  const SizedBox(width: 2),
                  Text(S.of(context).flightInfo, style: bodySmallStyle)
                ]
              ],
            ),
          ]
              .expand((element) => [element, const SizedBox(height: 10.0)])
              .toList()
            ..removeLast(),
        ),
      ),
    );
  }

  Container _dot(Color color) {
    return Container(
      width: dotSize,
      height: dotSize,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
    );
  }
}

class PlaceAndTimeFlight extends StatelessWidget {
  final DateTime timeStart;
  final DateTime timeFinish;
  final String startPlace;
  final String finishPlace;
  const PlaceAndTimeFlight({
    super.key,
    required this.timeStart,
    required this.timeFinish,
    required this.startPlace,
    required this.finishPlace,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _data(context, timeStart, startPlace, S.of(context).dateStart),
          const LineDottedDecoration(
            enableIcon: false,
            isShowStartEndDot: false,
          ),
          _data(context, timeFinish, finishPlace, S.of(context).dateFinish),
        ]
            .expand((element) => [
                  element,
                  const SizedBox(height: 5.0),
                ])
            .toList()
          ..removeLast(),
      ),
    );
  }

  Row _data(
    BuildContext context,
    DateTime time,
    String place,
    String headerTime,
  ) {
    final subText = place.subPlaceAndUpcase;
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(place, style: context.textStyle, maxLines: 1),
              Text('($subText)', style: context.subTextStyle, maxLines: 1),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                headerTime,
                style: context.headerStyle,
                maxLines: 1,
                textAlign: TextAlign.end,
              ),
              Text(
                getjmFormat(time),
                style: context.timeStyle,
                maxLines: 1,
                textAlign: TextAlign.end,
              ),
            ],
          ),
        )
      ],
    );
  }
}

class LineDottedDecoration extends StatelessWidget {
  final bool isShowStartEndDot;
  final bool enableIcon;
  final IconData icon;
  const LineDottedDecoration({
    super.key,
    this.isShowStartEndDot = true,
    this.icon = Icons.airplane_ticket,
    this.enableIcon = true,
  });

  double get iconSize => 20.0;
  double get dotSize => 20.0;

  @override
  Widget build(BuildContext context) {
    var dividerColor = Theme.of(context).dividerColor;
    return Row(
      children: [
        if (isShowStartEndDot) _dot(true, dividerColor),
        Expanded(child: _divider(dividerColor)),
        if (enableIcon) ...[
          Icon(icon, size: iconSize, color: dividerColor),
          Expanded(child: _divider(dividerColor)),
        ],
        if (isShowStartEndDot) _dot(false, dividerColor),
      ],
    );
  }

  Container _dot(bool isStartDot, Color color) {
    return Container(
      width: dotSize,
      height: dotSize,
      padding: const EdgeInsets.all(2.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(width: 1, color: color),
      ),
      child: isStartDot
          ? Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
              ),
            )
          : null,
    );
  }

  Container _divider(Color color) {
    return Container(
      height: 0.5,
      width: double.infinity,
      decoration: DottedDecoration(
        linePosition: LinePosition.bottom,
        color: color,
      ),
    );
  }
}

class TimeStartAndFinish extends StatelessWidget {
  final DateTime timeStart;
  final DateTime timeFinish;
  final bool isShowRangeTime;
  const TimeStartAndFinish({
    super.key,
    required this.timeStart,
    required this.timeFinish,
    this.isShowRangeTime = true,
  });

  String get calculateTimeDisplay =>
      displayHoursMinutesBetween(timeStart, timeFinish);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(S.of(context).dateStart, style: context.headerStyle),
            Text(getjmFormat(timeStart), style: context.timeStyle),
          ],
        ),
        if (isShowRangeTime)
          Text(
            calculateTimeDisplay,
            style: context.headerStyle.copyWith(fontWeight: FontWeight.bold),
          ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(S.of(context).dateFinish, style: context.headerStyle),
            Text(getjmFormat(timeFinish), style: context.timeStyle),
          ],
        )
      ],
    );
  }
}

class StartAndComePlace extends StatelessWidget {
  final String startPlace;
  final String comePlace;
  final Widget? between;
  const StartAndComePlace({
    super.key,
    this.between,
    required this.startPlace,
    required this.comePlace,
  });

  String get sPlace => startPlace.subPlaceAndUpcase;
  String get cPlace => comePlace.subPlaceAndUpcase;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(startPlace, style: context.textStyle, maxLines: 1),
            Text('($sPlace)', style: context.subTextStyle, maxLines: 1),
          ],
        ),
        if (between != null) between!,
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(cPlace, style: context.textStyle, maxLines: 1),
            Text('($cPlace)', style: context.subTextStyle, maxLines: 1),
          ],
        )
      ],
    );
  }
}

class FlightStyle {
  final String startPlace;
  final String comePlace;
  final DateTime timeStart;
  final DateTime timeFinish;
  final double? price;
  final double? paddingLeft;
  final double? paddingRight;
  final double? paddingTop;
  final double? paddingBottom;
  final double? heightItem;
  final double? shadowOffsetX;
  final double? shadowOffsetY;
  final double? shadowRadius;
  final double? shadowColorPercent;
  final double radius;
  final double percentWidthDevice;
  final bool enableClipper;
  final bool isShowClipper;

  FlightStyle({
    required this.price,
    required this.timeStart,
    required this.timeFinish,
    required this.startPlace,
    required this.comePlace,
    this.shadowColorPercent,
    this.shadowOffsetX,
    this.shadowOffsetY,
    this.shadowRadius,
    this.isShowClipper = true,
    this.paddingLeft,
    this.paddingRight,
    this.paddingTop,
    this.paddingBottom,
    this.percentWidthDevice = 0.4,
    this.heightItem,
    this.radius = 15.0,
    this.enableClipper = true,
  });
}

class FlightClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);

    path.addOval(
        Rect.fromCircle(center: Offset(0.0, size.height / 2), radius: 10.0));
    path.addOval(Rect.fromCircle(
        center: Offset(size.width, size.height / 2), radius: 10.0));

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
