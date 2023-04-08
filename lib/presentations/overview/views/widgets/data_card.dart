import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';

import '../../../dashboard/views/widgets/check_expanded.dart';

class DataCard extends StatelessWidget {
  final Map<String, dynamic> data;
  const DataCard({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return CheckExpanded(
      check: Breakpoints.large.isActive(context),
      child: Container(
        margin: const EdgeInsets.all(10.0),
        width: double.infinity,
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: data['color'],
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).shadowColor.withOpacity(0.1),
              blurRadius: 10.0,
            )
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data['header'],
                    maxLines: 1,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colors.white),
                  ),
                  Wrap(
                    children: [
                      Text(
                        data['data'],
                        maxLines: 1,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 5.0),
                      Container(
                        padding: const EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: data['inc'] > 0 ? Colors.green : Colors.red),
                        child: Icon(
                          data['inc'] > 0
                              ? Icons.keyboard_arrow_up_outlined
                              : Icons.keyboard_arrow_down_outlined,
                          size: 10,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 5.0),
                      Text(
                        data['inc'].toString(),
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(fontSize: 11, color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50.0,
              width: 50.0,
              child: Image.asset(
                data['image'],
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
