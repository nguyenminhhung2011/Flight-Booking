import 'package:dio/dio.dart';
import 'package:flight_booking/data/models/flight/flight_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../models/page_response.dart';
part 'flight_api.g.dart';

class FlightEndPoint {
  static const branch = 'api/v1/flight';
  static const fetchFlightUrl = "$branch/";
  static const editFlightUrl = "$branch/update/";
  static const deleteFlightUrl = "$branch/delete/";
  static const addFlightUrl = "$branch/add";
  static const getFlightByPageUrl = '$branch/page/';
  static const filterFlightUrl = '$branch/filter/';
}

@RestApi()
@injectable
abstract class FlightApi {
  @factoryMethod
  factory FlightApi(Dio dio) = _FlightApi;

  @GET(FlightEndPoint.fetchFlightUrl)
  Future<HttpResponse<List<FlightModel>?>> fetchFlights();

  @GET('${FlightEndPoint.fetchFlightUrl}id={id}')
  Future<HttpResponse<FlightModel?>> getFlightById(@Path("id") String id);

  @GET(
      '${FlightEndPoint.getFlightByPageUrl}cursor={cursor}&pageSize={pageSize}')
  Future<HttpResponse<PageResponse<FlightModel>?>> getFlightByPage(
    @Path("cursor") int cursor,
    @Path("pageSize") int pageSize,
  );

  @GET('${FlightEndPoint.filterFlightUrl}cursor={cursor}&pageSize={pageSize}')
  Future<HttpResponse<List<FlightModel>?>> filterFlight({
    @Path("cursor") required int cursor,
    @Path("pageSize") required int pageSize,
    @Query("locationArrival") required String locationArrival,
    @Query("locationDeparture") required String locationDeparture,
    @Query("airlineName") required String airlineName,
  });

  @POST(FlightEndPoint.addFlightUrl)
  Future<HttpResponse<FlightModel?>> addNewFlight({
    @Body() required Map<String, dynamic> body,
  });

  @DELETE('${FlightEndPoint.deleteFlightUrl}/{id}')
  Future<HttpResponse> deleteFlight(@Path("id") String id);

  @PATCH('${FlightEndPoint.editFlightUrl}/{id}')
  Future<HttpResponse<FlightModel?>> editFlight({
    @Path("id") required String id,
    @Body() required Map<String, dynamic> body,
  });
}
