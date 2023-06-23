import 'package:injectable/injectable.dart';

import '../entities/ticket/ticket_information.dart';
import '../repositories/ticket_information_repository.dart';

@injectable
class TicketInformationUsecase {
  final TicketInformationRepository _ticketInformationRepository;
  TicketInformationUsecase(this._ticketInformationRepository);

  Future<List<TicketInformation>> getTicketByFlight(int id) async =>
      await _ticketInformationRepository
          .getListTicketInformationByFlightId(id) ??
      [];

  Future<bool> addTicInformation(
    List<TicketInformation> groupData,
    int flight,
  ) async =>
      _ticketInformationRepository.addGroupTicketInformation(
        groupData,
        flight,
      );
}
