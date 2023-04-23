import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../list_flight/views/widgets/rich_text_custom.dart';

class EmployeeItem extends StatelessWidget {
  const EmployeeItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                'https://pipedream.com/s.v0/app_mWnhBo/logo/orig',
              ),
            ),
          ),
        ),
        const SizedBox(width: 10.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichTextCustom(
                firstText: '${S.of(context).name}: ',
                secondText: 'Minh Hung',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              RichTextCustom(
                firstText: '${S.of(context).exp}: ',
                secondText: '1',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              RichTextCustom(
                firstText: '${S.of(context).age}: ',
                secondText: '56',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
