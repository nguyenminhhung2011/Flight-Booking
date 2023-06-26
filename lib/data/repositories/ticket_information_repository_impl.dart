import 'dart:io';

import 'package:flight_booking/core/components/network/app_exception.dart';
import 'package:flight_booking/data/models/model_helper.dart';
import 'package:flight_booking/data/models/ticket/ticket_information_model.dart';
import 'package:flight_booking/domain/entities/ticket/ticket_information.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/ticket_information_repository.dart';
import '../datasource/remote/ticket_information/ticket_information_api.dart';

@Injectable(as: TicketInformationRepository)
class TicketInformationRepositoryImpl extends TicketInformationRepository {
  final TicketInformationApi _ticketInformationApi;
  TicketInformationRepositoryImpl(this._ticketInformationApi);

  @override
  Future<bool> addGroupTicketInformation(
    List<TicketInformation> groupData,
    int flight,
  ) async {
    var listGroupDataModel = <TicketInformationModel>[];
    for (var element in groupData) {
      listGroupDataModel.add(ModelHelper.ticInformationCovert(element));
    }
    final body = {
      'flightId': flight,
      'ticketInformation': listGroupDataModel.map((e) => e.toJson()).toList(),
    };
    final response =
        await _ticketInformationApi.addGroupTicInformation(body: body);
    if (response.response.statusCode != HttpStatus.ok) {
      throw AppException(
        message: response.response.statusMessage!,
        code: response.response.statusCode,
      );
    }
    return true;
  }

  @override
  Future<bool> deleteTicketInformation(String id) {
    throw UnimplementedError();
  }

  @override
  Future<TicketInformation?> editTicketInformation(
    TicketInformation newTicket,
  ) {
    throw UnimplementedError();
  }

  @override
  Future<List<TicketInformation>?> getListTicketInformation() {
    throw UnimplementedError();
  }

  @override
  Future<List<TicketInformation>?> getListTicketInformationByFlightId(
    int id,
  ) async {
    //🚑 dumb code
    final response =
        await _ticketInformationApi.getTicInformationByFlight(flightId: id);
    if (response.response.statusCode != HttpStatus.ok) {
      throw AppException(
        message: response.response.statusMessage!,
        code: response.response.statusCode,
      );
    }
    return response.data?.map((e) => e.toEntity).toList();
  }
}
