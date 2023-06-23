import 'package:dio/dio.dart';
import 'package:flight_booking/data/models/payment/payment_management_page_model.dart';
import 'package:flight_booking/data/models/payment/payment_model.dart';
import 'package:flight_booking/data/models/payment/payment_success_response.dart';
import 'package:flight_booking/domain/entities/payment/payment.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/http.dart';

part 'payment_api.g.dart';

class PaymentApiEndpoint {
  static const branch = '/api/v1/payment';
  static const getAllPayment = "$branch/all";
  static const getLatestPaymentOfCustomer = "$branch/getLatest";
  static const getPaymentByPage = "$branch/";
  static const getPaymentSearchList = "$branch/search";
  static const filterPayment = "$branch/search";
  static const getPaymentById = "$branch/get";
  static const updatePayment = '$branch/update';
  static const addNewPayment = '$branch/add';
  static const deletePayment = '$branch/delete';
  static const fetchPaymentManagementPage = '$branch/fetchManagementPage';
}

@RestApi()
@injectable
abstract class PaymentApi {
  @factoryMethod
  factory PaymentApi(Dio dio) = _PaymentApi;

  @GET(PaymentApiEndpoint.getAllPayment)
  Future<HttpResponse<List<PaymentModel>>> getAllPayment();

  @GET(PaymentApiEndpoint.getPaymentById)
  Future<HttpResponse<PaymentModel?>> getPaymentById(@Query("id") int id);

  @GET("${PaymentApiEndpoint.getPaymentByPage}page={page}&perPage={perPage}")
  Future<HttpResponse<List<PaymentModel>>> getPaymentByPage(
    @Path('page') int page,
    @Path('perPage') int perPage,
  );

  @GET("${PaymentApiEndpoint.getAllPayment}/customer={customerId}")
  Future<HttpResponse<List<PaymentModel>>> getAllPaymentByCustomerId(
    @Path('customerId') int customerId,
  );

  @GET(PaymentApiEndpoint.getLatestPaymentOfCustomer)
  Future<HttpResponse<PaymentModel?>> getLatestPaymentOfCustomer(
    @Query("id") int customerId,
  );

  @PUT(PaymentApiEndpoint.updatePayment)
  Future<HttpResponse<PaymentModel>> updatePayment(
    @Query("id") int id,
    @Body() Payment body,
  );

  @GET(PaymentApiEndpoint.getPaymentSearchList)
  Future<HttpResponse<List<PaymentModel>>> searchPayment(
    @Query("keyword") String keyword,
    @Query("asc") bool asc,
    // @Query
  );

  @GET(PaymentApiEndpoint.fetchPaymentManagementPage)
  Future<HttpResponse<PaymentManagementPageModel>> fetchPaymentManagementPage();

  @DELETE(PaymentApiEndpoint.deletePayment)
  Future<HttpResponse<PaymentSuccessResponse>> deletePayment(
      @Query("id") int id);
}
