extension StringExtension on String {
  String get subPlaceAndUpcase =>
      length > 3 ? substring(0, 3).toUpperCase() : toUpperCase();
}
