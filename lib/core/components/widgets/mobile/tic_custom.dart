import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flight_booking/core/components/const/image_const.dart';
import 'package:flight_booking/core/components/enum/tic_type_enum.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flutter/material.dart';

import '../../../../presentations/list_flight/views/widgets/dot_custom.dart';

const _hMargin = 15.0;

enum TicType {
  listVerticalView;

  bool get isVerticalView => this == TicType.listVerticalView;
}

class TicField extends StatelessWidget {
  final TicType type;
  final List<TicStyle> items;
  final double? paddingLeft;
  final double? paddingRight;
  final double? paddingTop;
  final double? paddingBottom;
  final double? spacingItem;
  const TicField({
    super.key,
    this.type = TicType.listVerticalView,
    this.paddingLeft,
    this.paddingRight,
    this.paddingTop,
    this.paddingBottom,
    this.spacingItem,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    if (type.isVerticalView) {
      return Padding(
        padding: EdgeInsets.only(
          left: paddingLeft ?? 0.0,
          right: paddingRight ?? 0.0,
          top: paddingTop ?? 0.0,
          bottom: paddingBottom ?? 0.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ...items.map((e) => TicItem(item: e)).expand(
                (element) => [element, SizedBox(height: spacingItem ?? 10.0)])
          ],
        ),
      );
    }
    return const SizedBox();
  }
}

class TicItem extends StatelessWidget {
  final TicStyle item;
  const TicItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: item.onPress,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.only(
          left: item.paddingLeft ?? 10.0,
          top: item.paddingTop ?? 10.0,
          right: item.paddingRight ?? 10.0,
          bottom: item.paddingBottom ?? 10.0,
        ),
        decoration: BoxDecoration(
          color: item.color ?? Theme.of(context).cardColor,
          borderRadius: BorderRadius.all(
            Radius.circular(item.radius ?? 10.0),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.flight,
                    style: context.titleMedium.copyWith(
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    item.placeStart,
                    style: context.titleSmall.copyWith(
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Icon(
                    Icons.airplane_ticket,
                    color: Theme.of(context).primaryColor,
                  ),
                  Text(
                    item.placeEnd,
                    style: context.titleSmall.copyWith(
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ]
                    .expand((element) => [element, const SizedBox(height: 2.0)])
                    .toList()
                  ..removeLast(),
              ),
            ),
            Container(
              width: 0.2,
              height: 80,
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: DottedDecoration(linePosition: LinePosition.left),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          item.type.displayValue,
                          maxLines: 1,
                          style: context.titleMedium
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                      DotCustom(color: item.type.colorType!, full: true)
                    ],
                  ),
                  _lineRow(context),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('8h 3m'), //🚑dumb code
                      Text(
                        ('\$${item.price}'),
                        style: context.titleMedium.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor),
                      ),
                    ],
                  )
                ]
                    .expand((element) => [element, const SizedBox(height: 5.0)])
                    .toList()
                  ..removeLast(),
              ),
            )
          ],
        ),
      ),
    );
  }

  Row _lineRow(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(item.airportStart),
        Expanded(
          child: Container(
            height: 1,
            decoration: DottedDecoration(
              color: Theme.of(context).dividerColor,
              shape: Shape.line,
              linePosition: LinePosition.bottom,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              width: 1,
              color: Theme.of(context).dividerColor,
            ),
          ),
          child: Icon(
            Icons.airplanemode_active_sharp,
            color: Theme.of(context).primaryColor,
            size: 16.0,
          ),
        ),
        Expanded(
          child: Container(
            height: 1,
            decoration: DottedDecoration(
              color: Theme.of(context).dividerColor,
              shape: Shape.line,
              linePosition: LinePosition.bottom,
            ),
          ),
        ),
        Text(item.airportFinish)
      ],
    );
  }
}

class TicStyle {
  final double? paddingLeft;
  final double? paddingRight;
  final double? paddingTop;
  final double? paddingBottom;
  final double? radius;
  final double price;
  final TicTypeEnum type;
  final String airportStart;
  final String airportFinish;
  final String flight;
  final String placeStart;
  final String placeEnd;
  final Color? color;
  final Function()? onPress;

  TicStyle({
    this.paddingLeft,
    this.paddingRight,
    this.paddingBottom,
    this.paddingTop,
    this.radius,
    this.color,
    this.onPress,
    required this.type,
    required this.airportFinish,
    required this.airportStart,
    required this.price,
    required this.flight,
    required this.placeStart,
    required this.placeEnd,
  });
}
