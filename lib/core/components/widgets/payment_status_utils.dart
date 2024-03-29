import 'package:flight_booking/core/components/enum/payment_status_enum.dart';
import 'package:flutter/material.dart';

extension PaymentStatsUtils on PaymentStatus {
  IconData getIconBaseOnStatus() {
    switch (this) {
      case PaymentStatus.create:
        return Icons.flag_circle;
      case PaymentStatus.declined:
        return Icons.remove_circle;
      case PaymentStatus.pending:
        return Icons.timelapse;
      case PaymentStatus.succeeded:
        return Icons.task_alt;
      default:
        return Icons.cancel_outlined;
    }
  }

  MaterialColor getColorBaseOnStatus() {
    switch (this) {
      case PaymentStatus.create:
        return Colors.blue;
      case PaymentStatus.declined:
        return Colors.red;
      case PaymentStatus.pending:
        return Colors.yellow;
      case PaymentStatus.succeeded:
        return Colors.green;
      default:
        return Colors.grey;
    }
  }
}
