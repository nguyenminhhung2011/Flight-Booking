import 'package:dio/dio.dart';
import 'package:flight_booking/data/models/api_response/api_response.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../models/payment/payment_model.dart';
import '../../../models/ticket/ticket_model.dart';

part 'ticket_api.g.dart';

class TicketEndPoint {
  static const branch = '/api/v1/ticket';
  static const bookTicket = '$branch/book_ticket';
  static const fetchTicketUrl = "ticket/fetch";
  static const editTicketUrl = "ticket/edit";
  static const deleteTicketUrl = "ticket/delete";
  static const addTicketUrl = "ticket/add";
}

@RestApi()
@injectable
abstract class TicketApi {
  @factoryMethod
  factory TicketApi(Dio dio) = _TicketApi;

  @GET(TicketEndPoint.fetchTicketUrl)
  Future<ApiResponse<List<TicketModel>?>> fetchTickets();

  @GET('${TicketEndPoint.branch}/flightId={id}')
  Future<HttpResponse<List<TicketModel>?>> getByFlightId({
    @Path("id") required int flightId,
  });

  @POST(TicketEndPoint.addTicketUrl)
  Future<ApiResponse<TicketModel?>> addNewTickets({
    @Body() required Map<String, dynamic> body,
  });

  @POST(TicketEndPoint.bookTicket)
  Future<HttpResponse<PaymentModel?>> bookTicket({
    @Body() required Map<String, dynamic> body,
  });

  @DELETE('${TicketEndPoint.deleteTicketUrl}/{id}')
  Future<ApiResponse<bool>> deleteTicket(@Path("id") String id);

  @PUT(TicketEndPoint.editTicketUrl)
  Future<ApiResponse<TicketModel?>> editTicket({
    @Body() required Map<String, dynamic> body,
  });
}
