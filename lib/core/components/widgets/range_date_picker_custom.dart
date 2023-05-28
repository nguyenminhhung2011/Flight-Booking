import 'package:flight_booking/core/components/widgets/mobile/button_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../../generated/l10n.dart';
import 'card_custom.dart';

enum RangeDatePicType { weekRange, autoRange }

class RangeDateController extends ChangeNotifier {
  RangeDateController() {
    getStartDateAndFinishDate();
    updateDatesUI();
  }

  final DateRangePickerController _datePick = DateRangePickerController();

  List<DateTime> _listDate = <DateTime>[];

  DateTime _startDate = DateTime.now();
  DateTime _endDate = DateTime.now();

  //☀️Display UI
  List<DateTime> _listDateUI = <DateTime>[];
  List<DateTime> get listDateUI => _listDateUI;

  DateRangePickerController get datePick => _datePick;
  List<DateTime> get listDate => _listDate;

  DateTime get startDate => _startDate;
  DateTime get endDate => _endDate;

  @override
  void dispose() {
    _datePick.dispose();
    super.dispose();
  }

  void updateDatesUI() {
    _listDateUI = listDate;
    notifyListeners();
  }

  void getStartDateAndFinishDate() {
    DateTime now = DateTime.now();
    int weekDay = now.weekday == 7 ? 0 : now.weekday;
    _startDate = DateTime.now();
    _endDate = DateTime.now();
    for (int i = 0; i < weekDay; i++) {
      _startDate = _startDate.add(const Duration(days: -1));
    }
    for (int i = 0; i < 6 - weekDay; i++) {
      _endDate = _endDate.add(const Duration(days: 1));
    }
    _listDate = List<DateTime>.generate(
        7, (index) => _startDate.add(Duration(days: index)));
    notifyListeners();
  }

  void _updateStartEndDate(PickerDateRange ranges) {
    _startDate = ranges.startDate!;
    _endDate = (ranges.endDate ?? ranges.startDate)!;
    if (_startDate.isAfter(_endDate)) {
      var date = _startDate;
      _startDate = _endDate;
      _endDate = date;
    }
    notifyListeners();
  }

  List<DateTime> _updateListDatePic() =>
      List<DateTime>.generate(_endDate.difference(_startDate).inDays + 1,
          (index) {
        DateTime date = _startDate;
        return date.add(Duration(days: index));
      });

  void selectionChanged(DateRangePickerSelectionChangedArgs args) {
    PickerDateRange ranges = args.value;
    _updateStartEndDate(ranges);

    _datePick.selectedRange = PickerDateRange(_startDate, _endDate);

    _listDate = _updateListDatePic();
    notifyListeners();
  }

  bool isSameDate(DateTime date1, DateTime date2) {
    if (date2 == date1) {
      return true;
    }
    // ignore: unnecessary_null_comparison
    if (date1 == null || date2 == null) {
      return false;
    }
    return date1.month == date2.month &&
        date1.year == date2.year &&
        date1.day == date2.day;
  }

  void selectionChangedInWeek(DateRangePickerSelectionChangedArgs args) {
    int firstDayOfWeek = DateTime.sunday % 7;
    int endDayOfWeek = (firstDayOfWeek - 1) % 7;
    endDayOfWeek = endDayOfWeek < 0 ? 7 + endDayOfWeek : endDayOfWeek;
    PickerDateRange ranges = args.value;
    _updateStartEndDate(ranges);
    int day1 = _startDate.weekday % 7;
    int day2 = _endDate.weekday % 7;

    DateTime dat1 = _startDate.add(Duration(days: (firstDayOfWeek - day1)));
    DateTime dat2 = _endDate.add(Duration(days: (endDayOfWeek - day2)));
    if (!isSameDate(dat1, ranges.startDate!) ||
        !isSameDate(dat2, ranges.endDate!)) {
      datePick.selectedRange = PickerDateRange(dat1, dat2);
    }
    _listDate = _updateListDatePic();
    notifyListeners();
  }
}

class RangeDatePicDialog extends StatefulWidget {
  final RangeDateController rangeDateController;
  final double? height;
  final RangeDatePicType? rangeDatePicType;
  final TextStyle? selectionTextStyle;
  final TextStyle? rangeTextStyle;
  final TextStyle? monthCellStyle;
  final TextStyle? headerStyle;
  final Color? primeColor;
  final bool? isCircle;
  const RangeDatePicDialog({
    super.key,
    required this.rangeDateController,
    this.height,
    this.rangeDatePicType = RangeDatePicType.autoRange,
    this.selectionTextStyle,
    this.rangeTextStyle,
    this.monthCellStyle,
    this.primeColor,
    this.headerStyle,
    this.isCircle = false,
  });

  @override
  State<RangeDatePicDialog> createState() => _RangeDatePicDialogState();
}

class _RangeDatePicDialogState extends State<RangeDatePicDialog> {
  @override
  void initState() {
    super.initState();
  }

  void popDia() {
    widget.rangeDateController.updateDatesUI();
    Navigator.of(context).pop(widget.rangeDateController.listDateUI);
  }

  @override
  Widget build(BuildContext context) {
    return CardCustom(
      width: Breakpoints.mediumAndUp.isActive(context) ? 400 : double.infinity,
      height: widget.height ?? double.infinity,
      child: Column(
        children: [
          Expanded(
            child: SfDateRangePicker(
              selectionTextStyle: widget.selectionTextStyle ??
                  Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.white),
              rangeTextStyle: widget.rangeTextStyle ??
                  Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.white),
              selectionShape: widget.isCircle!
                  ? DateRangePickerSelectionShape.circle
                  : DateRangePickerSelectionShape.rectangle,
              headerStyle: DateRangePickerHeaderStyle(
                textStyle: widget.headerStyle ??
                    Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                        ),
              ),
              monthCellStyle: DateRangePickerMonthCellStyle(
                textStyle: widget.monthCellStyle ??
                    Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.grey),
              ),
              startRangeSelectionColor: Theme.of(context).primaryColor,
              endRangeSelectionColor: Theme.of(context).primaryColor,
              selectionColor:
                  widget.primeColor ?? Theme.of(context).primaryColor,
              rangeSelectionColor: widget.primeColor ??
                  Theme.of(context).primaryColor.withOpacity(0.3),
              todayHighlightColor:
                  widget.primeColor ?? Theme.of(context).primaryColor,
              controller: widget.rangeDateController.datePick,
              view: DateRangePickerView.month,
              selectionMode: DateRangePickerSelectionMode.range,
              onSelectionChanged:
                  widget.rangeDatePicType == RangeDatePicType.autoRange
                      ? widget.rangeDateController.selectionChanged
                      : widget.rangeDateController.selectionChangedInWeek,
              monthViewSettings: const DateRangePickerMonthViewSettings(
                enableSwipeSelection: false,
              ),
            ),
          ),
          const SizedBox(height: 30.0),
          SizedBox(
            height: 50.0,
            width: double.infinity,
            child: ButtonCustom(
              onPress: popDia,
              child: Text(S.of(context).update),
            ),
          )
        ],
      ),
    );
  }
}
