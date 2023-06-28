part of 'customer_detail_bloc.dart';

@freezed
class CustomerDetailEvent with _$CustomerDetailEvent {
  const factory CustomerDetailEvent.started() = _Started;
}
