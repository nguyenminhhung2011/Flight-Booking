import 'package:dio/dio.dart';
import 'package:flight_booking/data/models/api_response/api_response.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../models/ticket/ticket_information_model.dart';

part 'ticket_information_api.g.dart';

class TicketInformationEndPoint {
  static const branch = '/api/v1/ticketInformation';
  static const fetchTicketInformationUrl = "$branch/fetch";
  static const editTicketInformationUrl = "$branch/edit";
  static const deleteTicketInformationUrl = "$branch/delete";
  static const addTicketInformationUrl = "$branch/add";
  static const getTicInformationByFlight = "$branch/flight=";
}

@RestApi()
@injectable
abstract class TicketInformationApi {
  @factoryMethod
  factory TicketInformationApi(Dio dio) = _TicketInformationApi;

  @GET(TicketInformationEndPoint.fetchTicketInformationUrl)
  Future<ApiResponse<List<TicketInformationModel>?>> fetchTicketInformation();

  @GET('${TicketInformationEndPoint.getTicInformationByFlight}{id}')
  Future<HttpResponse<List<TicketInformationModel>?>> getTicInformationByFlight(
      {@Path("id") required int flightId});

  @POST(TicketInformationEndPoint.addTicketInformationUrl)
  Future<ApiResponse<TicketInformationModel?>> addNewTicketInformation({
    @Body() required Map<String, dynamic> body,
  });

  @DELETE('${TicketInformationEndPoint.deleteTicketInformationUrl}/{id}')
  Future<ApiResponse<bool>> deleteTicketInformation(@Path("id") String id);

  @PUT(TicketInformationEndPoint.editTicketInformationUrl)
  Future<ApiResponse<TicketInformationModel?>> editTicketInformation({
    @Body() required Map<String, dynamic> body,
  });
}
