import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:flight_booking/core/components/enum/date_time_enum.dart';
import 'package:flight_booking/core/components/network/app_exception.dart';
import 'package:flight_booking/domain/entities/airline/airline.dart';
import 'package:flight_booking/domain/entities/flight/flight.dart';
import 'package:flight_booking/domain/usecase/airport_usecase.dart';
import 'package:flight_booking/presentations/add_edit_flight/bloc/add_edit_flight_model_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/components/enum/tic_type_enum.dart';
import '../../../core/constant/constant.dart';
import '../../../data/models/model_helper.dart';
import '../../../domain/entities/airport/airport.dart';
import '../../../domain/entities/airport/stop_airport.dart';
import '../../../domain/entities/ticket/ticket_information.dart';
import '../../../domain/entities/ticket/ticket_information_id.dart';
import '../../../domain/usecase/airline_usecase.dart';
import '../../../domain/usecase/flight_usecase.dart';
import '../../../domain/usecase/tic_information_usecase.dart';
import '../../../generated/l10n.dart';

part 'add_edit_flight_event.dart';
part 'add_edit_flight_state.dart';
part 'add_edit_flight_bloc.freezed.dart';

const _idNull = '';
const _failedEvent = 'Failed';
const _defaultSeat = -1;

@injectable
class AddEditFlightBloc extends Bloc<AddEditFlightEvent, AddEditFlightState> {
  final String _flightId;
  final FlightsUsecase _flightsUsecase;
  final AirportUsecase _airportUsecase;
  final AirlineUsecase _airlineUsecase;
  final TicketInformationUsecase _ticketInformationUsecase;

  AddEditFlightModelState get data => state.data;

  AddEditFlightBloc(
    @factoryParam String flightId,
    this._flightsUsecase,
    this._airportUsecase,
    this._airlineUsecase,
    this._ticketInformationUsecase,
  )   : _flightId = flightId,
        super(
          AddEditFlightState.initial(
            data: AddEditFlightModelState(
              timeEnd: DateTime.now(),
              timeStart: DateTime.now(),
              timeStopSelected: DateTime.now(),
              listTicInformation: [
                TicTypeEnum.businessClass,
                TicTypeEnum.economyClass,
                TicTypeEnum.firstClass,
                TicTypeEnum.premiumEconomyClass,
              ]
                  .mapIndexed<TicketInformation>(
                      (index, e) => TicketInformation(
                            id: TicketInformationId(
                              flight: ModelHelper.defaultFlight,
                              ticketType: e.toInteger,
                            ),
                            quantity: 0,
                            price: 0,
                            seatPosition: index,
                            seatHeader: seatHeader[index],
                          ))
                  .toList(),
              ticInformationDisplayIndex: 0,
              headerText: S.current.addNewFlight,
              listAirline: <Airline>[],
              listAirport: <Airport>[],
              stopAirport: <StopAirport>[],
            ),
          ),
        ) {
    on<_Started>(_onStarted);
    on<_EditFlight>(_onEditFlight);
    on<_AddNewFlight>(_onAddNewFlight);
    on<_UpdateDateField>(_onUpdateDateField);
    on<_Dispose>(_onDispose);
    on<_FetchAllAirports>(_onFetchAllAirports);
    on<_FetchAllAirlines>(_onFetchAllAirlines);
    on<_SelectedAirline>(_onSelectAirline);
    on<_SelectedAirport>(_onSelectAirport);
    on<_ButtonTap>(_onButtonTap);
    on<_GetFlightById>(_onGetFlightById);
    on<_AddTicInformation>(_onAddTicInformation);
    on<_UpdateTicInformation>(_onUpdateTicInformation);
    on<_ChangeTicInformationView>(_onChangeTicInformationView);

    on<_AddNewStopAirport>(_onAddNewStopAirport);
    on<_SelectedStopAirport>(_onSelectStopAirport);
    on<_RemoveStopAirport>(_onRemoveStopAirport);

    on<_SelectedAirportStop>(_onSelectedAirportStop);
    on<_SelectedTimeStop>(_onSelectedTimeStop);
  }

  bool get _isDataNull =>
      data.airline == null ||
      data.airportStart == null ||
      data.airportEnd == null;

  bool get _isSameAirport => data.airportStart?.id == data.airportEnd?.id;
  String get flightId => _flightId;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<AddEditFlightState> emit,
  ) {
    if (_flightId != _idNull) {
      add(_GetFlightById(id: _flightId));
    } else {
      emit(
        state.copyWith(
          data: data.copyWith(headerText: S.current.addNewFlight),
        ),
      );
    }
  }

  FutureOr<void> _onButtonTap(
    _ButtonTap event,
    Emitter<AddEditFlightState> emit,
  ) {
    if (_flightId.isNotEmpty) {
      add(_EditFlight(id: _flightId));
    } else {
      add(const _AddNewFlight());
    }
  }

  FutureOr<void> _onSelectAirport(
    _SelectedAirport event,
    Emitter<AddEditFlightState> emit,
  ) {
    if (event.isStartAirport) {
      emit(state.copyWith(
        data: data.copyWith(
          airportStart: event.airport,
        ),
      ));
    } else {
      emit(state.copyWith(
        data: data.copyWith(
          airportEnd: event.airport,
        ),
      ));
    }
  }

  FutureOr<void> _onSelectAirline(
    _SelectedAirline event,
    Emitter<AddEditFlightState> emit,
  ) {
    emit(
      state.copyWith(
        data: data.copyWith(airline: event.airline),
      ),
    );
  }

  FutureOr<void> _onFetchAllAirports(
    _FetchAllAirports event,
    Emitter<AddEditFlightState> emit,
  ) async {
    emit(AddEditFlightState.loading(data: data, type: 0));
    try {
      final result = await _airportUsecase.fetchAllAirports();
      final airport = result.isNotEmpty ? result.first : null;
      emit(AddEditFlightState.fetchAirportSuccess(
        data: data.copyWith(
          listAirport: result,
          airportStart: airport,
          airportEnd: airport,
          airportStopSelected: airport,
        ),
      ));
    } on AppException catch (e) {
      emit(AddEditFlightState.fetchAirportFailed(
        data: data,
        message: e.toString(),
      ));
    } catch (e) {
      emit(AddEditFlightState.fetchAirportFailed(
        data: data,
        message: e.toString(),
      ));
    }
  }

  FutureOr<void> _onFetchAllAirlines(
    _FetchAllAirlines event,
    Emitter<AddEditFlightState> emit,
  ) async {
    emit(AddEditFlightState.loading(data: data, type: 0));
    try {
      final result = await _airlineUsecase.fetchAllAirlines();
      final airline = result.isNotEmpty ? result.first : null;
      emit(AddEditFlightState.fetchAirlineSuccess(
        data: data.copyWith(listAirline: result, airline: airline),
      ));
    } on AppException catch (e) {
      emit(AddEditFlightState.fetchAirlineFailed(
        data: data,
        message: e.toString(),
      ));
    } catch (e) {
      emit(AddEditFlightState.fetchAirlineFailed(
        data: data,
        message: e.toString(),
      ));
    }
  }

  FutureOr<void> _onDispose(
    _Dispose event,
    Emitter<AddEditFlightState> emit,
  ) {}

  FutureOr<void> _onEditFlight(
    _EditFlight event,
    Emitter<AddEditFlightState> emit,
  ) async {
    emit(AddEditFlightState.loading(data: state.data, type: 1));
    if (_isDataNull) {
      emit(AddEditFlightState.editFlightFailed(
        data: data,
        message: _failedEvent,
      ));
      return;
    }
    if (_isSameAirport) {
      emit(AddEditFlightState.editFlightFailed(
        data: data,
        message: 'Airports can\'t same',
      ));
      return;
    }
    try {
      final newFlight = Flight(
        id: 0,
        arrivalAirport: data.airportEnd!,
        departureAirport: data.airportStart!,
        timeStart: data.timeStart,
        timeEnd: data.timeEnd,
        airline: data.airline!,
        stopAirports: data.stopAirport,
      );
      final edit = await _flightsUsecase.editFlight(newFlight, _flightId);
      if (edit == null) {
        emit(
          AddEditFlightState.editFlightFailed(
            data: state.data,
            message: _failedEvent,
          ),
        );
        return;
      }
      emit(AddEditFlightState.editFlightSuccess(data: data, flight: edit));
    } on AppException catch (e) {
      emit(AddEditFlightState.editFlightFailed(
        data: state.data,
        message: e.toString(),
      ));
    } catch (e) {
      emit(AddEditFlightState.editFlightFailed(
        data: state.data,
        message: e.toString(),
      ));
    }
  }

  FutureOr<void> _onAddNewFlight(
    _AddNewFlight event,
    Emitter<AddEditFlightState> emit,
  ) async {
    emit(AddEditFlightState.loading(data: state.data, type: 1));
    if (_isDataNull) {
      emit(AddEditFlightState.addNewFlightFailed(
        data: data,
        message: _failedEvent,
      ));
      return;
    }
    if (_isSameAirport) {
      emit(AddEditFlightState.addNewFlightFailed(
        data: data,
        message: 'Airports can\'t same',
      ));
    }
    try {
      final newFlight = Flight(
        id: 0,
        arrivalAirport: data.airportEnd!,
        departureAirport: data.airportStart!,
        timeStart: data.timeStart,
        timeEnd: data.timeEnd,
        airline: data.airline!,
        stopAirports: data.stopAirport,
      );
      final add = await _flightsUsecase.addNewFlight(newFlight);
      if (add == null) {
        emit(AddEditFlightState.addNewFlightFailed(
          data: state.data,
          message: _failedEvent,
        ));
        return;
      }
      emit(AddEditFlightState.addNewFlightSuccess(data: data, flight: add));
    } on AppException catch (e) {
      emit(AddEditFlightState.addNewFlightFailed(
        data: state.data,
        message: e.toString(),
      ));
    } catch (e) {
      emit(AddEditFlightState.addNewFlightFailed(
        data: state.data,
        message: e.toString(),
      ));
    }
  }

  FutureOr<void> _onUpdateDateField(
    _UpdateDateField event,
    Emitter<AddEditFlightState> emit,
  ) {
    if (event.enumTime == DateTimeEnum.timeStart) {
      emit(state.copyWith(data: data.copyWith(timeStart: event.dateTime)));
    } else {
      emit(state.copyWith(data: data.copyWith(timeEnd: event.dateTime)));
    }
  }

  FutureOr<void> _onGetFlightById(
    _GetFlightById event,
    Emitter<AddEditFlightState> emit,
  ) async {
    emit(AddEditFlightState.loading(data: data, type: 0));
    try {
      final result = await _flightsUsecase.getFlightById(_flightId);
      if (result == null) {
        emit(AddEditFlightState.getFlightByIdFailed(
          data: state.data,
          message: 'Can\'t get flight',
        ));
        return;
      }
      emit(AddEditFlightState.getFlightByIdSuccess(
        data: data.copyWith(
          timeStart: result.timeStart,
          timeEnd: result.timeEnd,
          airline: result.airline,
          headerText: S.current.editFlight,
          airportStart: result.departureAirport,
          airportEnd: result.arrivalAirport,
          stopAirport: result.stopAirports,
          timeStopSelected: result.stopAirports.isNotEmpty
              ? result.stopAirports.first.stopTime
              : DateTime.now(),
        ),
      ));
    } on AppException catch (e) {
      emit(AddEditFlightState.getFlightByIdFailed(
        data: state.data,
        message: e.toString(),
      ));
    } catch (e) {
      emit(AddEditFlightState.getFlightByIdFailed(
        data: state.data,
        message: e.toString(),
      ));
    }
  }

  FutureOr<void> _onUpdateTicInformation(
    _UpdateTicInformation event,
    Emitter<AddEditFlightState> emit,
  ) {
    final currentTicInformation =
        data.listTicInformation[data.ticInformationDisplayIndex];
    final newTicInformation = currentTicInformation.copyWith(
      seatHeader: event.newSeatHeader,
      seatPosition: event.newSeatPosition ?? currentTicInformation.seatPosition,
      price: event.price,
      quantity: event.quantity,
    );
    emit(AddEditFlightState.updateTicInformationSuccess(
        data: data.copyWith(
            listTicInformation: data.listTicInformation.mapIndexed((index, e) {
      if (data.ticInformationDisplayIndex == index) {
        return newTicInformation;
      }
      return e;
    }).toList())));
  }

  FutureOr<void> _onChangeTicInformationView(
    _ChangeTicInformationView event,
    Emitter<AddEditFlightState> emit,
  ) {
    emit(AddEditFlightState.changeTicInformationViewSuccess(
        data: data.copyWith(
      ticInformationDisplayIndex: event.newIndex,
    )));
  }

  FutureOr<void> _onAddTicInformation(
    _AddTicInformation event,
    Emitter<AddEditFlightState> emit,
  ) async {
    emit(
      AddEditFlightState.loading(
          data: data.copyWith(
              listTicInformation: data.listTicInformation
                  .map<TicketInformation>(
                    (e) => e.copyWith(id: e.id.copyWith(flight: event.flight)),
                  )
                  .toList()),
          type: 1),
    );
    try {
      final response = await _ticketInformationUsecase.addTicInformation(
        data.listTicInformation
            .where((element) => element.seatPosition != _defaultSeat)
            .toList(),
        event.flight.id,
      );
      if (!response) {
        emit(AddEditFlightState.addTicInformationFailed(
          data: data,
          message: 'Failed ',
        ));
      }
      emit(AddEditFlightState.addTicInformationSuccess(
        data: data,
        flight: event.flight,
      ));
    } on AppException catch (e) {
      emit(AddEditFlightState.addTicInformationFailed(
        data: data,
        message: e.toString(),
      ));
    } catch (e) {
      emit(AddEditFlightState.addTicInformationFailed(
        data: data,
        message: e.toString(),
      ));
    }
  }

  FutureOr<void> _onSelectStopAirport(
    _SelectedStopAirport event,
    Emitter<AddEditFlightState> emit,
  ) {
    emit(_SelectedStopAirportSuccess(
      data: data.copyWith(
        timeStopSelected: event.stopAirport.stopTime,
        airportStopSelected: event.stopAirport.airport,
      ),
      description: event.stopAirport.description,
    ));
  }

  FutureOr<void> _onRemoveStopAirport(
    _RemoveStopAirport event,
    Emitter<AddEditFlightState> emit,
  ) {
    emit(_RemoveStopAirportSuccess(
      data: data.copyWith(
        stopAirport: data.stopAirport
            .where(
                (element) => element.airport.id != event.stopAirport.airport.id)
            .toList(),
      ),
    ));
  }

  FutureOr<void> _onAddNewStopAirport(
      _AddNewStopAirport event, Emitter<AddEditFlightState> emit) {
    final timeStart = data.stopAirport.isEmpty
        ? data.timeStart
        : data.stopAirport.last.stopTime;
    final timeFinish = data.timeEnd;
    if (timeStart.isBefore(data.timeStopSelected) &&
        timeFinish.isAfter(data.timeStopSelected)) {
      if ([
            data.airportStart,
            ...data.stopAirport.map((e) => e.airport).toList(),
            data.airportEnd
          ].contains(data.airportStopSelected) ||
          data.airportStopSelected == null) {
        emit(_AddNewFlightFailed(
          data: data,
          message: 'Airport is exists in list',
        ));
      } else {
        emit(_AddNewStopAirportSuccess(
          data: data.copyWith(stopAirport: [
            ...data.stopAirport,
            StopAirport(
              airport: data.airportStopSelected ?? ModelHelper.defaultAirport,
              stopTime: data.timeStopSelected,
              description: event.description,
            )
          ]),
        ));
      }
    } else {
      emit(_AddNewFlightFailed(
        data: data,
        message: 'Time must be in between time start and time end of flight',
      ));
    }
  }

  FutureOr<void> _onSelectedAirportStop(
    _SelectedAirportStop event,
    Emitter<AddEditFlightState> emit,
  ) {
    emit(_SelectedAirportStopSuccess(
      data: data.copyWith(
        airportStopSelected: event.airport,
      ),
    ));
  }

  FutureOr<void> _onSelectedTimeStop(
    _SelectedTimeStop event,
    Emitter<AddEditFlightState> emit,
  ) {
    emit(_SelectedTimeStopSuccess(
      data: data.copyWith(
        timeStopSelected: event.time,
      ),
    ));
  }
}
