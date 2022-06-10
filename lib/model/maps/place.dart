import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'place.freezed.dart';

part 'place.g.dart';

@freezed
class Place with _$Place {
  const factory Place(
      {required String place,
      required String placeNamed,
      required String address,
      @JsonKey(fromJson: LatLng.fromJson, toJson: jsonEncode)
          required LatLng? latLng,
      required String geoHash}) = _Place;

  factory Place.fromJson(Map<String, Object?> json) => _$PlaceFromJson(json);
}
