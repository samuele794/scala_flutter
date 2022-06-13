import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'location.freezed.dart';
part 'location.g.dart';

@freezed
class Location with _$Location {
  factory Location(
      {@JsonKey(name: "lat") double? lat,
      @JsonKey(name: "lng") double? lng}) = _Location;

  factory Location.fromJson(Map<String, Object?> json) =>
      _$LocationFromJson(json);
}

extension LocationLatLng on Location {
  LatLng asLatLng() {
    if (lat != null && lng != null) {
      return LatLng(lat!, lng!);
    } else {
      return const LatLng(0.0, 0.0);
    }
  }
}
