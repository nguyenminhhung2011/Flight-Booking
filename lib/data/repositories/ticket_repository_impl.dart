import 'dart:io';

import 'package:flight_booking/data/models/model_heloer.dart';
import 'package:flight_booking/domain/entities/payment/payment.dart';
import 'package:injectable/injectable.dart';

import '../../core/components/network/app_exception.dart';
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
    // final ticketModel = TicketModel()
    //   ..id = ticket.id
    //   ..idCustomer = ticket.idCustomer
    //   ..idFlight = ticket.idFlight
    //   ..price = ticket.price
    //   ..timeBought = ticket.timeBought.millisecondsSinceEpoch;
    // final body = ticketModel.toJson();
    // final response = await _ticketApi.addNewTickets(body: body);
    // final data = response.data?.toEntity;
    // if (data == null) {
    //   return null;
    // }
    // return data;
    return null;
  }

  @override
  Future<bool> deleteTicket(String id) async {
    final response = await _ticketApi.deleteTicket(id);
    return response.data;
  }

  @override
  Future<Ticket?> editTicket(Ticket newTicket) async {
    // final ticketModel = TicketModel()
    //   ..id = newTicket.id
    //   ..idCustomer = newTicket.idCustomer
    //   ..idFlight = newTicket.idFlight
    //   ..price = newTicket.price
    //   ..timeBought = newTicket.timeBought.millisecondsSinceEpoch;
    // final body = ticketModel.toJson();
    // final response = await _ticketApi.editTicket(body: body);
    // final data = response.data?.toEntity;
    // if (data == null) {
    //   return null;
    // }
    // return data;
    return null;
  }

  @override
  Future<Payment?> bookTicket({
    required List<Ticket> tics,
    required int customerId,
    required int flightId,
    required String paymentType,
  }) async {
    var listDataModel = tics
        .map(
          (e) => ModelHelper.ticConvert(e).toJson(),
        )
        .toList();
    final body = {
      'tickets': listDataModel,
      'flightId': flightId,
      'customerId': customerId,
      'paymentType': paymentType,
    };
    final response = await _ticketApi.bookTicket(body: body);
    if (response.response.statusCode != HttpStatus.ok) {
      throw AppException(
        message: response.response.statusMessage!,
        code: response.response.statusCode,
      );
    }
    return response.data?.toEntity;
  }
}
