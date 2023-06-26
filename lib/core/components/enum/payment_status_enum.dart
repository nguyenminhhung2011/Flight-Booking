enum PaymentStatus {
  succeeded("Succeeded"),
  pending("Pending"),
  declined("Declined"),
  create("Create");

  final String name;
  const PaymentStatus(this.name);

  static PaymentStatus getByName(String text) {
    final value = text.toLowerCase();

    switch (value) {
      case 'succeeded':
        return PaymentStatus.declined;
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

  String get displayValue => switch (this) {
        PaymentStatus.succeeded => "succeed",
        PaymentStatus.pending => "pending",
        PaymentStatus.create => "create",
        _ => "declined",
      };
}
