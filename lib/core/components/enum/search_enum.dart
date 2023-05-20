enum SearchEnum {
  hotelSearch,
  airportSearch,
  flightSearch;

  bool get isHotelSearch => this == SearchEnum.hotelSearch;
  bool get isAirportSearch => this == SearchEnum.airportSearch;
  bool get isFlightSearch => this == SearchEnum.flightSearch;
}
