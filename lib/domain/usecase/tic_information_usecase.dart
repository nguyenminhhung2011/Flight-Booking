import 'package:injectable/injectable.dart';

import '../entities/ticket/ticket_information.dart';
import '../repositories/ticket_information_repository.dart';

@injectable
class TicketInformationUsecase {
  final TicketInformationRepository _listTicketInformationRepository;
  TicketInformationUsecase(this._listTicketInformationRepository);

  Future<List<TicketInformation>> getTicketByFlight(int id) async {
    return await _listTicketInformationRepository
            .getListTicketInformationByFlightId(id) ??
        [];
  }
}
