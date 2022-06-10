// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlacesResult _$$_PlacesResultFromJson(Map<String, dynamic> json) =>
    _$_PlacesResult(
      businessStatus: json['business_status'] as String?,
      formattedAddress: json['formatted_address'] as String?,
      geometry: json['geometry'] == null
          ? null
          : Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
      icon: json['icon'] as String?,
      iconBackgroundColor: json['icon_background_color'] as String?,
      iconMaskBaseUri: json['icon_mask_base_uri'] as String?,
      name: json['name'] as String?,
      openingHours: json['opening_hours'] == null
          ? null
          : OpeningHours.fromJson(
              json['opening_hours'] as Map<String, dynamic>),
      photos: (json['photos'] as List<dynamic>?)
          ?.map((e) => Photo.fromJson(e as Map<String, dynamic>))
          .toList(),
      placeId: json['place_id'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      reference: json['reference'] as String?,
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
      userRatingsTotal: json['user_ratings_total'] as int?,
    );

Map<String, dynamic> _$$_PlacesResultToJson(_$_PlacesResult instance) =>
    <String, dynamic>{
      'business_status': instance.businessStatus,
      'formatted_address': instance.formattedAddress,
      'geometry': instance.geometry,
      'icon': instance.icon,
      'icon_background_color': instance.iconBackgroundColor,
      'icon_mask_base_uri': instance.iconMaskBaseUri,
      'name': instance.name,
      'opening_hours': instance.openingHours,
      'photos': instance.photos,
      'place_id': instance.placeId,
      'rating': instance.rating,
      'reference': instance.reference,
      'types': instance.types,
      'user_ratings_total': instance.userRatingsTotal,
    };
