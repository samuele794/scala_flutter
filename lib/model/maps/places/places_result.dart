import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scala_flutter/model/maps/places/geometry.dart';
import 'package:scala_flutter/model/maps/places/opening_hours.dart';
import 'package:scala_flutter/model/maps/places/photo.dart';

part 'places_result.freezed.dart';

part 'places_result.g.dart';

@freezed
class PlacesResult with _$PlacesResult {
  factory PlacesResult(
          {@JsonKey(name: "business_status") String? businessStatus,
          @JsonKey(name: "formatted_address") String? formattedAddress,
          @JsonKey(name: "geometry") Geometry? geometry,
          @JsonKey(name: "icon") String? icon,
          @JsonKey(name: "icon_background_color") String? iconBackgroundColor,
          @JsonKey(name: "icon_mask_base_uri") String? iconMaskBaseUri,
          @JsonKey(name: "name") String? name,
          @JsonKey(name: "opening_hours") OpeningHours? openingHours,
          @JsonKey(name: "photos") List<Photo>? photos,
          @JsonKey(name: "place_id") String? placeId,
          @JsonKey(name: "rating") double? rating,
          @JsonKey(name: "reference") String? reference,
          @JsonKey(name: "types") List<String>? types,
          @JsonKey(name: "user_ratings_total") int? userRatingsTotal}) =
      _PlacesResult;

  factory PlacesResult.fromJson(Map<String, Object?> json) =>
      _$PlacesResultFromJson(json);
}
