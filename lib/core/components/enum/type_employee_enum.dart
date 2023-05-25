enum TypeEmployeeEnum {
  flightAttendant,
  cabinCrew,
  pilot,
  firstOfficer;

  String get displayValue => switch (this) {
        TypeEmployeeEnum.flightAttendant => "Flight attendant",
        TypeEmployeeEnum.cabinCrew => "Cabin crew",
        TypeEmployeeEnum.pilot => "Pilot",
        _ => "First Officer",
      };
}
