import 'package:flutter/material.dart';

class TabItem {
  final Widget screen;
  final String route;
  final String icon;
  final int index;
  TabItem({
    required this.screen,
    required this.route,
    required this.icon,
    required this.index,
  });
}
