import 'package:dio/dio.dart';
import 'package:flight_booking/data/models/flight/flight_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../models/api_response/api_response.dart';

part 'flight_api.g.dart';

class FlightEndPoint {
  static const fetchFlightUrl = "flight/fetch";
  static const editFlightUrl = "flight/edit";
  static const deleteFlightUrl = "flight/delete";
  static const addFlightUrl = "flight/add";
}

@RestApi()
@injectable
abstract class FlightApi {
  @factoryMethod
  factory FlightApi(Dio dio) = _FlightApi;

  @GET(FlightEndPoint.fetchFlightUrl)
  Future<ApiResponse<List<FlightModel>?>> fetchFlights();

  @POST(FlightEndPoint.addFlightUrl)
  Future<ApiResponse<FlightModel?>> addNewFlight({
    @Body() required Map<String, dynamic> body,
  });

  @DELETE('${FlightEndPoint.deleteFlightUrl}/{id}')
  Future<ApiResponse<bool>> deleteFlight(@Path("id") String id);

  @PUT(FlightEndPoint.editFlightUrl)
  Future<ApiResponse<FlightModel?>> editFlight({
    @Body() required Map<String, dynamic> body,
  });
}
