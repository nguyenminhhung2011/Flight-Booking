import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';

import '../../../../core/components/widgets/mobile/skeleton_custom.dart';
import '../../../../presentations/list_flight/views/widgets/dot_custom.dart';
import '../flight_detail_mobile_screen.dart';

class SkeltonFlightDetail extends StatelessWidget {
  const SkeltonFlightDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: const BorderRadius.vertical(
            top: Radius.circular(24.0), bottom: Radius.circular(24.0)),
      ),
      child: Column(
        children: [
          CardInformation(
            context: context,
            child: Column(
              children: [
                Row(
                  children: [
                    for (int i = 0; i < 2; i++) ...[
                      SkeletonContainer.rounded(
                        width: 100,
                        height: 30,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      const SizedBox(width: 10.0),
                    ]
                  ],
                ),
                Container(
                  height: 0.5,
                  width: double.infinity,
                  decoration: DottedDecoration(
                    linePosition: LinePosition.bottom,
                    color: Theme.of(context).dividerColor,
                  ),
                ),
                for (int i = 0; i < 2; i++)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (int i = 0; i < 2; i++)
                        SkeletonContainer.rounded(
                          width: 100,
                          height: 30,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                    ],
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for (int i = 0; i < 2; i++)
                      SkeletonContainer.rounded(
                        width: 130,
                        height: 45,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for (int i = 0; i < 2; i++)
                      SkeletonContainer.rounded(
                        width: 100,
                        height: 30,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                  ],
                ),
              ]
                  .expand((element) => [element, const SizedBox(height: 10.0)])
                  .toList()
                ..removeLast(),
            ),
          ),
          CardInformation(
            context: context,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SkeletonContainer.rounded(
                      width: 100,
                      height: 30,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ],
                ),
                const SizedBox(height: 15.0),
                const SizedBox(height: 7.0),
                DotCustom(
                  color: Theme.of(context).primaryColor,
                  full: true,
                  radius: 15.0,
                ),
                ...[0, 1]
                    .map<Widget>(
                      (e) => Container(
                        padding: const EdgeInsets.only(
                          left: 15.0,
                          top: 5.0,
                          bottom: 5.0,
                        ),
                        margin: const EdgeInsets.only(left: 7.0),
                        decoration: DottedDecoration(
                          linePosition: LinePosition.left,
                          strokeWidth: 1.5,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                for (int i = 0; i < 2; i++)
                                  SkeletonContainer.rounded(
                                    width: 130,
                                    height: 45,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                              ],
                            ),
                            const SizedBox(height: 10.0),
                            SkeletonContainer.rounded(
                              width: double.infinity,
                              height: 100,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ],
                        ),
                      ),
                    )
                    .expand(
                      (element) => [
                        element,
                        DotCustom(
                          color: Theme.of(context).primaryColor,
                          full: true,
                          radius: 15.0,
                        ),
                      ],
                    ),
                const SizedBox(height: 7.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
