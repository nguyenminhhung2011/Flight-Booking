enum TypeEmployeeEnum {
  flightAttendant,
  cabinCrew,
  pilot,
  firstOfficer;

  String get displayValue {
    switch (this) {
      case TypeEmployeeEnum.flightAttendant:
        return "Flight attendant";
      case TypeEmployeeEnum.cabinCrew:
        return "Cabin crew";
      case TypeEmployeeEnum.pilot:
        return "Pilot";
      case TypeEmployeeEnum.firstOfficer:
        return "First Officer";
    }
  }
}
