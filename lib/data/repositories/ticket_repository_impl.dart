import 'dart:convert';
import 'dart:developer';

import 'package:injectable/injectable.dart';

import '../../domain/entities/ticket/ticket.dart';
import '../../domain/repositories/ticket_repository.dart';
import '../datasource/remote/rest_api/rest_api.dart';
import '../models/ticket/ticket_model.dart';

class TicketEndPoint {
  static const fetchTicketUrl = "url/ticket/fetch";
  static const editTicketUrl = "url/ticket/edit";
  static const deleteTicketUrl = "url/ticket/delete";
  static const addTicketUrl = "url/ticket/add";
}

@Injectable(as: TicketRepository)
class TicketRepositoryImpl extends TicketRepository {
  final RestApi _restApi;
  TicketRepositoryImpl(this._restApi);

  @override
  Future<List<Ticket>?> getListTicket() async {
    var result = <Ticket>[];
    try {
      final response = await _restApi.get(
        TicketEndPoint.fetchTicketUrl,
        <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      if (response == null) {
        return null;
      }
      for (var item in response) {
        Map<String, dynamic> json = jsonDecode(item);
        result.add(TicketModel.fromJson(json).toEntity);
      }
    } catch (e) {
      log('Error');
    }
    return result;
  }

  @override
  Future<Ticket?> addNewTicket(Ticket ticket) async {
    try {
      final ticketModel = TicketModel()
        ..id = ticket.id
        ..idCustomer = ticket.idCustomer
        ..idFlight = ticket.idFlight
        ..price = ticket.price
        ..timeBought = ticket.timeBought.millisecondsSinceEpoch;
      final response = await _restApi.post(
        TicketEndPoint.addTicketUrl,
        jsonEncode(ticketModel.toJson()),
        <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      if (response == null) {
        return null;
      }
      return ticketModel.toEntity;
    } catch (e) {
      log('Error');
    }
    return null;
  }

  @override
  Future<bool> deleteTicket(String id) async {
    try {
      final response = await _restApi.delete(
        '${TicketEndPoint.deleteTicketUrl}/$id',
        {},
        <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      return response != null;
    } catch (e) {
      log('Error');
    }
    return false;
  }

  @override
  Future<bool> editTicket(Ticket newTicket) async {
    try {
      final ticketModel = TicketModel()
        ..id = newTicket.id
        ..idCustomer = newTicket.idCustomer
        ..idFlight = newTicket.idFlight
        ..price = newTicket.price
        ..timeBought = newTicket.timeBought.millisecondsSinceEpoch;
      final response = await _restApi.put(
        TicketEndPoint.editTicketUrl,
        jsonEncode(ticketModel.toJson()),
        <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      return response != null;
    } catch (e) {
      log('Error');
    }
    return false;
  }
}
