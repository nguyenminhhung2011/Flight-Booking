import 'dart:developer';

import 'package:flight_booking/core/components/network/app_exception.dart';
import 'package:flight_booking/data/models/model_helper.dart';
import 'package:flight_booking/domain/usecase/flight_usecase.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/flight/flight.dart';

@injectable
class FmdNotifier extends ChangeNotifier {
  final FlightsUsecase _flightsUsecase;
  final int _flightId;
  FmdNotifier(
    @factoryParam int flightId,
    this._flightsUsecase,
  ) : _flightId = flightId {
    getFlight();
  }

  Flight? _flight;
  bool _loading = false;
  Flight get flight => _flight ?? ModelHelper.defaultFlight;
  bool get loading => _loading;

  void loadingDisable() {
    _loading = false;
    notifyListeners();
  }

  Future<void> getFlight() async {
    _loading = true;
    notifyListeners();
    try {
      final response =
          await _flightsUsecase.getFlightById(_flightId.toString());
      if (response == null) {
        loadingDisable();
        return;
      }
      _flight = response;
      _loading = false;
      notifyListeners();
    } on AppException catch (e) {
      loadingDisable();
      log(e.toString());
    } catch (e) {
      loadingDisable();
      log(e.toString());
    }
  }
}
