import 'dart:async';

import 'package:flight_booking/domain/usecase/airport_usecase.dart';
import 'package:flight_booking/domain/usecase/flight_usecase.dart';
import 'package:flight_booking/presentations_mobile/search_mobile/bloc/search_mobile_model_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/components/enum/search_enum.dart';

part 'search_mobile_state.dart';
part 'search_mobile_event.dart';

part 'search_mobile_bloc.freezed.dart';

const _searchNull = '';

@injectable
class SearchMobileBloc extends Bloc<SearchMobileEvent, SearchMobileState> {
  final AirportUsecase _airportUsecase;
  final FlightsUsecase _flightsUsecase;
  final SearchEnum _searchType;
  SearchMobileModelState get data => state.data;
  SearchEnum get getSearchType => _searchType;
  SearchMobileBloc(
    @factoryParam SearchEnum? searchType,
    this._airportUsecase,
    this._flightsUsecase,
  )   : _searchType = searchType ?? SearchEnum.airportSearch,
        super(
          const SearchMobileState.initial(
            data: SearchMobileModelState(
              textSearch: _searchNull,
              isGridView: true,
            ),
          ),
        ) {
    on<_Started>(_onStarted);
    on<_TextChange>(_onTextChange);
    on<_LoadingComplete>(_onLoadingComplete);
    on<_GetDataByText>(_onGetDataByText);
    on<_ChangeTypeView>(_onChangeTypeView);
  }

  FutureOr<void> _onGetDataByText(
      _GetDataByText event, Emitter<SearchMobileState> emit) async {
    emit(SearchMobileState.loading(data: data));
    // if(_searchType.isAirportSearch){
    //   await _airportUsecase.fetchAllAirports();
    // }
    //
    emit(SearchMobileState.searchSuccess(data: data));
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<SearchMobileState> emit,
  ) {
    add(const _LoadingComplete());
  }

  FutureOr<void> _onLoadingComplete(
    _LoadingComplete event,
    Emitter<SearchMobileState> emit,
  ) {
    emit(SearchMobileState.loading(data: data));
  }

  FutureOr<void> _onChangeTypeView(
      _ChangeTypeView event, Emitter<SearchMobileState> emit) {
    emit(state.copyWith(
      data: state.data.copyWith(isGridView: !data.isGridView),
    ));
  }

  FutureOr<void> _onTextChange(
    _TextChange event,
    Emitter<SearchMobileState> emit,
  ) {
    emit(state.copyWith(
      data: state.data.copyWith(textSearch: event.text),
    ));
    if (data.textSearch.isNotEmpty) {
      add(const _GetDataByText());
    }
  }
}
