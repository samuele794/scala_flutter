// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Place _$$_PlaceFromJson(Map<String, dynamic> json) => _$_Place(
      place: json['place'] as String,
      placeNamed: json['placeNamed'] as String,
      address: json['address'] as String,
      latLng: LatLng.fromJson(json['latLng']),
      geoHash: json['geoHash'] as String,
    );

Map<String, dynamic> _$$_PlaceToJson(_$_Place instance) => <String, dynamic>{
      'place': instance.place,
      'placeNamed': instance.placeNamed,
      'address': instance.address,
      'latLng': jsonEncode(instance.latLng),
      'geoHash': instance.geoHash,
    };
