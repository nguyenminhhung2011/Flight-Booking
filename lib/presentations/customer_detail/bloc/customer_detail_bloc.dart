import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'customer_detail_model_state.dart';

part 'customer_detail_event.dart';
part 'customer_detail_state.dart';

part 'customer_detail_bloc.freezed.dart';

@injectable
class CustomerDetailBloc
    extends Bloc<CustomerDetailEvent, CustomerDetailState> {
  CustomerDetailBloc()
      : super(
          CustomerDetailState.initial(data: CustomerDetailModelState()),
        ) {
    on<_Started>((event, emit) {});
  }
}
