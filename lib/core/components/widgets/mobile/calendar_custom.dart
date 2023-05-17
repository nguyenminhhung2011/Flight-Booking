import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flight_booking/app_coordinator.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

enum CalendarType {
  timelineCalendar, //done
  tableCalendar;

  bool get isTableCalendar => this == CalendarType.tableCalendar;
  bool get isTimelineCalendar => this == CalendarType.timelineCalendar;
}

class CalendarCustom extends StatefulWidget {
  final CalendarType type;
  final Function(DateTime) onSelectedDate;
  final String? headerText;
  const CalendarCustom({
    super.key,
    required this.type,
    this.headerText,
    required this.onSelectedDate,
  });

  @override
  State<CalendarCustom> createState() => _CalendarCustomState();
}

class _CalendarCustomState extends State<CalendarCustom> {
  final DateTime dateNow = DateTime.now();
  @override
  Widget build(BuildContext context) {
    if (widget.type.isTimelineCalendar) {
      return CalendarTimelineCustom(
        ondateSelected: widget.onSelectedDate,
        headerText: widget.headerText,
        rangeMonth: DateTime(dateNow.year, dateNow.month, 0),
      );
    }
    return const SizedBox();
  }
}

class CalenderStyle {
  final double? paddingLeft;
  final double? paddingRight;
  final double? paddingTop;
  final double? paddingBottom;
  CalenderStyle({
    this.paddingLeft,
    this.paddingRight,
    this.paddingTop,
    this.paddingBottom,
  });
}

// class TableCalendarCustom extends StatefulWidget {
//   const TableCalendarCustom({super.key});

//   @override
//   State<TableCalendarCustom> createState() => _TableCaendarStateCustom();
// }

// class _TableCaendarStateCustom extends State<TableCalendarCustom> {
//   CalendarFormat format = CalendarFormat.month;
//   @override
//   Widget build(BuildContext context) {
//     return TableCalendar(
//       rowHeight: 60.0,
//       daysOfWeekHeight: 30.0,
//       focusedDay: selectedDay,
//       firstDay: DateTime(1990),
//       lastDay: DateTime(2050),
//       calendarFormat: format,
//       headerVisible: false,
//       calendarBuilders: CalendarBuilders(dowBuilder: (context, day) {
//         final text = DateFormat.E().format(day);

//         return Center(
//           child: Text(
//             text,
//             style: TextStyle(
//               color:
//                   day.day == DateTime.sunday || day.weekday == DateTime.saturday
//                       ? Theme.of(c)
//                       : Colors.grey,
//               fontWeight: FontWeight.bold,
//               fontSize: 12.0,
//             ),
//           ),
//         );
//       }, //app_icon1.png
//           prioritizedBuilder: ((context, day, focusedDay) {
//         final key = '${day.year}/${day.month}/${day.day}';
//         return Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(30.0),
//                   color: checkIsSameDate(day, focusedDay)
//                       ? Theme.of(context).primaryColor
//                       : Colors.transparent,
//                 ),
//                 child: Text(
//                   day.day.toString(),
//                   style: TextStyle(
//                     color: checkIsSameDate(day, focusedDay)
//                         ? Colors.white
//                         : AppColors.textColor,
//                     fontWeight: FontWeight.w600,
//                     fontSize: 10.0,
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: Container(
//                   decoration: BoxDecoration(
//                       // image: DecorationImage(
//                       //   fit: BoxFit.cover,
//                       //   image: AssetImage(
//                       //     (!checkIsSameDate(day, DateTime.now()))
//                       //         ? selectedEvents.containsKey(key)
//                       //             ? 'assets/images/app_icon.png'
//                       //             : 'assets/images/app_icon3.png'
//                       //         : 'assets/images/app_icon1.png',
//                       //   ),
//                       // ),
//                       ),
//                 ),
//               ),
//             ],
//           ),
//         );
//       })),

//       onFormatChanged: (CalendarFormat _) {
//         setState(() {
//           format = _;
//         });
//       },
//       startingDayOfWeek: StartingDayOfWeek.sunday,
//       daysOfWeekVisible: true,

//       //Day Changed
//       onDaySelected: (DateTime selectDay, DateTime focusDay) {
//         setState(() {
//           // selectedDay = selectDay;
//           // focusedDay = focusDay;
//         });
//       },
//       selectedDayPredicate: (DateTime date) {
//         return true;
//         // return isSameDay(selectedDay, date);
//       },
//       // eventLoader: ,

//       daysOfWeekStyle: DaysOfWeekStyle(
//         weekdayStyle: const TextStyle(
//           color: Colors.white,
//           fontWeight: FontWeight.bold,
//         ),
//         weekendStyle: TextStyle(
//           color: Theme.of(context).primaryColor,
//           fontWeight: FontWeight.bold,
//         ),
//       ),

//       // daysOfWeekStyle: TextStyle(),
//     );
//   }
// }

typedef OnDateSelected = void Function(DateTime);

class CalendarTimelineCustom extends StatefulWidget {
  final DateTime rangeMonth;
  final OnDateSelected ondateSelected;
  final Color? activeDayColor;
  final Duration? scrollDuration;
  final String? headerText;
  final double? spacingItem;
  const CalendarTimelineCustom({
    super.key,
    required this.ondateSelected,
    this.activeDayColor,
    required this.rangeMonth,
    this.scrollDuration,
    this.headerText,
    this.spacingItem,
  });

  @override
  State<CalendarTimelineCustom> createState() => _CalendarTimelineCustomState();
}

class _CalendarTimelineCustomState extends State<CalendarTimelineCustom> {
  final ItemScrollController _scrollControllerDay = ItemScrollController();

  final ValueNotifier<int> _daySelectedIndex = ValueNotifier<int>(0);

  final List<DateTime> _days = [];

  DateTime _selectedDate = DateTime.now();
  late double _scrollAligment;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _initCalendar();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void didUpdateWidget(CalendarTimelineCustom oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.rangeMonth.month != _selectedDate.month ||
        widget.rangeMonth.year != _selectedDate.year) {
      _initCalendar();
    }
  }

  void _initCalendar() {
    _generateDays(_selectedDate);
    _selectedDateIndex();
    _moveToDayIndex(_daySelectedIndex.value);
  }

  void _generateDays(DateTime? selectedDate) {
    _days.clear();
    for (int i = 1; i <= 31; i++) {
      final day = DateTime(selectedDate!.year, selectedDate.month, i);
      if (day.difference(widget.rangeMonth).inDays < 0) continue;
      _days.add(day);
    }
  }

  void _selectedDateIndex() {
    _daySelectedIndex.value = _days.indexOf(
      _days.firstWhere((element) => element.day == _selectedDate.day),
    );
  }

  void _moveToDayIndex(int index) {
    if (_scrollControllerDay.isAttached) {
      _scrollControllerDay.scrollTo(
        index: index,
        alignment: _scrollAligment,
        duration: widget.scrollDuration ?? const Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
    }
  }

  void _onSelectDay(int index) {
    _daySelectedIndex.value = index;
    _moveToDayIndex(index);
    _selectedDate = _days[index];
    widget.ondateSelected(_days[index]);
  }

  bool _isSelectedDay(int index) =>
      (index == _daySelectedIndex.value || index == _indexOfDay(_selectedDate));

  int _indexOfDay(DateTime date) {
    try {
      return _days.indexOf(
        _days.firstWhere(
          (dayDate) =>
              dayDate.day == date.day &&
              dayDate.month == date.month &&
              dayDate.year == date.year,
        ),
      );
    } catch (_) {
      return -1;
    }
  }

  void _onSelectedMonth() async {
    final result = await context.pickDate(DatePickerMode.year);
    if (result != null) {
      _generateDays(result);
      _selectedDateIndex();
      _moveToDayIndex(_daySelectedIndex.value);
      _onSelectDay(0);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final widthDevice = MediaQuery.of(context).size.width;
    _scrollAligment = (widthDevice / 2 - 36.5) / widthDevice;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            const SizedBox(width: 10.0),
            Text(
              widget.headerText ?? '',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const Spacer(),
            TextButton(
              onPressed: _onSelectedMonth,
              child: Text(
                'Select month',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontWeight: FontWeight.w400,
                    color: Theme.of(context).primaryColor),
              ),
            )
          ],
        ),
        const SizedBox(height: 5.0),
        ValueListenableBuilder<int>(
          valueListenable: _daySelectedIndex,
          builder: (context, daySelectedIndex, child) {
            return SizedBox(
              width: double.infinity,
              height: 100.0,
              child: ScrollablePositionedList.builder(
                scrollDirection: Axis.horizontal,
                itemScrollController: _scrollControllerDay,
                initialScrollIndex: _daySelectedIndex.value,
                initialAlignment: _scrollAligment,
                itemCount: _days.length,
                padding: const EdgeInsets.all(5.0),
                itemBuilder: (context, index) {
                  final currentDay = _days[index];
                  final shortName =
                      DateFormat.E('en_ISO').format(currentDay).capitalize();
                  final bool isSelectedDate = _isSelectedDay(index);
                  return Row(
                    children: [
                      GestureDetector(
                        onTap: () => _onSelectDay(index),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15.0,
                            vertical: 10.0,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: isSelectedDate
                                ? widget.activeDayColor ??
                                    Theme.of(context).primaryColor
                                : Colors.transparent,
                            border: Border.all(
                                width: 1,
                                color: Theme.of(context).dividerColor),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                currentDay.day.toString(),
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(
                                      color:
                                          isSelectedDate ? Colors.white : null,
                                      fontWeight: isSelectedDate
                                          ? FontWeight.bold
                                          : FontWeight.w500,
                                      fontSize: 34,
                                    ),
                              ),
                              const SizedBox(height: 2.0),
                              Text(
                                shortName,
                                style: TextStyle(
                                  color: isSelectedDate ? Colors.white : null,
                                  fontWeight: FontWeight.bold,
                                  // fontSize: shrink ? 9 : 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      if (index != _days.length - 1)
                        SizedBox(width: widget.spacingItem ?? 10),
                    ],
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
