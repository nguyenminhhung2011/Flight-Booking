// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_model_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DashboardModelState _$$_DashboardModelStateFromJson(
        Map<String, dynamic> json) =>
    _$_DashboardModelState(
      viewEnum: json['viewEnum'] as int,
      isDarkTheme: json['isDarkTheme'] as bool,
      secondBodyDis: json['secondBodyDis'] as bool,
      overviewData: OverviewModelStateData.fromJson(
          json['overviewData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DashboardModelStateToJson(
        _$_DashboardModelState instance) =>
    <String, dynamic>{
      'viewEnum': instance.viewEnum,
      'isDarkTheme': instance.isDarkTheme,
      'secondBodyDis': instance.secondBodyDis,
      'overviewData': instance.overviewData,
    };
