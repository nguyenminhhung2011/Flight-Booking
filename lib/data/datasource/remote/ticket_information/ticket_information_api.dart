import 'package:dio/dio.dart';
import 'package:flight_booking/data/models/api_response/api_response.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../models/ticket/ticket_information_model.dart';
import '../../../models/ticket/ticket_model.dart';

part 'ticket_information_api.g.dart';

class TicketInformationEndPoint {
  static const branch = '/api/v1/';
  static const fetchTicketInformationUrl = "ticketInformation/fetch";
  static const editTicketInformationUrl = "ticketInformation/edit";
  static const deleteTicketInformationUrl = "ticketInformation/delete";
  static const addTicketInformationUrl = "ticketInformation/add";
}

@RestApi()
@injectable
abstract class TicketInformationApi {
  @factoryMethod
  factory TicketInformationApi(Dio dio) = _TicketInformationApi;

  @GET(TicketInformationEndPoint.fetchTicketInformationUrl)
  Future<ApiResponse<List<TicketInformationModel>?>> fetchTicketInformation();

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
