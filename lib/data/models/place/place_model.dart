import 'package:freezed_annotation/freezed_annotation.dart';

@JsonSerializable(explicitToJson: true)
class PlaceModel {
  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "code")
  final int code;
  @JsonKey(name: "division_type")
  final String divisionType;
  @JsonKey(name: "codename")
  final String codeName;
  @JsonKey(name: "phone_code")
  final int phoneCode;

  PlaceModel({
    required this.name,
    required this.code,
    required this.divisionType,
    required this.codeName,
    required this.phoneCode,
  });

  factory PlaceModel.fromJson(Map<String, dynamic> json) => PlaceModel(
        name: json['name'] as String,
        code: json['code'] as int,
        divisionType: json['division_type'] as String,
        codeName: json['codename'] as String,
        phoneCode: 0,
      );
}
