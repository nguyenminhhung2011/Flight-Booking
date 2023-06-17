import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String convertTime(int value) {
  return '${value >= 12 ? value - 12 : value}:00 ${value >= 12 ? 'PM' : 'AM'}';
}

int getMinBetweenDates(DateTime start, DateTime end) {
  int result = end.difference(start).inMinutes;
  return result;
}

int checkDateBetween(DateTime start, DateTime end) {
  DateTime now = DateTime.now();
  if (now.isBefore(start)) {
    return 0;
  } else if (now.isAfter(end)) {
    return 2;
  }
  return 1;
}

String getYmdFormat(DateTime dateTime) {
  return DateFormat().add_yMd().format(dateTime);
}

String getYmdHmFormat(DateTime dateTime) {
  return DateFormat().add_yMd().add_Hm().format(dateTime);
}

String getjmFormat(DateTime dateTime) {
  return DateFormat().add_jm().format(dateTime);
}

String getRangeDateFormat(DateTime startDate, DateTime endDate) =>
    '${DateFormat().add_yMEd().format(startDate)} - ${DateFormat().add_yMEd().format(endDate)}';

int hoursBetween(DateTime from, DateTime to) {
  from = DateTime(from.year, from.month, from.day);
  to = DateTime(to.year, to.month, to.day);
  return to.difference(from).inHours;
}

int minutesBetween(DateTime from, DateTime to) {
  from = DateTime(from.year, from.month, from.day);
  to = DateTime(to.year, to.month, to.day);
  return to.difference(from).inMinutes;
}

String displayHoursMinutesBetween(DateTime from, DateTime to) {
  var hours = hoursBetween(from, to);
  var minutes = minutesBetween(from, to);
  return '$hours h $minutes m';
}

String getDayInWeek(DateTime time) => DateFormat().add_E().format(time);

String getFlightTime({required DateTime from, required DateTime to}) =>
    "${getDayInWeek(from).toUpperCase()} ${DateFormat().add_MMMMd().format(from)}  ${DateFormat().add_Hm().format(from)}  -  ${getDayInWeek(to).toUpperCase()} ${DateFormat().add_MMMMd().format(to)}  ${DateFormat().add_Hm().format(to)}";
String getMMMMEEEd(DateTime time) =>
    DateFormat().add_MMMMEEEEd().add_Hm().format(time);

TimeOfDay intToTimeLeft(int? value) {
  if (value == null) {
    return const TimeOfDay(hour: 5, minute: 0);
  }
  int h, m;

  h = value ~/ 3600;

  m = ((value - h * 3600)) ~/ 60;

  return TimeOfDay(hour: h, minute: m);
}

int timeOfDayToInt(TimeOfDay time) => time.hour * 3600 + time.minute * 60;

Duration durationBetweenDate(DateTime from, DateTime to) => to.difference(from);
