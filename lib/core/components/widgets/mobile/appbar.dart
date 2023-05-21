import 'package:flutter/material.dart';

class AppbarCustom extends StatelessWidget {
  final Color? backgroundColor;
  final bool? snap;
  final bool? forceElevated;
  final bool? pinned;
  final bool? floating;
  final bool isCenterTitle;

  final double? titleSpacing;
  final double? elevation;
  final double? height;
  final double? expandedHeight;
  final double? radius;
  final double paddingLeft;
  final double paddingRight;
  final double paddingTop;
  final double paddingBottom;
  final List<Widget> title;
  final List<Widget>? actions;
  final String? aftarImage;
  final Widget? leading;
  final Widget? widgeExpanded;
  final Widget? titleExpand;

  const AppbarCustom({
    super.key,
    this.backgroundColor,
    this.snap,
    this.pinned,
    this.titleSpacing,
    this.elevation,
    this.forceElevated,
    this.actions,
    this.height,
    this.isCenterTitle = false,
    this.paddingLeft = 4.0,
    this.paddingRight = 4.0,
    this.paddingTop = 4.0,
    this.paddingBottom = 4.0,
    this.floating,
    this.aftarImage,
    this.expandedHeight,
    this.radius,
    required this.title,
    this.leading,
    this.widgeExpanded,
    this.titleExpand,
  });

  List<Widget> get getActions => actions ?? [];

  @override
  Widget build(BuildContext context) {
    final heightDevice = MediaQuery.of(context).size.height;
    return SliverAppBar(
      snap: snap ?? false,
      pinned: pinned ?? true,
      titleSpacing: titleSpacing ?? 0,
      automaticallyImplyLeading: false,
      elevation: elevation ?? 0,
      leading: leading,
      forceElevated: forceElevated ?? true,
      expandedHeight: expandedHeight ?? 0,
      floating: floating ?? true,
      backgroundColor:
          backgroundColor ?? Theme.of(context).scaffoldBackgroundColor,
      foregroundColor: Theme.of(context).scaffoldBackgroundColor,
      flexibleSpace: widgeExpanded != null || titleExpand != null
          ? FlexibleSpaceBar(
              centerTitle: true,
              titlePadding: const EdgeInsets.all(0.0),
              background: widgeExpanded,
              title: titleExpand,
            )
          : aftarImage != null
              ? FlexibleSpaceBar(
                  centerTitle: true,
                  titlePadding: const EdgeInsets.all(0.0),
                  background: SizedBox(
                    height: double.infinity,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.asset(
                            aftarImage!,
                            width: double.maxFinite,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          height: 2,
                          width: double.infinity,
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                      ],
                    ),
                  ),
                  title: titleExpand ??
                      Container(
                        width: double.infinity,
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(radius ?? 30.0),
                            topRight: Radius.circular(radius ?? 30.0),
                          ),
                          color: Theme.of(context).scaffoldBackgroundColor,
                          boxShadow: [
                            BoxShadow(
                              color: Theme.of(context).primaryColor,
                              blurRadius: 100.0,
                              offset: const Offset(0, -10),
                            )
                          ],
                        ),
                      ),
                  collapseMode: CollapseMode.parallax,
                )
              : null,
      title: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.only(
            right: paddingRight,
            top: paddingTop,
            left: paddingLeft,
            bottom: paddingBottom,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: isCenterTitle
                ? MainAxisAlignment.center
                : MainAxisAlignment.start,
            children: title.map((e) => e).toList(),
          ),
        ),
      ),
      toolbarHeight: height ?? 60.0,
      actions: getActions.map((e) => e).toList(),
    );
  }
}
