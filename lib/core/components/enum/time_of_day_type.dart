enum TimeOfDayType {
  openTime,
  closeTime;

  bool get isOpenTime => this == TimeOfDayType.openTime;
}
