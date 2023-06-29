import 'package:dio/dio.dart';
import 'package:flight_booking/presentations/dashboard/bloc/overview_model_state_data.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
part 'overview_api.g.dart';

@RestApi()
@injectable
abstract class OverviewApi {
  @factoryMethod
  factory OverviewApi(Dio dio) = _OverviewApi;

  @GET("api/v1/overview")
  Future<HttpResponse<OverviewModelStateData>> fetchOverviewData(
    @Query("from") int from,
    @Query("to") int to, 
  );
}
