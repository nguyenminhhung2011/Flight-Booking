import 'package:collection/collection.dart';
import 'package:flight_booking/presentations/dashboard/views/widgets/round_line.dart';
import 'package:flight_booking/presentations/dashboard/views/widgets/row_expanded.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../core/components/widgets/custom_image.dart';
import '../../../../core/components/widgets/list_member_quic_view.dart';
import '../../../../generated/l10n.dart';

class FlightInformationRow extends StatelessWidget {
  const FlightInformationRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: RowExpanded(
        children: [
          Row(
            children: [
              Stack(
                children: [
                  Container(
                    constraints:
                        const BoxConstraints(maxHeight: 50, maxWidth: 50),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      color: Colors.white,
                      border: Border.fromBorderSide(
                          BorderSide(color: Colors.white)),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: const CustomImage(
                        imageUrl:
                            'https://pipedream.com/s.v0/app_mWnhBo/logo/orig',
                      ),
                    ),
                  ),
                  Positioned(
                    left: 30,
                    top: 30,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).shadowColor,
                          shape: BoxShape.circle,
                        ),
                        padding: const EdgeInsets.all(5.0),
                        child: const Icon(
                          Icons.add,
                          color: Colors.blue,
                          size: 10.0,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              _timeLocation(context, '06:30', 'Singapore'),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "${S.of(context).duration} : 2:30",
                      maxLines: 1,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    const SizedBox(height: 5.0),
                    RoundedLine(
                      color: Theme.of(context).primaryColorLight,
                      width: double.infinity,
                    ),
                    const SizedBox(height: 5.0),
                    Row(
                      children: [
                        ...['Sin', 'Ban'].map(
                          (e) => Text(
                            e,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.0,
                                ),
                          ),
                        ),
                      ]
                          .expandIndexed(
                            (index, element) => [
                              Expanded(
                                child: Align(
                                    alignment: index == 0
                                        ? Alignment.centerLeft
                                        : Alignment.centerRight,
                                    child: element),
                              )
                            ],
                          )
                          .toList(),
                    ),
                  ],
                ),
              ),
              _timeLocation(context, '08:30', 'Bandung'),
            ]
                .expand(
                  (element) => [element, const SizedBox(width: 15.0)],
                )
                .toList(),
          ),
          Text(
            DateFormat.yMd().format(DateTime.now()),
            maxLines: 1,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          SizedBox(
            height: 30.0,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ListMemberQuickView(
                  listImage: [
                    for (int i = 0; i < 5; i++)
                      'https://pipedream.com/s.v0/app_mWnhBo/logo/orig'
                  ],
                  length: 5,
                  size: 30.0,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column _timeLocation(BuildContext context, String time, String location) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          time,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        Text(
          location,
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                fontWeight: FontWeight.w400,
              ),
        ),
      ],
    );
  }
}
