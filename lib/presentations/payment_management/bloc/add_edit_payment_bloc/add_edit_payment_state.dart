part of 'add_edit_payment_bloc.dart';

abstract class AddEditPaymentState {
  final Payment payment;
  AddEditPaymentState(this.payment);
}

class InitialAddEditState extends AddEditPaymentState {
  InitialAddEditState(super.payment);
}

class FetchPaymentDetailSuccess extends AddEditPaymentState {
  FetchPaymentDetailSuccess(super.payment);
}

class UpdateCustomerFieldDataSuccess extends AddEditPaymentState {
  UpdateCustomerFieldDataSuccess(super.payment);
}

class UpdatePaymentInformationFieldSuccess extends AddEditPaymentState {
  UpdatePaymentInformationFieldSuccess(super.payment);
}

class UpdateTicketsFieldDataSuccess extends AddEditPaymentState {
  UpdateTicketsFieldDataSuccess(super.payment);
}

class LoadingDialogState extends AddEditPaymentState {
  LoadingDialogState(super.payment);
}

class LoadingTicketsFieldState extends AddEditPaymentState {
  LoadingTicketsFieldState(super.payment);
}

class LoadingCustomerFieldState extends AddEditPaymentState {
  LoadingCustomerFieldState(super.payment);
}

class LoadingPaymentInfoFieldState extends AddEditPaymentState {
  LoadingPaymentInfoFieldState(super.payment);
}

class AddEditPaymentStateFailed extends AddEditPaymentState {
  final String message;
  AddEditPaymentStateFailed(super.payment, this.message);
}
