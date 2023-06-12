import 'package:dio/dio.dart';
import 'package:flight_booking/data/models/airport/airport_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'airport_api.g.dart';

class AirportEndPoint {
  static const branch = '/api/v1/airport';
  static const getAirportUrl = "$branch/";
  static const editAirportUrl = '$branch/update';
  static const deleteAirportUrl = "$branch/delete";
  static const addAirportUrl = "$branch/add";
  static const getAirportByPageUrl = "$branch/page/";
}

@RestApi()
@injectable
abstract class AirportApi {
  @factoryMethod
  factory AirportApi(Dio dio) = _AirportApi;

  @GET(AirportEndPoint.getAirportUrl)
  Future<HttpResponse<List<AirportModel>?>> fetchAirports();

  @GET('${AirportEndPoint.getAirportUrl}{id}')
  Future<HttpResponse<AirportModel>> getAirportById(@Path("id") String id);

  @GET('${AirportEndPoint.getAirportByPageUrl}{cursor}/{pageSize}')
  Future<HttpResponse<List<AirportModel>?>> getAirportByPage(
    @Path("cursor") int cursor,
    @Path("pageSize") int pageSize,
  );
  @POST(AirportEndPoint.addAirportUrl)
  Future<HttpResponse<AirportModel?>> addNewAirPorts({
    @Body() required Map<String, dynamic> body,
  });

  @DELETE('${AirportEndPoint.deleteAirportUrl}/{id}')
  Future<HttpResponse> deleteAirport(@Path("id") String id);

  @PUT(AirportEndPoint.editAirportUrl)
  Future<HttpResponse<AirportModel?>> editAirport({
    @Body() required Map<String, dynamic> body,
  });
}
