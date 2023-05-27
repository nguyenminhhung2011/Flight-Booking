import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/handle_time.dart';
import '../../../../domain/entities/customer/customer.dart';
import '../../../../generated/l10n.dart';

class CustomerInformationField extends StatelessWidget {
  final Customer customer;
  const CustomerInformationField({
    super.key,
    required this.customer,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      //🐸Test data
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InformationColumnItem(
                context: context,
                header: S.of(context).name,
                title: customer.name,
                isStart: true),
            InformationColumnItem(
                context: context,
                header: S.of(context).gender,
                title: customer.gender,
                isStart: false),
          ].expand((element) => [Expanded(child: element)]).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InformationColumnItem(
                context: context,
                header: S.of(context).dateBorn,
                title: getYmdFormat(customer.birthday),
                isStart: true),
            InformationColumnItem(
                context: context,
                header: S.of(context).identityNumber,
                title: customer.identityNum,
                isStart: false),
          ].expand((element) => [Expanded(child: element)]).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InformationColumnItem(
                context: context,
                header: S.of(context).phoneNumber,
                title: customer.phoneNumber,
                isStart: true),
            InformationColumnItem(
                context: context,
                header: S.of(context).email,
                title: customer.email,
                isStart: false),
          ].expand((element) => [Expanded(child: element)]).toList(),
        ),
      ].expand((element) => [element, const SizedBox(height: 10.0)]).toList(),
    );
  }
}

class InformationColumnItem extends StatelessWidget {
  const InformationColumnItem({
    super.key,
    required this.context,
    required this.header,
    required this.title,
    required this.isStart,
    this.headerStyle,
    this.titleStyle,
  });

  final BuildContext context;
  final String header;
  final String title;
  final bool isStart;
  final TextStyle? headerStyle;
  final TextStyle? titleStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          isStart ? CrossAxisAlignment.start : CrossAxisAlignment.end,
      children: [
        Text(
          header,
          style: headerStyle ??
              context.titleSmall.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Theme.of(context).hintColor,
                overflow: TextOverflow.ellipsis,
              ),
        ),
        const SizedBox(height: 7.0),
        Text(
          title,
          style: titleStyle ??
              context.titleMedium.copyWith(
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis,
              ),
        )
      ],
    );
  }
}
