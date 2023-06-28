import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:flight_booking/core/components/network/app_exception.dart';
import 'package:flight_booking/domain/entities/airport/airport.dart';
import 'package:flight_booking/domain/usecase/airport_usecase.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

import '../../../core/components/const/image_const.dart';
import '../../../core/components/enum/time_of_day_type.dart';
import '../../../core/constant/constant.dart';
import '../../../core/services/cloundinary_service.dart';
import '../../../core/services/image_pic_service.dart';
import '../../../core/services/place/place_service.dart';
import '../../../data/models/place/place_model.dart';
import '../../../generated/l10n.dart';
import 'add_edit_airport_model_state.dart';

part 'add_edit_airport_state.dart';
part 'add_edit_airport_event.dart';
part 'add_edit_airport_bloc.freezed.dart';

const _idNull = '';
const _imageNull = '';
const _messageNull = '';
const _locationNUll = '';
var _defaultTime = const TimeOfDay(hour: 6, minute: 0);

@injectable
class AddEditAirportBloc
    extends Bloc<AddEditAirportEvent, AddEditAirportState> {
  final String _airportId;
  final AirportUsecase _airportsUsecase;
  final CloundinaryService _cloundinaryService;
  final ImagePicService _imagePicSercice;
  final PlaceService _placeService;

  AddEditAirportModelState get data => state.data;
  String get airportId => _airportId;

  AddEditAirportBloc(
    @factoryParam String airportId,
    this._airportsUsecase,
    this._cloundinaryService,
    this._imagePicSercice,
    this._placeService,
  )   : _airportId = airportId,
        super(
          AddEditAirportState.initial(
            data: AddEditAirportModelState(
              location: TextEditingController(),
              name: TextEditingController(),
              description: TextEditingController(),
              code: TextEditingController(),
              startTime: _defaultTime,
              closeTime: _defaultTime,
              locationEdit: _locationNUll,
              imageUrl: _imageNull,
              headerText: S.current.editAirport,
              images: [],
              districts: <PlaceModel>[],
              provinces: <PlaceModel>[],
              wards: <PlaceModel>[],
              provincesSelected: 0,
              districtsSelected: 0,
              wardsSelected: 0,
            ),
          ),
        ) {
    on<_Started>(_onStarted);
    on<_Dispose>(_onDispose);
    on<_EditAirport>(_onEditAirport);
    on<_AddNewAirport>(_onAddNewAirport);
    on<_PickImage>(_onPickImage);
    on<_RemoveImage>(_onRemoveImage);
    on<_FetchPlace>(_onFetchPlace);
    on<_FetchDistricts>(_onFetchDistricts);
    on<_FetchWards>(_onFetchWards);
    on<_SelectedWard>(_onSelectedWard);
    on<_ButtonTap>(_onButtonTap);
    on<_GetAirportById>(_onGetAirportById);
    on<_UpdateTime>(_onUpdateTime);
  }

  FutureOr<void> _onUpdateTime(
    _UpdateTime event,
    Emitter<AddEditAirportState> emit,
  ) {
    if (event.type.isOpenTime) {
      emit(state.copyWith(data: data.copyWith(startTime: event.time)));
    } else {
      emit(state.copyWith(data: data.copyWith(closeTime: event.time)));
    }
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

  FutureOr<void> _onGetAirportById(
      _GetAirportById event, Emitter<AddEditAirportState> emit) async {
    if (_airportId.isNotEmpty) {
      emit(AddEditAirportState.loading(data: data, groupLoading: 5));
      try {
        final result = await _airportsUsecase.getAirportById(_airportId);
        if (result == null) {
          emit(AddEditAirportState.getAirportByIdFailed(
            data: data,
            message: 'Can\'t get airport',
          ));
          return;
        }
        emit(AddEditAirportState.getAirportByIdSuccess(
          data: data.copyWith(
            name: TextEditingController(text: result.name),
            location: TextEditingController(text: result.location),
            description: TextEditingController(text: result.description),
            code: TextEditingController(text: result.code),
            locationEdit: result.location,
            imageUrl: result.image,
            startTime: result.openTime,
            closeTime: result.closeTime,
          ),
        ));
      } on AppException catch (error) {
        emit(AddEditAirportState.getAirportByIdFailed(
          data: data,
          message: error.message,
        ));
      } catch (error) {
        emit(AddEditAirportState.getAirportByIdFailed(
          data: data,
          message: error.toString(),
        ));
      }
    }
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<AddEditAirportState> emit,
  ) {
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

  FutureOr<void> _onFetchPlace(
    _FetchPlace event,
    Emitter<AddEditAirportState> emit,
  ) async {
    emit(AddEditAirportState.loading(data: data, groupLoading: 2));
    try {
      final provinces = await _placeService.getProvinces();
      if (provinces.isEmpty) {
        emit(AddEditAirportState.fetchPlaceFailed(
          data: data,
          message: 'Can\'t get provinces',
        ));
        return;
      }
      emit(AddEditAirportState.fetchPlaceSuccess(
          data: data.copyWith(
        provinces: provinces,
        provincesSelected: 0,
      )));
      return;
    } catch (e) {
      emit(
        AddEditAirportState.fetchPlaceFailed(data: data, message: e.toString()),
      );
    }
  }

  FutureOr<void> _onFetchDistricts(
    _FetchDistricts event,
    Emitter<AddEditAirportState> emit,
  ) async {
    emit(AddEditAirportState.loading(data: data, groupLoading: 3));
    try {
      final districts = await _placeService.getDistricts(event.code);
      if (districts.isEmpty) {
        emit(AddEditAirportState.fetchDistrictsFailed(
          data: data,
          message: 'Can\'t get districts',
        ));
        return;
      }
      emit(AddEditAirportState.fetchDistrictsSuccess(
          data: data.copyWith(
        districts: districts,
        districtsSelected: 0,
        provincesSelected: event.provincesIndex,
      )));
      return;
    } catch (e) {
      emit(AddEditAirportState.fetchDistrictsFailed(
        data: data,
        message: e.toString(),
      ));
    }
  }

  FutureOr<void> _onFetchWards(
    _FetchWards event,
    Emitter<AddEditAirportState> emit,
  ) async {
    emit(AddEditAirportState.loading(data: data, groupLoading: 4));
    try {
      final wards = await _placeService.getWards(event.code);
      if (wards.isEmpty) {
        emit(AddEditAirportState.fetchWardsFailed(
          data: data,
          message: 'Can\'t get wards',
        ));
        return;
      }
      emit(AddEditAirportState.fetchWardsSuccess(
          data: data.copyWith(
        wards: wards,
        wardsSelected: 0,
        districtsSelected: event.districtsIndex,
      )));
      return;
    } catch (e) {
      emit(AddEditAirportState.addNewAirportFailed(
        data: data,
        message: e.toString(),
      ));
    }
  }

  FutureOr<void> _onSelectedWard(
    _SelectedWard event,
    Emitter<AddEditAirportState> emit,
  ) {
    emit(state.copyWith(
      data: data.copyWith(
        wardsSelected: 0,
      ),
    ));
  }

  Future<List<String>> _generateImageToString() async {
    var imageUrls = <String>[];
    for (var item in data.images) {
      String? imageUrl = await _cloundinaryService.convertUti8ListToUrl(
        item,
        '$_airportId ${data.images.length}',
      );
      if (imageUrl != null) {
        imageUrls.add(imageUrl);
      }
    }
    return imageUrls;
  }

  FutureOr<void> _onAddNewAirport(
    _AddNewAirport event,
    Emitter<AddEditAirportState> emit,
  ) async {
    emit(AddEditAirportState.loading(data: state.data, groupLoading: 1));
    try {
      int id = randDomNumber(100);
      String imageFeature = _imageNull;
      String location =
          '${data.provinces[data.provincesSelected].name}, ${data.districts[data.districtsSelected].name}, ${data.wards[data.wardsSelected].name}';
      String name = data.name.text;
      String code = data.code.text;
      code = (code.length > 3 ? code.substring(0, 3) : code).toUpperCase();
      String description = data.description.text;
      TimeOfDay openTime = data.startTime;
      TimeOfDay closeTime = data.closeTime;
      List<String> imageUrls = [];

      if (name.isEmpty || location.isEmpty) {
        emit(AddEditAirportState.addNewAirportFailed(
          data: data,
          message: 'Field is not null',
        ));
        return;
      }

      imageUrls = await _generateImageToString();
      if (imageUrls.isNotEmpty) {
        imageFeature = imageUrls.first;
      } else {
        imageFeature = ImageConst.airplaneIcon;
      }

      final newAirport = Airport(
        id: id,
        name: name,
        image: imageFeature,
        location: location,
        description: description,
        openTime: openTime,
        closeTime: closeTime,
        code: code,
      );
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

  FutureOr<void> _onEditAirport(
    _EditAirport event,
    Emitter<AddEditAirportState> emit,
  ) async {
    emit(AddEditAirportState.loading(data: state.data, groupLoading: 1));
    try {
      int id = int.parse(_airportId);
      String imageFeature = data.imageUrl;
      String location =
          '${data.provinces[data.provincesSelected].name}, ${data.districts[data.districtsSelected].name}, ${data.wards[data.wardsSelected].name}';
      String name = data.name.text;
      String code = data.code.text;
      code = (code.length > 3 ? code.substring(0, 3) : code).toUpperCase();
      String description = data.description.text;
      List<String> imageUrls = [];
      TimeOfDay openTime = data.startTime;
      TimeOfDay closeTime = data.closeTime;

      if (name.isEmpty || location.isEmpty) {
        emit(AddEditAirportState.editAirportFailed(
          data: data,
          message: 'Field is not null',
        ));
        return;
      }

      imageUrls = await _generateImageToString();
      if (imageUrls.isNotEmpty) {
        imageFeature = imageUrls.first;
      }
      final newAirport = Airport(
        id: id,
        name: name,
        image: imageFeature,
        location: location,
        description: description,
        openTime: openTime,
        closeTime: closeTime,
        code: code,
      );
      final edit = await _airportsUsecase.editAirport(newAirport, id);
      if (edit == null) {
        emit(AddEditAirportState.editAirportFailed(
          data: state.data,
          message: _messageNull,
        ));
        return;
      }
      emit(AddEditAirportState.editAirportSuccess(data: data, airport: edit));
    } on AppException catch (e) {
      emit(AddEditAirportState.editAirportFailed(
        data: data,
        message: e.message,
      ));
    } catch (e) {
      emit(AddEditAirportState.editAirportFailed(
        data: state.data,
        message: e.toString(),
      ));
    }
  }

  FutureOr<void> _onButtonTap(
    _ButtonTap event,
    Emitter<AddEditAirportState> emit,
  ) {
    if (_airportId.isNotEmpty) {
      add(_EditAirport(id: _airportId));
    } else {
      add(const _AddNewAirport());
    }
  }
}
