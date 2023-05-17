import 'dart:math';

import 'package:flight_booking/core/components/const/image_const.dart';
import 'package:flight_booking/core/components/widgets/extension/coor_extension.dart';
import 'package:flight_booking/presentations_mobile/home_mobile/views/home_mobile_screen.dart';
import 'package:flight_booking/presentations_mobile/routes_mobile.dart';
import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

List<String> weekDays = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
DateTime now = DateTime.now();
List<Map<String, dynamic>> schedule = [
  {
    'begin': DateTime(now.year, now.month, now.day, 0, 0, 0, 0),
    'end': DateTime(now.year, now.month, now.day, 0, 0, 0, 0),
    'type': -1,
    'title': 'Sai gon - Da Nang',
    'done': -1,
  },
  {
    'begin': DateTime(now.year, now.month, now.day, 3, 0, 0, 0),
    'end': DateTime(now.year, now.month, now.day, 6, 0, 0, 0),
    'type': 0,
    'title': 'England - America',
    'done': 0,
  },
  {
    'begin': DateTime(now.year, now.month, now.day, 9, 0, 0, 0),
    'end': DateTime(now.year, now.month, now.day, 12, 0, 0, 0),
    'type': 1,
    'title': 'Viet Nam - Korea',
  },
  {
    'begin': DateTime(now.year, now.month, now.day, 13, 0, 0, 0),
    'end': DateTime(now.year, now.month, now.day, 15, 0, 0, 0),
    'type': 2,
    'title': 'Indian - Thai land',
  },
  {
    'begin': DateTime(now.year, now.month, now.day, 18, 0, 0, 0),
    'end': DateTime(now.year, now.month, now.day, 19, 0, 0, 0),
    'type': 2,
    'title': 'An Khe - Sai Gon',
  },
];

List<Map<String, dynamic>> mockDataOverview = [
  {'header': S.current.totalAirport, 'data': 100, 'oData': 110},
  {'header': S.current.totalCustomer, 'data': 2521, 'oData': 2000},
  {'header': S.current.totalFlight, 'data': 500, 'oData': 324},
  {'header': S.current.totalPayment, 'data': 1003104, 'oData': 420523},
];

List<String> mockDataImag = [
  'https://www.travelandleisure.com/thmb/qUyMl5D6VbtM9hxxtBlFMAY5cCU=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/portland-international-airport-00-USAIRPORTSWB21-35b7a73d8c0c4a86a9f9e5b27a7c3bbe.jpg',
  'https://www.szairport.com/szairporten/xhtml/images/index-pic-01.jpg',
  'https://media.cnn.com/api/v1/images/stellar/prod/230314215301-03-world-best-airports-2023.jpg?c=original&q=w_1280,c_fill',
];
List<Map<String, dynamic>> dashboardItem = [
  {
    'icon': ImageConst.homeIcon,
    'tit': 'Home',
    'index': 0,
    'screen': const HomeMobileScreen(),
  },
  {
    'icon': ImageConst.searchIcon,
    'tit': 'Search',
    'index': 1,
    'screen': const SizedBox()
  },
  {
    'icon': ImageConst.documentIcon,
    'tit': 'Favorite',
    'index': 2,
    'screen': const SizedBox()
  },
  {
    'icon': ImageConst.personIcon,
    'tit': 'Profile',
    'index': 3,
    'screen': const SizedBox()
  },
];

List<Map<String, dynamic>> mockCategory = [
  {
    'text': 'Hotels',
    'icon': ImageConst.hotel,
    'color': '#ffd3b5ff'.toColor(),
    'route': RoutesMobile.listFlightMobile,
  },
  {
    'text': 'Flight',
    'icon': ImageConst.airplaneIcon,
    'color': '#ffffc0ee'.toColor(),
    'route': RoutesMobile.listFlightMobile,
  },
  {
    'text': 'Trips',
    'icon': ImageConst.trip,
    'color': '#ffffdab5'.toColor(),
    'route': RoutesMobile.listFlightMobile,
  },
  {
    'text': 'Ticket',
    'icon': ImageConst.tic,
    'color': '#ff97d5ff'.toColor(),
    'route': RoutesMobile.listFlightMobile,
  },
];
List<String> sogun = [
  'Manage Customer',
  'Manage Airport',
  'Manage Flight',
  'Manage Payment',
  'Update Account',
];

String randomString() {
  const chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
  var rnd = Random(DateTime.now().microsecondsSinceEpoch);
  var result = '';
  for (var i = 0; i < 10; i++) {
    result += chars[rnd.nextInt(chars.length)];
  }

  return result;
}
