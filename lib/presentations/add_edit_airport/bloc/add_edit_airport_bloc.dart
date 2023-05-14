import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:flight_booking/domain/entities/airport/airport.dart';
import 'package:flight_booking/domain/usecase/airport_usecase.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

import '../../../core/constant/constant.dart';
import '../../../core/services/cloundinary_service.dart';
import '../../../core/services/image_pic_service.dart';
import '../../../generated/l10n.dart';
import 'add_edit_airport_model_state.dart';

part 'add_edit_airport_state.dart';
part 'add_edit_airport_event.dart';
part 'add_edit_airport_bloc.freezed.dart';

const _idNull = '';
const _imageNull = '';
const _messageNull = '';

@injectable
class AddEditAirportBloc
    extends Bloc<AddEditAirportEvent, AddEditAirportState> {
  final String _airportId;
  final AirportUsecase _airportsUsecase;
  final CloundinaryService _cloundinaryService;
  final ImagePicService _imagePicSercice;

  AddEditAirportModelState get data => state.data;

  AddEditAirportBloc(
    @factoryParam String airportId,
    this._airportsUsecase,
    this._cloundinaryService,
    this._imagePicSercice,
  )   : _airportId = airportId,
        super(
          AddEditAirportState.initial(
            data: AddEditAirportModelState(
              location: TextEditingController(),
              name: TextEditingController(),
              headerText: S.current.editAirport,
              images: [],
            ),
          ),
        ) {
    on<_Started>(_onStarted);
    on<_Dispose>(_onDispose);
    on<_EditAirport>(_onEditAirport);
    on<_AddNewAirport>(_onAddNewAirport);
    on<_PickImage>(_onPickImage);
    on<_RemoveImage>(_onRemoveImage);
  }

  FutureOr<void> _onPickImage(
    _PickImage event,
    Emitter<AddEditAirportState> emit,
  ) async {
    final imagePic = await _imagePicSercice.pickImage(ImageSource.gallery);
    if (imagePic != null) {
      emit(AddEditAirportState.pickImageSuccess(
        data: state.data.copyWith(images: [imagePic, ...data.images]),
      ));
    }
  }

  FutureOr<void> _onRemoveImage(
    _RemoveImage event,
    Emitter<AddEditAirportState> emit,
  ) {
    emit(state.copyWith(
        data: state.data.copyWith(
      images: data.images
          .whereIndexed((index, element) => index != event.index)
          .toList(),
    )));
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<AddEditAirportState> emit,
  ) {
    if (_airportId != _idNull) {
      // emit(
      //   state.copyWith(
      //     data: data.copyWith(
      //       headerText: S.current.editAirport,
      //       airPortStart: ,
      //       airPortFinish: TextEditingController(),
      //       timeEnd: DateTime.now(),
      //       timeStart: DateTime.now(),
      //       noCustomer: _noCustomerDefault,
      //     ),
      //   ),
      // );
    }
    emit(
      state.copyWith(
        data: data.copyWith(
          headerText: _airportId != _idNull
              ? S.current.editAirport
              : S.current.addNewAirport,
        ),
      ),
    );
  }

  FutureOr<void> _onDispose(
    _Dispose event,
    Emitter<AddEditAirportState> emit,
  ) {}

  FutureOr<void> _onEditAirport(
    _EditAirport event,
    Emitter<AddEditAirportState> emit,
  ) async {
    emit(AddEditAirportState.loading(data: state.data));
    try {
      final newAirport = Airport(
        id: event.id,
        image: _imageNull,
        location: data.location.text,
        name: data.name.text,
      );
      final edit = await _airportsUsecase.editAirport(newAirport);
      if (edit == null) {
        emit(
          AddEditAirportState.editAirportFailed(data: state.data, message: ''),
        );
        return;
      }
      emit(AddEditAirportState.editAirportSuccess(data: data, airport: edit));
    } catch (e) {
      emit(AddEditAirportState.editAirportFailed(
        data: state.data,
        message: e.toString(),
      ));
    }
  }

  FutureOr<void> _onAddNewAirport(
    _AddNewAirport event,
    Emitter<AddEditAirportState> emit,
  ) async {
    emit(AddEditAirportState.loading(data: state.data));
    try {
      String id = randomString();
      final newAirport = Airport(
        id: id,
        image: _imageNull,
        location: data.location.text,
        name: data.name.text,
      );
      List<String> imagesUrl = [];
      for (var item in data.images) {
        String? imageUrl = await _cloundinaryService.convertUti8ListToUrl(
          item,
          '$id ${data.images.length}',
        );
        if (imageUrl != null) {
          imagesUrl.add(imageUrl);
        }
      }
      final add = await _airportsUsecase.addNewAirport(newAirport);
      if (add == null) {
        emit(AddEditAirportState.addNewAirportFailed(
          data: state.data,
          message: _messageNull,
        ));
        return;
      }
      emit(AddEditAirportState.addNewAirportSuccess(data: data, airport: add));
    } catch (e) {
      emit(AddEditAirportState.addNewAirportFailed(
        data: state.data,
        message: e.toString(),
      ));
    }
  }
}
