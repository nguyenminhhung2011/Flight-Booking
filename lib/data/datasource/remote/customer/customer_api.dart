import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../models/customer/customer_model.dart';
import '../../../models/page_response.dart';

part 'customer_api.g.dart';

class CustomerEndPoint {
  static const branch = '/api/v1/customer';
  static const getCustomerUrl = "$branch/all";
  static const editCustomerUrl = '$branch/update';
  static const deleteCustomerUrl = "$branch/delete";
  static const addCustomerUrl = "$branch/add";
  static const getCustomerByPageUrl = "$branch/page/";
  static const filterCustomerUrl = "$branch/filter/";
}

@RestApi()
@injectable
abstract class CustomerApi {
  @factoryMethod
  factory CustomerApi(Dio dio) = _CustomerApi;

  @GET(CustomerEndPoint.getCustomerUrl)
  Future<HttpResponse<List<CustomerModel>?>> fetchCustomers();

  @GET('${CustomerEndPoint.branch}/{id}')
  Future<HttpResponse<CustomerModel>> getCustomerById(@Path("id") String id);

  @GET(
      '${CustomerEndPoint.getCustomerByPageUrl}cursor={cursor}&pageSize={pageSize}')
  Future<HttpResponse<PageResponse<CustomerModel>?>> getCustomerByPage(
    @Path("cursor") int cursor,
    @Path("pageSize") int pageSize,
  );

  @GET('${CustomerEndPoint.filterCustomerUrl}keyword={search}')
  Future<HttpResponse<List<CustomerModel>?>> filterCustomer({
    @Path("search") required String search,
    @CancelRequest() required CancelToken cancelRequest,
  });

  @POST(CustomerEndPoint.addCustomerUrl)
  Future<HttpResponse<CustomerModel?>> addNewCustomers({
    @Body() required Map<String, dynamic> body,
  });

  @DELETE('${CustomerEndPoint.branch}/{id}')
  Future<HttpResponse> deleteCustomer(@Path("id") String id);

  @PUT(CustomerEndPoint.editCustomerUrl)
  Future<HttpResponse<CustomerModel?>> editCustomer({
    @Body() required Map<String, dynamic> body,
  });
}
