import 'package:flutter/material.dart';

import '../../../../core/constant/handle_time.dart';

class ScheduleItem extends StatelessWidget {
  const ScheduleItem({
    Key? key,
    required this.schedule,
    required this.i,
    required this.height,
    required this.context,
  }) : super(key: key);

  final List<Map<String, dynamic>> schedule;
  final int i;
  final double height;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: height,
      margin: const EdgeInsets.only(right: 10.0),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 10.0)],
      ),
      width: double.infinity,
      child: height > (60 * 2 - 15)
          ? Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'BDO ',
                            maxLines: 1,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                          ),
                          // const SizedBox(height: 10),
                          Text(
                            schedule[i]['title'],
                            maxLines: 1,
                            textAlign: TextAlign.start,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    Icon(
                      Icons.timelapse_sharp,
                      color: Theme.of(context).primaryColor,
                    ),
                    Expanded(
                      child: Text(
                        ' ${getjmFormat(schedule[i]['begin'])} - ${getjmFormat(schedule[i]['end'])}',
                        maxLines: 1,
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  color: Theme.of(context).primaryColorLight,
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          : Row(
              children: [
                const SizedBox(width: 5),
                Expanded(
                  child: Text(
                    schedule[i]['title'],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
    );
  }
}
