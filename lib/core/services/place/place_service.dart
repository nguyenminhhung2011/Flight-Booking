// part 'place_api.g.dart';

import 'dart:convert';

import 'package:injectable/injectable.dart';

import '../../../data/models/place/place_model.dart';
import 'package:http/http.dart' as http;

// 🚑 Dumb code

const String placeApi = 'https://provinces.open-api.vn/api';

class PlaceEndPoint {
  static const provinceUrl = "$placeApi/p";
  static const districtUrl = "$placeApi/p";
  static const wardUrl = "$placeApi/d";
}

@injectable
class PlaceService {
  PlaceService();

  Future<List<PlaceModel>> getProvinces() async {
    List<dynamic> responseJson;
    List<PlaceModel> provinces = [];
    try {
      final response = await http.get(Uri.parse(PlaceEndPoint.provinceUrl));
      responseJson = jsonDecode(utf8.decode(response.bodyBytes));
      provinces = responseJson.map((e) => PlaceModel.fromJson(e)).toList();
    } on Exception catch (_) {}
    return provinces;
  }

  Future<List<PlaceModel>> getDistricts(int code) async {
    dynamic responseJson;
    List<PlaceModel> districts = [];
    try {
      final response = await http
          .get(Uri.parse('${PlaceEndPoint.districtUrl}/$code?depth=2'));
      responseJson = jsonDecode(utf8.decode(response.bodyBytes));
      districts = (responseJson['districts'] as List<dynamic>)
          .map((e) => PlaceModel.fromJson(e))
          .toList();
    } on Exception catch (_) {}
    return districts;
  }

  Future<List<PlaceModel>> getWards(int code) async {
    dynamic responseJson;
    List<PlaceModel> districts = [];
    try {
      final response =
          await http.get(Uri.parse('${PlaceEndPoint.wardUrl}/$code?depth=2'));
      responseJson = jsonDecode(utf8.decode(response.bodyBytes));
      districts = (responseJson['wards'] as List<dynamic>)
          .map((e) => PlaceModel.fromJson(e))
          .toList();
    } on Exception catch (_) {}
    return districts;
  }
}
