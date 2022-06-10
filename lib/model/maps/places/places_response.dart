import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scala_flutter/model/maps/places/places_result.dart';

part 'places_response.freezed.dart';

part 'places_response.g.dart';

@freezed
class PlacesResponse with _$PlacesResponse {
  const factory PlacesResponse({
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "results") @Default([]) List<PlacesResult> placesResults,
  }) = _PlacesResponse;

  factory PlacesResponse.fromJson(Map<String, Object?> json) =>
      _$PlacesResponseFromJson(json);
}
