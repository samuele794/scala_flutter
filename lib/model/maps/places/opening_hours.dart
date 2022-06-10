import 'package:freezed_annotation/freezed_annotation.dart';

part 'opening_hours.freezed.dart';

part 'opening_hours.g.dart';

@freezed
class OpeningHours with _$OpeningHours {
  factory OpeningHours({
    @JsonKey(name: "open_now") bool? openNow,
  }) = _OpeningHours;

  factory OpeningHours.fromJson(Map<String, Object?> json) =>
      _$OpeningHoursFromJson(json);
}
