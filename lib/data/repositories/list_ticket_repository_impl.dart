import 'package:flight_booking/data/datasource/remote/rest_api/rest_api.dart';
import 'package:flight_booking/domain/entities/ticket/ticket.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/list_ticket_repository.dart';

@Injectable(as: ListTicketRepository)
class ListTicketRepositoryImpl extends ListTicketRepository {
  final RestApi _restApi;
  ListTicketRepositoryImpl(this._restApi);

  @override
  Future<List<Ticket>> getListTicket() async {
    return _restApi.getListTicket();
  }
}
