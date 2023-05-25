import 'package:freezed_annotation/freezed_annotation.dart';

part 'revenue.freezed.dart';

@freezed
class Revenue with _$Revenue {
  const factory Revenue({
    @Default("") final String amount,
    @Default("") final String cardPercent,
    @Default("") final String cashPercent,
    @Default("") final String otherPercent,
  }) = _Revenue;
}
