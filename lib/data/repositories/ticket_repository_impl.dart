import 'dart:convert';
import 'dart:developer';

import 'package:injectable/injectable.dart';

import '../../domain/entities/ticket/ticket.dart';
import '../../domain/repositories/ticket_repository.dart';
import '../datasource/remote/ticket/ticket_api.dart';
import '../models/ticket/ticket_model.dart';

@Injectable(as: TicketRepository)
class TicketRepositoryImpl extends TicketRepository {
  final TicketApi _ticketApi;
  TicketRepositoryImpl(this._ticketApi);

  @override
  Future<List<Ticket>?> getListTicket() async {
    final response = await _ticketApi.fetchTickets();
    final data = response.data?.map((e) => e.toEntity).toList();
    return data ?? <Ticket>[];
  }

  @override
  Future<Ticket?> addNewTicket(Ticket ticket) async {
    final ticketModel = TicketModel()
      ..id = ticket.id
      ..idCustomer = ticket.idCustomer
      ..idFlight = ticket.idFlight
      ..price = ticket.price
      ..timeBought = ticket.timeBought.millisecondsSinceEpoch;
    final body = ticketModel.toJson();
    final response = await _ticketApi.addNewTickets(body: body);
    final data = response.data?.toEntity;
    if (data == null) {
      return null;
    }
    return data;
  }

  @override
  Future<bool> deleteTicket(String id) async {
    final response = await _ticketApi.deleteTicket(id);
    return response.data;
  }

  @override
  Future<Ticket?> editTicket(Ticket newTicket) async {
    final ticketModel = TicketModel()
      ..id = newTicket.id
      ..idCustomer = newTicket.idCustomer
      ..idFlight = newTicket.idFlight
      ..price = newTicket.price
      ..timeBought = newTicket.timeBought.millisecondsSinceEpoch;
    final body = ticketModel.toJson();
    final response = await _ticketApi.editTicket(body: body);
    final data = response.data?.toEntity;
    if (data == null) {
      return null;
    }
    return data;
  }
}
