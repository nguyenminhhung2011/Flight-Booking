import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/handle_time.dart';
import '../../../../domain/entities/customer/customer.dart';
import '../../../../generated/l10n.dart';

class CustomerInformationField extends StatelessWidget {
  final Customer customer;
  final bool isBorder;
  const CustomerInformationField({
    super.key,
    required this.customer,
    this.isBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      //🐸Test data
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _leftFiled(context, S.of(context).name, customer.name),
            _rightField(context, S.of(context).gender, customer.gender),
          ].expand((element) => [Expanded(child: element)]).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _leftFiled(context, S.of(context).name, customer.name),
            _rightField(context, S.of(context).gender, customer.gender),
          ].expand((element) => [Expanded(child: element)]).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _leftFiled(context, S.of(context).dateBorn,
                getYmdFormat(customer.birthday)),
            _rightField(
                context, S.of(context).identityNumber, customer.identifyNum),
          ].expand((element) => [Expanded(child: element)]).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _leftFiled(context, S.of(context).email, customer.email),
            _rightField(
                context, S.of(context).phoneNumber, customer.phoneNumber),
          ].expand((element) => [Expanded(child: element)]).toList(),
        ),
      ].expand((element) => [element, const SizedBox(height: 10.0)]).toList(),
    );
  }

  InformationColumnItem _rightField(
    BuildContext context,
    String header,
    String text,
  ) {
    return InformationColumnItem(
      context: context,
      header: header,
      title: text,
      isStart: false,
      isBorder: isBorder,
      margin: const EdgeInsets.only(left: 5.0),
    );
  }

  InformationColumnItem _leftFiled(
      BuildContext context, String header, String text) {
    return InformationColumnItem(
      context: context,
      header: header,
      title: text,
      isStart: true,
      isBorder: isBorder,
      margin: const EdgeInsets.only(right: 5.0),
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
    this.margin,
    this.isBorder = false,
  });
  final bool isBorder;
  final BuildContext context;
  final String header;
  final String title;
  final bool isStart;
  final TextStyle? headerStyle;
  final TextStyle? titleStyle;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: isBorder
          ? CrossAxisAlignment.start
          : isStart
              ? CrossAxisAlignment.start
              : CrossAxisAlignment.end,
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
        isBorder
            ? Container(
                padding: const EdgeInsets.all(10.0),
                margin: margin,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  border:
                      Border.all(width: 1, color: Theme.of(context).hintColor),
                  color: Colors.transparent,
                ),
                child: _text(context),
              )
            : _text(context)
      ],
    );
  }

  Text _text(BuildContext context) {
    return Text(
      title,
      style: titleStyle ??
          context.titleMedium.copyWith(
            fontWeight: FontWeight.bold,
            overflow: TextOverflow.ellipsis,
          ),
    );
  }
}
