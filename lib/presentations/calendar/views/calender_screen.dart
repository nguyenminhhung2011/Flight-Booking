import 'package:flight_booking/core/components/widgets/button_border.dart';
import 'package:flight_booking/core/components/widgets/custom_image.dart';
import 'package:flight_booking/presentations/calendar/views/widget/schedule_item.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../core/constant/constant.dart';
import '../../../core/constant/handle_time.dart';
import '../../../generated/l10n.dart';

class CalenderScreen extends StatefulWidget {
  const CalenderScreen({
    super.key,
  });

  @override
  State<CalenderScreen> createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen> {
  ValueNotifier<int> selectTime = ValueNotifier<int>(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor.withOpacity(0.3),
      body: ListView(
        children: [
          const SizedBox(
            width: double.infinity,
            height: 400.0,
            child: CustomImage(
              fit: BoxFit.cover,
              imageUrl:
                  'https://i2-prod.mirror.co.uk/incoming/article3546653.ece/ALTERNATES/s615b/CityJet-airplane.jpg',
            ),
          ),
          const SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        S.of(context).activities,
                        maxLines: 1,
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'November 02,2021',
                        maxLines: 1,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
                ButtonBorder(
                  onPress: () {},
                  children: [
                    const Icon(Icons.add, size: 16.0),
                    Text(
                      S.of(context).addPlan,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: const [
                  BoxShadow(color: Colors.black26, blurRadius: 10.0)
                ],
              ),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                              '${DateFormat().add_MMMM().format(DateTime.now())} ${DateFormat().add_d().format(DateTime.now())}',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(fontWeight: FontWeight.bold)),
                          const Spacer(),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              'Select Week',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                      decoration: TextDecoration.underline),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '10 tasks',
                        style: Theme.of(context).textTheme.titleMedium,
                      )
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  ValueListenableBuilder(
                    valueListenable: selectTime,
                    builder: (context, selecting, child) => SizedBox(
                      height: 100,
                      width: double.infinity,
                      child: Row(
                        children: [
                          for (int i = 0; i < 7; i++)
                            Expanded(
                              flex: 1,
                              child: itemBuilder(
                                  i, weekDays, selecting == i, context, () {
                                selectTime.value = i;
                              }),
                            )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    children: [
                      const SizedBox(width: 100),
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Theme.of(context).dividerColor),
                      ),
                      Expanded(
                        child: Container(
                            height: 1, color: Theme.of(context).dividerColor),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  _calenderField(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget itemBuilder(int i, List<String> weekDays, bool check,
      BuildContext context, Function() onPress) {
    return InkWell(
      borderRadius: BorderRadius.circular(35),
      onTap: onPress,
      child: Stack(
        children: [
          Center(
            child: AnimatedContainer(
              curve: Curves.fastLinearToSlowEaseIn,
              duration: const Duration(milliseconds: 500),
              alignment: Alignment.center,
              height: (check) ? 100 : 0,
              width: check ? 50 : 0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                color: Colors.blue[300],
              ),
            ),
          ),
          Center(
            child: Container(
              height: 100,
              margin: const EdgeInsets.symmetric(horizontal: 5),
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    (i + 10).toString(),
                    // textAlign: TextAlign.center,
                    maxLines: 1,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    weekDays[i],
                    // textAlign: TextAlign.center,
                    maxLines: 1,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  SizedBox _calenderField(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 1500,
      child: Row(
        children: [
          SizedBox(
            width: 100,
            child: Column(
              children: [
                for (int i = 0; i < 24; i++)
                  Container(
                    height: 60,
                    alignment: Alignment.topCenter,
                    child: Text(
                      convertTime(i),
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                for (int i = 1; i < schedule.length; i++)
                  Column(
                    children: [
                      SizedBox(
                        height: getMinBetweenDates(
                                schedule[i - 1]['end'], schedule[i]['begin']) *
                            1.0,
                      ),
                      ScheduleItem(
                        schedule: schedule,
                        i: i,
                        height: getMinBetweenDates(
                              schedule[i]['begin'],
                              schedule[i]['end'],
                            ) *
                            1.0,
                        context: context,
                      ),
                    ],
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
