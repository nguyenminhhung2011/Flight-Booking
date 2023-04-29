import 'package:flutter/material.dart';

class ConsistenceBooking extends StatefulWidget {
  final List<Map<String, dynamic>> fakeDataCommit;
  const ConsistenceBooking({super.key, required this.fakeDataCommit});

  @override
  State<ConsistenceBooking> createState() => _ConsistenceBookingState();
}

class _ConsistenceBookingState extends State<ConsistenceBooking> {
  List<String> weekDays = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec'
  ];
  int checkConstainInList(DateTime time) {
    for (var item in widget.fakeDataCommit) {
      if (time.day == item['time'].day &&
          time.month == item['time'].month &&
          time.year == item['time'].year) {
        return item['commit'];
      }
    }
    return -1;
  }

  List<DateTime> listDateTime = [
    for (int i = 0; i < 400; i++)
      DateTime.now().subtract(const Duration(days: 10)).add(Duration(days: i))
  ];
  int get maxList => widget.fakeDataCommit
      .fold<int>(0, (max, e) => e['commit'] > max ? e['commit'] : max);
  int getStart() {
    int count = 0;
    for (var item in listDateTime) {
      if (item.weekday != 1) {
        count++;
      } else {
        break;
      }
    }
    return count;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 140,
      child: Row(
        children: [
          SizedBox(
            width: 30,
            height: 140,
            child: Column(
              children: [
                ...weekDays.map(
                  (e) => Expanded(
                    child: Text(
                      e,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              children: middleGithubField(getStart(), maxList),
            ),
          )
        ],
      ),
    );
  }

  List<Widget> middleGithubField(int middleData, int maxOfList) {
    int middle = ((listDateTime.length - middleData) / 7).floor();

    return [
      Column(
        children: [
          for (int i = 1; i <= 7; i++) startContainerGit(i, maxOfList),
        ],
      ),
      for (int i = 0; i < middle; i++)
        Column(
          children: [
            for (int j = 0; j < 7; j++)
              middleContainerGIt(middleData, i, j, maxOfList),
          ],
        ),
      Column(
        children: [
          for (int i = 0;
              i <
                  (listDateTime.length - middleData) -
                      ((listDateTime.length - middleData) / 7).floor() * 7;
              i++)
            endContainerGit(middle, i, middleData, maxOfList),
        ],
      )
    ];
  }

  Expanded startContainerGit(int i, int maxList) {
    int check = 0;
    if (i >= listDateTime[0].weekday) {
      check = checkConstainInList(listDateTime[i - listDateTime[0].weekday]);
    }
    return Expanded(
      child: Container(
        height: 15,
        width: 15,
        margin: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          color: (i >= listDateTime[0].weekday)
              ? (check > 0)
                  ? Colors.green.withOpacity(check / maxList)
                  : Colors.grey
              : Colors.transparent,
        ),
      ),
    );
  }

  Container endContainerGit(int middle, int i, int middleData, int maxOfList) {
    int check =
        (checkConstainInList(listDateTime[middle * 7 + i + middleData]));
    return Container(
      height: 16,
      width: 16,
      margin: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: (check > 0)
            ? Colors.green.withOpacity(check / maxOfList)
            : Colors.grey,
      ),
    );
  }

  Expanded middleContainerGIt(int middleData, int i, int j, int maxOfList) {
    int check = checkConstainInList(listDateTime[middleData + 7 * i + j]);
    return Expanded(
      child: Container(
        height: 15,
        width: 15,
        margin: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          color: (check > 0)
              ? Colors.green.withOpacity(check / maxOfList)
              : Colors.grey,
        ),
      ),
    );
  }
}
