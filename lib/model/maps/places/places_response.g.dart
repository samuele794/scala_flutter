// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlacesResponse _$$_PlacesResponseFromJson(Map<String, dynamic> json) =>
    _$_PlacesResponse(
      status: json['status'] as String?,
      placesResults: (json['results'] as List<dynamic>?)
              ?.map((e) => PlacesResult.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_PlacesResponseToJson(_$_PlacesResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'results': instance.placesResults,
    };
