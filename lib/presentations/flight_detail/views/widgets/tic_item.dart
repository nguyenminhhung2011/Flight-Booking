import 'package:flutter/material.dart';

import '../../../../core/config/color_config.dart';
import '../../../../generated/l10n.dart';

class TicItem extends StatelessWidget {
  const TicItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Theme.of(context).cardColor,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor.withOpacity(0.1),
            blurRadius: 10.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'DA-4301',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(fontWeight: FontWeight.w400),
              ),
              const Spacer(),
              Text(
                'B10',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: CommonColor.primaryColor,
                    ),
              ),
            ],
          ),
          Text(
            'Nguyen Minh Hung',
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _Fie(context, '20/11/2002'),
              const SizedBox(width: 5.0),
              _Fie(context, '2 ${S.of(context).luggage}'),
            ],
          ),
        ].expand((element) => [element, const SizedBox(height: 5.0)]).toList()
          ..removeLast(),
      ),
    );
  }

  Container _Fie(BuildContext context, String tit) {
    return Container(
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        border: Border.all(width: 0.7, color: Theme.of(context).dividerColor),
        borderRadius: BorderRadius.circular(3.0),
      ),
      child: Text(
        tit,
        style: Theme.of(context).textTheme.titleSmall!.copyWith(
              fontSize: 12.0,
              fontWeight: FontWeight.w300,
            ),
      ),
    );
  }
}
