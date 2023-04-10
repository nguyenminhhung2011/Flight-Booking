enum ViewEnum {
  overViewScreen,
  allTicketScreen;

  int get displayValue {
    switch (this) {
      case ViewEnum.overViewScreen:
        return 0;
      case ViewEnum.allTicketScreen:
        return 1;
    }
  }

  ViewEnum convertViewEnum(int index) {
    switch (index) {
      case 0:
        return ViewEnum.overViewScreen;
      case 1:
        return ViewEnum.allTicketScreen;
      default:
        return ViewEnum.overViewScreen;
    }
  }
}
