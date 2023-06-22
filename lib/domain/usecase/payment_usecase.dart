import 'dart:io';

import 'package:flight_booking/data/datasource/remote/payment/payment_api.dart';
import 'package:flight_booking/data/models/payment/payment_success_response.dart';
import 'package:flight_booking/domain/entities/payment/payment.dart';
import 'package:injectable/injectable.dart';

@injectable
class PaymentUseCase {
  final PaymentApi _paymentApi;

  PaymentUseCase(this._paymentApi);

  Future<List<Payment>> fetchAllPayment() async {
    final response = await _paymentApi.getAllPayment();
    return response.data.map((e) => e.toEntity).toList();
  }

  Future<Payment> getPaymentById(int id) async {
    final result = (await _paymentApi.getPaymentById(id));

    return result.data?.toEntity ?? Payment();
  }

  Future<List<Payment>> getPaymentByPage(int page, int perPage) async {
    return (await _paymentApi.getPaymentByPage(page, perPage))
        .data
        .map((e) => e.toEntity)
        .toList();
  }

  Future<Payment> updatePayment(int id, Payment payment) async {
    return (await _paymentApi.updatePayment(id, payment)).data.toEntity;
  }

  Future<List<Payment>> searchPayment(String keyword, bool asc) async {
    return (await _paymentApi.searchPayment(keyword, asc))
        .data
        .map((e) => e.toEntity)
        .toList();
  }

  Future<PaymentSuccessResponse> deletePayment(int id) async {
    return (await _paymentApi.deletePayment(id)).data;
  }
}
