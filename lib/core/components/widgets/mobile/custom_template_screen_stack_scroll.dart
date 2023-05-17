import 'package:flutter/material.dart';

import 'appbar.dart';

class CustomTemplateScreenStackScroll extends StatefulWidget {
  final List<Widget> children;
  final AppbarCustom? appbar;
  final EdgeInsetsGeometry? paddingAll;
  final EdgeInsetsGeometry? paddingView;
  final Color? color;
  final Widget? bottomSheet;
  final Widget? afterMainScreen;
  final Function()? willPopup;
  const CustomTemplateScreenStackScroll({
    super.key,
    required this.children,
    required this.appbar,
    this.paddingAll,
    this.paddingView,
    this.color,
    this.bottomSheet,
    this.willPopup,
    this.afterMainScreen,
  });

  @override
  State<CustomTemplateScreenStackScroll> createState() =>
      _CustomTemplateScreenStackScrollState();
}

class _CustomTemplateScreenStackScrollState
    extends State<CustomTemplateScreenStackScroll> {
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
    return WillPopScope(
      onWillPop: () async {
        widget.willPopup!();
        return true;
      },
      child: Scaffold(
        extendBody: true,
        bottomNavigationBar: widget.bottomSheet,
        backgroundColor:
            widget.color ?? Theme.of(context).scaffoldBackgroundColor,
        body: Stack(
          children: [
            if (widget.afterMainScreen != null) widget.afterMainScreen!,
            CustomScrollView(
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              slivers: <Widget>[
                if (widget.appbar != null) widget.appbar!,
                ...widget.children.map((e) => e)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
