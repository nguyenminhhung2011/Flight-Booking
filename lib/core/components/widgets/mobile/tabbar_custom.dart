import 'package:collection/collection.dart';
import 'package:flight_booking/core/components/const/image_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

enum TabBarType {
  indicatorTabBar,
  dotTabbar,
  titleTabar;

  bool get isIndicatorTabbar => this == TabBarType.indicatorTabBar;
  bool get isDotTabBar => this == TabBarType.dotTabbar;
  bool get istitleTabar => this == TabBarType.titleTabar;
}

class TabBarCustom extends StatefulWidget {
  final Color? tabBarColor;
  final Color? iconColor;
  final Color? usSelectedColor;
  final bool? isCircleDor;
  final double? hMargin;
  final double? vMargin;
  final double? hPadding;
  final double? vPadding;
  final double? elevation;
  final double? radius;
  final double? paddingIcon;
  final List<TabBarItemStyle> items;
  final TabBarType tabBarType;

  final Function(int) onChangeTab;

  const TabBarCustom({
    super.key,
    this.tabBarColor,
    this.iconColor,
    this.isCircleDor,
    this.hMargin,
    this.vMargin,
    this.hPadding,
    this.vPadding,
    this.tabBarType = TabBarType.indicatorTabBar,
    this.radius,
    this.usSelectedColor,
    this.paddingIcon,
    this.elevation,
    required this.onChangeTab,
    required this.items,
  });

  @override
  State<TabBarCustom> createState() => _TabBarCustomState();
}

class _TabBarCustomState extends State<TabBarCustom> {
  Color get iconColor => widget.iconColor ?? Theme.of(context).primaryColor;
  double get elevation => widget.elevation != null
      ? widget.elevation! > 1
          ? 1
          : (1 - widget.elevation!)
      : 0.1;

  final ValueNotifier<int> _indexSeleect = ValueNotifier<int>(0);

  void _onTap(int index) {
    _indexSeleect.value = index;
    widget.onChangeTab(index);
  }

  @override
  Widget build(BuildContext context) {
    if (widget.items.isEmpty) {
      return const SizedBox();
    }
    if (widget.tabBarType.isIndicatorTabbar) {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: widget.hMargin ?? 10.0,
          vertical: widget.vMargin ?? 5.0,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: widget.hPadding ?? 10.0,
          vertical: widget.vPadding ?? 10.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.radius ?? 15.0),
          color: widget.tabBarColor ?? Theme.of(context).cardColor,
        ),
        child: ValueListenableBuilder<int>(
          valueListenable: _indexSeleect,
          builder: (context, indexSeleect, child) {
            return DefaultTabController(
              length: widget.items.length,
              child: TabBar(
                indicatorColor: Theme.of(context).primaryColor,
                tabs: <Widget>[
                  ...widget.items.mapIndexed((index, e) => Padding(
                        padding: EdgeInsets.all(widget.paddingIcon ?? 10.0),
                        child: SvgPicture.asset(
                          e.assetIcon ?? ImageConst.homeIcon,
                          color: indexSeleect == index
                              ? iconColor
                              : widget.usSelectedColor ?? Colors.white,
                        ),
                      )),
                ],
                labelColor: Colors.white,
                onTap: _onTap,
                unselectedLabelColor: iconColor.withOpacity(0.2),
                indicator: RectangularIndicator(
                  bottomLeftRadius: widget.radius ?? 10.0,
                  bottomRightRadius: widget.radius ?? 10.0,
                  topLeftRadius: widget.radius ?? 10.0,
                  topRightRadius: widget.radius ?? 10.0,
                  color: iconColor.withOpacity(0.3),
                ),
              ),
            );
          },
        ),
      );
    }
    // if (widget.tabBarType.isDotTabBar) {
    return FieldTabBar(
      elevation: elevation,
      hMargin: widget.hMargin,
      hPadding: widget.hPadding,
      tabBarColor: widget.tabBarColor ?? Theme.of(context).cardColor,
      vMargin: widget.vMargin,
      vPadding: widget.vPadding,
      child: ValueListenableBuilder<int>(
        valueListenable: _indexSeleect,
        builder: (context, indexSeleect, child) {
          return DefaultTabController(
            length: widget.items.length,
            child: TabBar(
              indicatorColor: widget.tabBarType.istitleTabar
                  ? Colors.transparent
                  : Theme.of(context).primaryColor,
              tabs: <Widget>[
                ...widget.items.mapIndexed(
                  (index, e) => Padding(
                    padding: EdgeInsets.all(widget.paddingIcon ?? 10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          e.assetIcon ?? ImageConst.homeIcon,
                          color: indexSeleect == index
                              ? iconColor
                              : widget.usSelectedColor ?? Colors.black,
                        ),
                        if (widget.tabBarType.istitleTabar &&
                            indexSeleect == index)
                          Text(
                            e.title ?? '',
                            maxLines: 1,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: iconColor,
                                ),
                          )
                      ],
                    ),
                  ),
                ),
              ],
              labelColor: Colors.white,
              onTap: _onTap,
              indicator: widget.tabBarType.isDotTabBar
                  ? DotIndicator(
                      color: iconColor,
                      distanceFromCenter: 16,
                      radius: 2,
                      paintingStyle: PaintingStyle.fill,
                    )
                  : null,
            ),
          );
        },
      ),
    );
  }
}

class FieldTabBar extends StatelessWidget {
  final double? hMargin;
  final double? vMargin;
  final double? hPadding;
  final double? vPadding;
  final double? radius;
  final double elevation;
  final Widget child;
  final Color tabBarColor;

  const FieldTabBar({
    super.key,
    required this.child,
    required this.hMargin,
    required this.vMargin,
    required this.hPadding,
    required this.vPadding,
    required this.tabBarColor,
    this.radius,
    required this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: hMargin ?? 0.0,
        vertical: vMargin ?? 0.0,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: hPadding ?? 5.0,
        vertical: vPadding ?? 5.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius ?? 15.0),
        color: tabBarColor,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor.withOpacity(elevation),
            blurRadius: 5.0,
            offset: const Offset(0, -10),
          )
        ],
      ),
      child: child,
    );
  }
}

class TabBarItemStyle {
  final String? assetIcon;
  final String? title;
  final Widget? screen;
  final Widget? widgetIcon;
  TabBarItemStyle({
    this.assetIcon,
    this.title,
    this.screen,
    this.widgetIcon,
  });
}
