import 'package:freezed_annotation/freezed_annotation.dart';

part 'revenue.freezed.dart';

@freezed
class Revenue with _$Revenue {
  const factory Revenue({
    @Default(0.0) final double amount,
    @Default(0.0) final double cardPercent,
    @Default(0.0) final double cashPercent,
    @Default(0.0) final double otherPercent,
  }) = _Revenue;
}
