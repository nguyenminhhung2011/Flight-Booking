import 'dart:math';

import 'package:flight_booking/core/components/const/image_const.dart';
import 'package:flight_booking/core/components/widgets/extension/coor_extension.dart';
import 'package:flight_booking/presentations/profile/views/profile_mobile_screen.dart';
import 'package:flight_booking/presentations_mobile/home_mobile/views/home_mobile_screen.dart';
import 'package:flight_booking/presentations_mobile/routes_mobile.dart';
import 'package:flight_booking/presentations_mobile/save/views/save_mobile_screen.dart';
import 'package:flight_booking/presentations_mobile/search_mobile/views/search_mobile_screen.dart';
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
    'screen': const SearchMobileScreen()
  },
  {
    'icon': ImageConst.documentIcon,
    'tit': 'Favorite',
    'index': 2,
    'screen': const SaveMobileScreen()
  },
  {
    'icon': ImageConst.personIcon,
    'tit': 'Profile',
    'index': 3,
    'screen': const ProfileMobileScreen()
  },
];

List<String> filterRating = [
  '1 - 2 Stars',
  '2 - 3 Stars',
  '3 - 4 Stars',
  '1 - 2 Stars'
];

List<Map<String, dynamic>> mockCategory = [
  {
    'text': 'Hotels',
    'icon': ImageConst.hotel,
    'color': '#ffd3b5ff'.toColor(),
    'route': RoutesMobile.hotel,
  },
  {
    'text': 'Flight',
    'icon': ImageConst.airplaneIcon,
    'color': '#ffffc0ee'.toColor(),
    'route': RoutesMobile.listFlightMobile,
  },
  {
    'text': 'Airports',
    'icon': ImageConst.trip,
    'color': '#ffffdab5'.toColor(),
    'route': RoutesMobile.listAirportMobile,
  },
  {
    'text': 'Ticket',
    'icon': ImageConst.tic,
    'color': '#ff97d5ff'.toColor(),
    'route': RoutesMobile.ticket,
  },
];

List<Map<String, dynamic>> mockFacilities = [
  {
    'text': '30 Rooms',
    'icon': Icons.hotel,
    'color': '#ffd3b5ff'.toColor(),
    'route': RoutesMobile.hotel,
  },
  {
    'text': 'Wifi',
    'icon': Icons.wifi,
    'color': '#ffffc0ee'.toColor(),
    'route': RoutesMobile.listFlightMobile,
  },
  {
    'text': 'Buffet',
    'icon': Icons.cake,
    'color': '#ffffdab5'.toColor(),
    'route': RoutesMobile.listAirportMobile,
  },
  {
    'text': 'Fitness',
    'icon': Icons.fitness_center,
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

List<Map<String, dynamic>> mockDataBenefits = [
  {'icon': Icons.cake, 'title': 'Meals'},
  {'icon': Icons.wifi, 'title': 'Wifi'},
  {'icon': Icons.tv, 'title': 'TV'},
  {'icon': Icons.table_bar, 'title': 'Restroom'},
  {'icon': Icons.dining_rounded, 'title': 'Drink'}
];
List<Map<String, dynamic>> mocPayment = [
  {'icon': ImageConst.cardIcon, 'title': 'Card'},
  {'icon': ImageConst.visaIcon, 'title': 'Visa'},
  {'icon': ImageConst.masterIcon, 'title': 'Mastero'},
];

List<String> seatHeader = [
  'A',
  'B',
  'C',
  'D',
  'E',
  'F',
  'G',
  'H',
  'L',
  'M',
  'N',
  'I',
];
List<Map<String, dynamic>> mockDataReviews = [
  {
    'reviews':
        'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
    'name': 'Nguyen Minh Hung',
    'rating': 3,
  },
  {
    'reviews':
        'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces .',
    'name': 'Truong Huynh Duc Hoang',
    'rating': 4,
  },
  {
    'reviews':
        'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces .',
    'name': 'Truong Huynh Duc Hoang',
    'rating': 4,
  },
  {
    'reviews':
        'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces .',
    'name': 'Truong Huynh Duc Hoang',
    'rating': 5,
  },
];
List<String> headerAirport = [
  'Id',
  'Name',
  'Description',
  'Location',
  'Open Time',
  'Close Time'
];

int fakeNumberChairiInFlight = 28;
int fakeRowChair = 7;
List<Map<String, dynamic>> fakeDataChair = [
  {'index': 0, 'chec': 1},
  {'index': 1, 'chec': 3},
  {'index': 2, 'chec': 3},
  {'index': 3, 'chec': 2},
  {'index': 4, 'chec': 1},
  {'index': 5, 'chec': 3},
  {'index': 6, 'chec': 1},
  {'index': 7, 'chec': 3},
  {'index': 8, 'chec': 1},
  {'index': 9, 'chec': 2},
  {'index': 10, 'chec': 1},
  {'index': 11, 'chec': 1},
  {'index': 12, 'chec': 3},
  {'index': 13, 'chec': 1},
  {'index': 14, 'chec': 2},
  {'index': 15, 'chec': 2},
  {'index': 16, 'chec': 2},
  {'index': 17, 'chec': 3},
  {'index': 18, 'chec': 3},
  {'index': 19, 'chec': 3},
  {'index': 20, 'chec': 1},
  {'index': 21, 'chec': 1},
  {'index': 22, 'chec': 2},
  {'index': 23, 'chec': 1},
  {'index': 24, 'chec': 3},
  {'index': 25, 'chec': 1},
  {'index': 26, 'chec': 2},
  {'index': 27, 'chec': 3},
  {'index': 28, 'chec': 1},
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

int randDomNumber(int max) => Random().nextInt(100);
