enum PaymentStatus {
  succeeded("Succeeded"),
  pending("Pending"),
  declined("Declined"),
  create("Create");

  final String name;
  const PaymentStatus(this.name);
}
