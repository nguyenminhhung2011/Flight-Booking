import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/const/image_const.dart';
import 'package:flight_booking/core/components/widgets/extension/color_extension.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/constant/handle_time.dart';
import 'package:flight_booking/presentations/list_flight/views/widgets/dot_custom.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:table_calendar/table_calendar.dart';

import '../range_date_picker_custom.dart';

enum CalendarType {
  timelineCalendar, //done ✅
  dayCalendar, //
  tableCalendar; // 80%

  bool get isTableCalendar => this == CalendarType.tableCalendar;
  bool get isTimelineCalendar => this == CalendarType.timelineCalendar;
}

class CalendarCustom extends StatefulWidget {
  final CalendarType type;
  final Function(DateTime) onSelectedDate;
  final String? headerText;
  final CalenderStyleCustom style;
  const CalendarCustom({
    super.key,
    this.headerText,
    required this.type,
    required this.onSelectedDate,
    required this.style,
  });

  @override
  State<CalendarCustom> createState() => _CalendarCustomState();
}

class _CalendarCustomState extends State<CalendarCustom> {
  final controller = RangeDateController();
  final DateTime dateNow = DateTime.now();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.type.isTimelineCalendar) {
      return CalendarTimelineCustom(
        ondateSelected: widget.onSelectedDate,
        headerText: widget.headerText,
        rangeMonth: DateTime(dateNow.year, dateNow.month, 0),
      );
    }
    if (widget.type.isTableCalendar) {
      return TableCalendarCustom(
        style: widget.style,
      );
    }
    return ChangeNotifierProvider.value(
      value: controller,
      child: DayCalendar(style: widget.style),
    );
  }
}

// class CalendarCustomController extends ChangeNotifier {

//   RangeDateController _rangeDateController =

//   @override
//   void dispose(){
//     super.dispose();
//   }
// }

class DayCalendar extends StatefulWidget {
  final CalenderStyleCustom style;
  const DayCalendar({
    super.key,
    required this.style,
  });

  @override
  State<DayCalendar> createState() => _DayCalendarState();
}

class _DayCalendarState extends State<DayCalendar> {
  final ValueNotifier<DateTime> _dateSelected =
      ValueNotifier<DateTime>(DateTime.now());

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _onSelectDays(RangeDateController controller) async {
    final dates = await context.pickWeekRange(controller);
    if (dates != null && dates.isNotEmpty) {
      _dateSelected.value = dates.first;
    }
  }

  void _onDateSelected(DateTime time) {
    _dateSelected.value = time;
    if (widget.style.onSelected != null) {
      widget.style.onSelected!(time);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<RangeDateController>(
      builder: (context, model, child) {
        final listDates = model.listDateUI;
        return Padding(
          padding: EdgeInsets.only(
            left: widget.style.paddingLeft ?? 0.0,
            right: widget.style.paddingRight ?? 0.0,
            top: widget.style.paddingTop ?? 0.0,
            bottom: widget.style.paddingBottom ?? 0.0,
          ),
          child: Column(
            children: <Widget>[
              if (listDates.isNotEmpty)
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'From ${getYmdFormat(listDates.first)}',
                            style: context.titleSmall,
                          ),
                          const SizedBox(height: 5.0),
                          Text(
                            'To ${getYmdFormat(listDates.last)}',
                            style: context.titleSmall,
                          )
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () => _onSelectDays(model),
                      child: Text(
                        'Select month',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            fontWeight: FontWeight.w400,
                            color: Theme.of(context).primaryColor),
                      ),
                    )
                  ],
                ),
              const SizedBox(height: 10.0),
              if (listDates.isNotEmpty)
                ValueListenableBuilder(
                    valueListenable: _dateSelected,
                    builder: (context, dateSelected, child) {
                      return Row(
                        children: listDates
                            .map(
                              (e) => Expanded(
                                  child: DayCalendarItem(
                                onSelected: () => _onDateSelected(e),
                                time: e,
                                isSelected: model.isSameDate(e, dateSelected),
                              )),
                            )
                            .toList(),
                      );
                    })
            ],
          ),
        );
      },
    );
  }
}

class DayCalendarItem extends StatelessWidget {
  final Function() onSelected;
  final bool isSelected;
  final DateTime time;
  const DayCalendarItem({
    super.key,
    required this.onSelected,
    required this.isSelected,
    required this.time,
  });

  double get heightAnimatedContainer => isSelected ? 100.0 : 0.0;
  double get widthAnimatedContainer => isSelected ? 50.0 : 0.0;
  String get shortName => DateFormat.E('en_ISO').format(time).capitalize();

  @override
  Widget build(BuildContext context) {
    final textFontColor = isSelected
        ? Theme.of(context).primaryColor.fontColorByBackground
        : null;
    return InkWell(
      borderRadius: BorderRadius.circular(35),
      onTap: onSelected,
      child: Stack(
        children: [
          AnimatedContainer(
            curve: Curves.fastLinearToSlowEaseIn,
            duration: const Duration(milliseconds: 300),
            alignment: Alignment.center,
            height: heightAnimatedContainer,
            width: widthAnimatedContainer,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35.0),
              color: Theme.of(context).primaryColor,
            ),
          ),
          Center(
            child: Container(
              height: 100,
              width: 50.0,
              margin: const EdgeInsets.symmetric(horizontal: 5),
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    time.day.toString(),
                    // textAlign: TextAlign.center,
                    style: TextStyle(
                      color: textFontColor,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    shortName,
                    style: context.titleSmall.copyWith(
                      color: textFontColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  if (isSelected)
                    DotCustom(color: textFontColor!, full: true, radius: 5)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CalenderStyleCustom {
  final double? paddingLeft;
  final double? paddingRight;
  final double? paddingTop;
  final double? paddingBottom;
  final String? headerText;
  // user for table calendart
  final TextStyle? headerDayStyle;
  final TextStyle? dayStyle;
  final Widget? calendarIcon;
  final Function(DateTime)? onSelected;
  CalenderStyleCustom({
    this.paddingLeft,
    this.paddingRight,
    this.paddingTop,
    this.paddingBottom,
    this.headerDayStyle,
    this.dayStyle,
    this.calendarIcon,
    this.headerText,
    this.onSelected,
  });
}

class TableCalendarCustom extends StatefulWidget {
  final CalenderStyleCustom style;
  const TableCalendarCustom({super.key, required this.style});

  @override
  State<TableCalendarCustom> createState() => _TableCaendarStateCustom();
}

class _TableCaendarStateCustom extends State<TableCalendarCustom> {
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      rowHeight: 60.0,
      daysOfWeekHeight: 30.0,
      focusedDay: selectedDay,
      firstDay: DateTime(1990),
      lastDay: DateTime(2050),
      calendarFormat: format,
      headerVisible: false,
      calendarBuilders: CalendarBuilders(
        dowBuilder: (context, day) {
          final text = DateFormat.E().format(day);

          return Center(
            child: Text(text,
                style: widget.style.headerDayStyle ??
                    context.titleMedium.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                    )),
          );
        }, //app_icon1.png
        prioritizedBuilder: ((context, day, focusedDay) {
          // final key = '${day.year}/${day.month}/${day.day}';
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 2.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.transparent,
                  ),
                  child: Text(
                    day.day.toString(),
                    style: widget.style.dayStyle ??
                        context.titleSmall
                            .copyWith(fontWeight: FontWeight.w400),
                  ),
                ),
                Expanded(
                  child: widget.style.calendarIcon ??
                      Image.asset(
                        ImageConst.airplaneIcon,
                        color: Theme.of(context).primaryColor,
                      ),
                ),
              ],
            ),
          );
        }),
      ),

      onFormatChanged: (CalendarFormat _) {
        setState(() {
          format = _;
        });
      },
      startingDayOfWeek: StartingDayOfWeek.sunday,
      daysOfWeekVisible: true,

      //Day Changed
      onDaySelected: (DateTime selectDay, DateTime focusDay) {
        setState(() {
          // selectedDay = selectDay;
          // focusedDay = focusDay;
        });
      },
      selectedDayPredicate: (DateTime date) {
        return true;
        // return isSameDay(selectedDay, date);
      },
      daysOfWeekStyle: DaysOfWeekStyle(
        weekdayStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        weekendStyle: TextStyle(
          color: Theme.of(context).primaryColor,
          fontWeight: FontWeight.bold,
        ),
      ),

      // daysOfWeekStyle: TextStyle(),
    );
  }
}

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
