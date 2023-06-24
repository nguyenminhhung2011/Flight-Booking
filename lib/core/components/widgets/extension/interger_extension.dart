import 'package:flight_booking/core/components/enum/tic_type_enum.dart';

extension IntegerExtension on int {
  TicTypeEnum get ticClass => TicTypeEnum.fromInt(this);
}
