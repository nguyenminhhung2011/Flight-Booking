import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:collection/collection.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../generated/l10n.dart';

class SideMenu extends StatelessWidget {
  final int indexSelect;
  final VoidCallback call;
  final Function(int) callChangePage;
  const SideMenu(
      {super.key,
      required this.call,
      required this.indexSelect,
      required this.callChangePage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(5.0),
        height: double.infinity,
        width: 288,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 1, color: Colors.grey),
                  ),
                  child: const Icon(Icons.person, color: Colors.grey),
                ),
                const SizedBox(width: 5.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nguyen Minh Hung',
                        maxLines: 1,
                        style: context.titleMedium.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'User',
                        maxLines: 1,
                        style: context.titleSmall.copyWith(color: Colors.grey),
                      )
                    ],
                  ),
                ),
                IconButton(
                  onPressed: call,
                  icon: const Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const Divider(color: Colors.grey),
            ...dashboardItem.mapIndexed(
              (index, e) => Stack(
                children: [
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 200),
                    height: 56,
                    width: index == indexSelect ? 268 : 0,
                    left: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => callChangePage(index),
                    child: ListTile(
                      leading: SvgPicture.asset(
                        e['icon'],
                        color: Colors.white,
                      ),
                      title: Text(
                        e['tit'],
                        style:
                            context.titleMedium.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(color: Colors.grey),
            GestureDetector(
              onTap: () {
                AdaptiveTheme.of(context).setLight();
              },
              child: ListTile(
                leading: Text(
                  S.of(context).lightTheme,
                  style: context.titleMedium.copyWith(color: Colors.white),
                ),
                trailing: const Icon(Icons.light_mode, color: Colors.white),
              ),
            )
          ]
              .expand((element) => [element, const SizedBox(height: 10.0)])
              .toList(),
        ),
      ),
    );
  }
}
