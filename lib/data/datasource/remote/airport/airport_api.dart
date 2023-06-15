import 'package:dio/dio.dart';
import 'package:flight_booking/data/models/airport/airport_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../models/page_response.dart';

part 'airport_api.g.dart';

class AirportEndPoint {
  static const branch = '/api/v1/airport';
  static const getAirportUrl = "$branch/";
  static const editAirportUrl = '$branch/update';
  static const deleteAirportUrl = "$branch/delete";
  static const addAirportUrl = "$branch/add";
  static const getAirportByPageUrl = "$branch/page/";
  static const filterAirportUrl = "$branch/filter/";
}

@RestApi()
@injectable
abstract class AirportApi {
  @factoryMethod
  factory AirportApi(Dio dio) = _AirportApi;

  @GET(AirportEndPoint.getAirportUrl)
  Future<HttpResponse<List<AirportModel>?>> fetchAirports();

  @GET('${AirportEndPoint.getAirportUrl}id={id}')
  Future<HttpResponse<AirportModel>> getAirportById(@Path("id") String id);

  @GET(
      '${AirportEndPoint.getAirportByPageUrl}cursor={cursor}&pageSize={pageSize}')
  Future<HttpResponse<PageResponse<AirportModel>?>> getAirportByPage(
    @Path("cursor") int cursor,
    @Path("pageSize") int pageSize,
  );

  @GET('${AirportEndPoint.filterAirportUrl}keyword={search}')
  Future<HttpResponse<List<AirportModel>?>> filterAirport({
    @Path("search") required String search,
  });

  @POST(AirportEndPoint.addAirportUrl)
  Future<HttpResponse<AirportModel?>> addNewAirPorts({
    @Body() required Map<String, dynamic> body,
  });

  @DELETE('${AirportEndPoint.deleteAirportUrl}/{id}')
  Future<HttpResponse> deleteAirport(@Path("id") String id);

  @PATCH('${AirportEndPoint.editAirportUrl}/{id}')
  Future<HttpResponse<AirportModel?>> editAirport({
    @Path("id") required String id,
    @Body() required Map<String, dynamic> body,
  });
}
