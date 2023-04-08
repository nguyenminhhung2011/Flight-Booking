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
