import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../models/airline/airline_model.dart';

part 'airline_api.g.dart';

class AirlineEndPoint {
  static const branch = '/api/v1/airline';
  static const getAirlineUrl = "$branch/";
  // static const editAirlineUrl = '$branch/update';
  // static const deleteAirlineUrl = "$branch/delete";
  // static const addAirlineUrl = "$branch/add";
  // static const getAirlineByPageUrl = "$branch/page/";
  // static const filterAirlineUrl = "$branch/filter/";
}

@RestApi()
@injectable
abstract class AirlineApi {
  @factoryMethod
  factory AirlineApi(Dio dio) = _AirlineApi;

  @GET(AirlineEndPoint.getAirlineUrl)
  Future<HttpResponse<List<AirlineModel>?>> fetchAirlines();

  // @GET('${AirlineEndPoint.getAirlineUrl}id={id}')
  // Future<HttpResponse<AirlineModel>> getAirlineById(@Path("id") String id);

  // @GET(
  //     '${AirlineEndPoint.getAirlineByPageUrl}cursor={cursor}&pageSize={pageSize}')
  // Future<HttpResponse<PageResponse<AirlineModel>?>> getAirlineByPage(
  //   @Path("cursor") int cursor,
  //   @Path("pageSize") int pageSize,
  // );

  // @GET('${AirlineEndPoint.filterAirlineUrl}keyword={search}')
  // Future<HttpResponse<List<AirlineModel>?>> filterAirline({
  //   @Path("search") required String search,
  // });

  // @POST(AirlineEndPoint.addAirlineUrl)
  // Future<HttpResponse<AirlineModel?>> addNewAirPorts({
  //   @Body() required Map<String, dynamic> body,
  // });

  // @DELETE('${AirlineEndPoint.deleteAirlineUrl}/{id}')
  // Future<HttpResponse> deleteAirline(@Path("id") String id);

  // @PATCH('${AirlineEndPoint.editAirlineUrl}/{id}')
  // Future<HttpResponse<AirlineModel?>> editAirline({
  //   @Path("id") required String id,
  //   @Body() required Map<String, dynamic> body,
  // });
}
