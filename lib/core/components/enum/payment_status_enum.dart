import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

enum PaymentStatus {
  @JsonValue("SUCCEEDED")
  succeeded("Succeeded"),

  @JsonValue("PENDING")
  pending("Pending"),

  @JsonValue("DECLINED")
  declined("Declined"),

  @JsonValue("CREATE")
  create("Create");

  final String name;
  const PaymentStatus(this.name);

  static PaymentStatus getByName(String text) {
    final value = text.toLowerCase();

    switch (value) {
      case 'succeeded':
        return PaymentStatus.succeeded;
      case 'pending':
        return PaymentStatus.pending;
      case 'create':
        return PaymentStatus.create;
      case 'declined':
        return PaymentStatus.declined;
      default:
        return PaymentStatus.pending;
    }
  }

  Color get colorType => switch (this) {
        PaymentStatus.succeeded => Colors.blue,
        PaymentStatus.pending => Colors.yellow,
        PaymentStatus.create => Colors.green,
        _ => Colors.red,
      };

  String get displayValue => switch (this) {
        PaymentStatus.succeeded => "succeed",
        PaymentStatus.pending => "pending",
        PaymentStatus.create => "create",
        _ => "declined",
      };
}
