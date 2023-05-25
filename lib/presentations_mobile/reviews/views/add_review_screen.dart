import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/components/widgets/mobile/appbar.dart';
import 'package:flight_booking/core/components/widgets/mobile/custom_template_screen_stack_scroll.dart';
import 'package:flight_booking/core/components/widgets/mobile/rating_custom.dart';
import 'package:flutter/material.dart';

import '../../../core/components/widgets/mobile/button_custom.dart';
import '../../../core/components/widgets/mobile/header_custom.dart';
import '../../../core/components/widgets/mobile/text_field_custom.dart';
import '../../../generated/l10n.dart';
import '../../routes_mobile.dart';

class AddReviewScreen extends StatefulWidget {
  const AddReviewScreen({super.key});

  @override
  State<AddReviewScreen> createState() => _AddReviewScreenState();
}

class _AddReviewScreenState extends State<AddReviewScreen> {
  final TextEditingController _controller = TextEditingController();
  final ValueNotifier<double> _rating = ValueNotifier<double>(1.0);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var headerStyle = context.titleMedium.copyWith(fontWeight: FontWeight.bold);

    return CustomTemplateScreenStackScroll(
      bottomSheet: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
        child: ButtonCustom(
          height: 50,
          child: Text(S.of(context).addReview),
          onPress: () => context.openListPageWithRoute(RoutesMobile.checkout),
        ),
      ),
      appbar: AppbarCustom(
        backgroundColor: Theme.of(context).primaryColor,
        title: [
          IconButton(
            onPressed: () => context.pop(),
            icon: const Icon(Icons.arrow_back),
          ),
          Text(S.of(context).addReview, style: context.headerAppBarTextStyle),
          IconButton(onPressed: () {}, icon: const SizedBox())
        ].expand((element) => [element, const Spacer()]).toList()
          ..removeLast(),
      ),
      children: [
        SliverList(
          delegate: SliverChildListDelegate(
            <Widget>[
              HeaderTextCustom(
                headerText: S.of(context).rateYourStay,
                textStyle: headerStyle,
              ),
              ValueListenableBuilder<double>(
                valueListenable: _rating,
                builder: (context, rating, child) {
                  return RattingWidgetCustom(
                    rating: rating,
                    margin: const EdgeInsets.symmetric(horizontal: 15.0),
                    itemSize: 50.0,
                    padding: EdgeInsets.zero,
                  );
                },
              ),
              TextFieldCustom(
                paddingLeft: 15.0,
                paddingRight: 15.0,
                maxLines: 10,
                headerText: S.of(context).yourReview,
                headerTextStyle: headerStyle,
                spacingText: 10.0,
                hintStyle: context.titleMedium,
                hintText: 'Write your review...',
                textStyle: context.titleMedium,
                controller: _controller,
              ),
            ]
                .expand((element) => [const SizedBox(height: 20.0), element])
                .toList(),
          ),
        )
      ],
    );
  }
}
