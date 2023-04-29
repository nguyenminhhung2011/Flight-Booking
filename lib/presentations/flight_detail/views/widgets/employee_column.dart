import 'package:flight_booking/presentations/flight_detail/views/widgets/pmployee_item.dart';
import 'package:flutter/material.dart';

import '../../../list_flight/views/widgets/dot_custom.dart';

class EmployeeColumn extends StatelessWidget {
  final int count;
  final String header;
  const EmployeeColumn({
    super.key,
    required this.count,
    required this.header,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: ListView(
        children: [
          Row(
            children: [
              const DotCustom(color: Colors.blue, full: false),
              Text(' $header'),
            ],
          ),
          for (int i = 0; i < count; i++) const EmployeeItem(),
        ].expand((element) => [element, const SizedBox(height: 10.0)]).toList(),
      ),
    );
  }
}
