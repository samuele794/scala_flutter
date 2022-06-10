import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scala_flutter/model/maps/places/location.dart';

part 'geometry.freezed.dart';

part 'geometry.g.dart';

@freezed
class Geometry with _$Geometry {
  factory Geometry({
    @JsonKey(name: "location") Location? location,
  }) = _Geometry;

  factory Geometry.fromJson(Map<String, Object?> json) =>
      _$GeometryFromJson(json);
}
