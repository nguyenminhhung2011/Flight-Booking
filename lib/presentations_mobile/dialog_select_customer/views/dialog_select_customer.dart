import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/components/widgets/mobile/button_custom.dart';
import 'package:flight_booking/core/components/widgets/mobile/skeleton_custom.dart';
import 'package:flight_booking/core/constant/handle_time.dart';
import 'package:flight_booking/generated/l10n.dart';
import 'package:flight_booking/presentations_mobile/dialog_select_customer/notifier/select_customer_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DialogSelectCustomer extends StatefulWidget {
  const DialogSelectCustomer({super.key});

  @override
  State<DialogSelectCustomer> createState() => _DialogSelectCustomerState();
}

class _DialogSelectCustomerState extends State<DialogSelectCustomer> {
  @override
  Widget build(BuildContext context) {
    return Consumer<SelectCustomerNotifier>(
      builder: (context, model, child) {
        final customers = model.listCustomer;
        final customerSelected = model.customerSelected;
        return Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 5.0),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                child: Text(
                  S.of(context).selectedCustomer,
                  style:
                      context.titleMedium.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 5.0),
              _searchField(context, model),
              if (model.loading) ...[
                for (int i = 0; i < 4; i++)
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 5.0),
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Theme.of(context).cardColor,
                      boxShadow: [
                        BoxShadow(
                          color: Theme.of(context).shadowColor.withOpacity(0.1),
                          blurRadius: 5.0,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        ...[1, 1, 1]
                            .map((e) => Expanded(
                                  child: SkeletonContainer.rounded(
                                    width: double.infinity,
                                    height: 20,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ))
                            .expand((element) => [
                                  element,
                                  const SizedBox(
                                    width: 10.0,
                                  )
                                ])
                            .toList()
                          ..removeLast(),
                      ],
                    ),
                  ),
              ],
              Expanded(
                child: ListView.builder(
                  itemCount: customers.length,
                  itemBuilder: (context, index) {
                    final itemCustomer = customers[index];
                    return GestureDetector(
                      onTap: () => model.selectCustomer(itemCustomer),
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5.0),
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: customerSelected.id == itemCustomer.id
                              ? Theme.of(context).primaryColor
                              : Theme.of(context).cardColor,
                          boxShadow: [
                            BoxShadow(
                              color: Theme.of(context)
                                  .shadowColor
                                  .withOpacity(0.1),
                              blurRadius: 5.0,
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            ...<String>[
                              itemCustomer.id.toString(),
                              itemCustomer.name,
                              getYmdFormat(DateTime.fromMillisecondsSinceEpoch(
                                  itemCustomer.birthday))
                            ]
                                .map<Widget>(
                                  (e) => Expanded(
                                    child: Text(
                                      e,
                                      style: context.titleSmall.copyWith(
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                )
                                .expand((element) =>
                                    [element, const SizedBox(width: 5.0)])
                                .toList()
                              ..removeLast(),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                child: ButtonCustom(
                  onPress: () => context.popArgs(model.customerSelected.id),
                  radius: 5.0,
                  child: Text(S.of(context).next),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _searchField(BuildContext context, SelectCustomerNotifier model) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Container(
        height: 45.0,
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
        ),
        child: TextFormField(
          onChanged: (value) => model.onTextChange(value),
          decoration: InputDecoration(
            filled: true,
            hintText: S.of(context).searchAnything,
            hintStyle: context.titleSmall.copyWith(color: Colors.grey),
            focusedBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
          ),
        ),
      ),
    );
  }
}
