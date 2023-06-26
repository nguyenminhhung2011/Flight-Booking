extension StringExtension on String {
  String get subPlaceAndUpcase =>
      length > 3 ? substring(0, 3).toUpperCase() : toUpperCase();

  List<String> groupString() {
    var result = <String>[];
    for (int i = 0; i <= 8; i += 4) {
      var subString = substring(i, i + 4);
      result.add(subString);
    }
    result.add(substring(12, length));
    return result;
  }

  String get subString => substring(0, contains(',') ? indexOf(',') : length);
}
