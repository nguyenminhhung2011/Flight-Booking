import 'package:flutter/material.dart';

import 'appbar.dart';

class CustomTemplateScreenStackScroll extends StatefulWidget {
  final List<Widget> children;
  final AppbarCustom? appbar;
  final EdgeInsetsGeometry? paddingAll;
  final EdgeInsetsGeometry? paddingView;
  const CustomTemplateScreenStackScroll({
    super.key,
    required this.children,
    required this.appbar,
    this.paddingAll,
    this.paddingView,
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
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        slivers: <Widget>[
          if (widget.appbar != null) widget.appbar!,
          ...widget.children.map((e) => e)
        ],
      ),
    );
  }
}
