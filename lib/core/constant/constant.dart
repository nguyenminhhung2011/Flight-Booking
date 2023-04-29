import 'dart:math';

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
String randomString() {
  const chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
  var rnd = Random(DateTime.now().microsecondsSinceEpoch);
  var result = '';
  for (var i = 0; i < 10; i++) {
    result += chars[rnd.nextInt(chars.length)];
  }

  return result;
}
