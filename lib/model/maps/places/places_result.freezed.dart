// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'places_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlacesResult _$PlacesResultFromJson(Map<String, dynamic> json) {
  return _PlacesResult.fromJson(json);
}

/// @nodoc
mixin _$PlacesResult {
  @JsonKey(name: "business_status")
  String? get businessStatus => throw _privateConstructorUsedError;

  @JsonKey(name: "formatted_address")
  String? get formattedAddress => throw _privateConstructorUsedError;

  @JsonKey(name: "geometry")
  Geometry? get geometry => throw _privateConstructorUsedError;

  @JsonKey(name: "icon")
  String? get icon => throw _privateConstructorUsedError;

  @JsonKey(name: "icon_background_color")
  String? get iconBackgroundColor => throw _privateConstructorUsedError;

  @JsonKey(name: "icon_mask_base_uri")
  String? get iconMaskBaseUri => throw _privateConstructorUsedError;

  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;

  @JsonKey(name: "opening_hours")
  OpeningHours? get openingHours => throw _privateConstructorUsedError;

  @JsonKey(name: "photos")
  List<Photo>? get photos => throw _privateConstructorUsedError;

  @JsonKey(name: "place_id")
  String? get placeId => throw _privateConstructorUsedError;

  @JsonKey(name: "rating")
  double? get rating => throw _privateConstructorUsedError;

  @JsonKey(name: "reference")
  String? get reference => throw _privateConstructorUsedError;

  @JsonKey(name: "types")
  List<String>? get types => throw _privateConstructorUsedError;

  @JsonKey(name: "user_ratings_total")
  int? get userRatingsTotal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlacesResultCopyWith<PlacesResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlacesResultCopyWith<$Res> {
  factory $PlacesResultCopyWith(
          PlacesResult value, $Res Function(PlacesResult) then) =
      _$PlacesResultCopyWithImpl<$Res>;

  $Res call(
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
      @JsonKey(name: "user_ratings_total") int? userRatingsTotal});

  $GeometryCopyWith<$Res>? get geometry;

  $OpeningHoursCopyWith<$Res>? get openingHours;
}

/// @nodoc
class _$PlacesResultCopyWithImpl<$Res> implements $PlacesResultCopyWith<$Res> {
  _$PlacesResultCopyWithImpl(this._value, this._then);

  final PlacesResult _value;

  // ignore: unused_field
  final $Res Function(PlacesResult) _then;

  @override
  $Res call({
    Object? businessStatus = freezed,
    Object? formattedAddress = freezed,
    Object? geometry = freezed,
    Object? icon = freezed,
    Object? iconBackgroundColor = freezed,
    Object? iconMaskBaseUri = freezed,
    Object? name = freezed,
    Object? openingHours = freezed,
    Object? photos = freezed,
    Object? placeId = freezed,
    Object? rating = freezed,
    Object? reference = freezed,
    Object? types = freezed,
    Object? userRatingsTotal = freezed,
  }) {
    return _then(_value.copyWith(
      businessStatus: businessStatus == freezed
          ? _value.businessStatus
          : businessStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      formattedAddress: formattedAddress == freezed
          ? _value.formattedAddress
          : formattedAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      geometry: geometry == freezed
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as Geometry?,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      iconBackgroundColor: iconBackgroundColor == freezed
          ? _value.iconBackgroundColor
          : iconBackgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      iconMaskBaseUri: iconMaskBaseUri == freezed
          ? _value.iconMaskBaseUri
          : iconMaskBaseUri // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      openingHours: openingHours == freezed
          ? _value.openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as OpeningHours?,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      userRatingsTotal: userRatingsTotal == freezed
          ? _value.userRatingsTotal
          : userRatingsTotal // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $GeometryCopyWith<$Res>? get geometry {
    if (_value.geometry == null) {
      return null;
    }

    return $GeometryCopyWith<$Res>(_value.geometry!, (value) {
      return _then(_value.copyWith(geometry: value));
    });
  }

  @override
  $OpeningHoursCopyWith<$Res>? get openingHours {
    if (_value.openingHours == null) {
      return null;
    }

    return $OpeningHoursCopyWith<$Res>(_value.openingHours!, (value) {
      return _then(_value.copyWith(openingHours: value));
    });
  }
}

/// @nodoc
abstract class _$$_PlacesResultCopyWith<$Res>
    implements $PlacesResultCopyWith<$Res> {
  factory _$$_PlacesResultCopyWith(
          _$_PlacesResult value, $Res Function(_$_PlacesResult) then) =
      __$$_PlacesResultCopyWithImpl<$Res>;

  @override
  $Res call(
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
      @JsonKey(name: "user_ratings_total") int? userRatingsTotal});

  @override
  $GeometryCopyWith<$Res>? get geometry;

  @override
  $OpeningHoursCopyWith<$Res>? get openingHours;
}

/// @nodoc
class __$$_PlacesResultCopyWithImpl<$Res>
    extends _$PlacesResultCopyWithImpl<$Res>
    implements _$$_PlacesResultCopyWith<$Res> {
  __$$_PlacesResultCopyWithImpl(
      _$_PlacesResult _value, $Res Function(_$_PlacesResult) _then)
      : super(_value, (v) => _then(v as _$_PlacesResult));

  @override
  _$_PlacesResult get _value => super._value as _$_PlacesResult;

  @override
  $Res call({
    Object? businessStatus = freezed,
    Object? formattedAddress = freezed,
    Object? geometry = freezed,
    Object? icon = freezed,
    Object? iconBackgroundColor = freezed,
    Object? iconMaskBaseUri = freezed,
    Object? name = freezed,
    Object? openingHours = freezed,
    Object? photos = freezed,
    Object? placeId = freezed,
    Object? rating = freezed,
    Object? reference = freezed,
    Object? types = freezed,
    Object? userRatingsTotal = freezed,
  }) {
    return _then(_$_PlacesResult(
      businessStatus: businessStatus == freezed
          ? _value.businessStatus
          : businessStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      formattedAddress: formattedAddress == freezed
          ? _value.formattedAddress
          : formattedAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      geometry: geometry == freezed
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as Geometry?,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      iconBackgroundColor: iconBackgroundColor == freezed
          ? _value.iconBackgroundColor
          : iconBackgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      iconMaskBaseUri: iconMaskBaseUri == freezed
          ? _value.iconMaskBaseUri
          : iconMaskBaseUri // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      openingHours: openingHours == freezed
          ? _value.openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as OpeningHours?,
      photos: photos == freezed
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      types: types == freezed
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      userRatingsTotal: userRatingsTotal == freezed
          ? _value.userRatingsTotal
          : userRatingsTotal // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlacesResult implements _PlacesResult {
  _$_PlacesResult(
      {@JsonKey(name: "business_status") this.businessStatus,
      @JsonKey(name: "formatted_address") this.formattedAddress,
      @JsonKey(name: "geometry") this.geometry,
      @JsonKey(name: "icon") this.icon,
      @JsonKey(name: "icon_background_color") this.iconBackgroundColor,
      @JsonKey(name: "icon_mask_base_uri") this.iconMaskBaseUri,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "opening_hours") this.openingHours,
      @JsonKey(name: "photos") final List<Photo>? photos,
      @JsonKey(name: "place_id") this.placeId,
      @JsonKey(name: "rating") this.rating,
      @JsonKey(name: "reference") this.reference,
      @JsonKey(name: "types") final List<String>? types,
      @JsonKey(name: "user_ratings_total") this.userRatingsTotal})
      : _photos = photos,
        _types = types;

  factory _$_PlacesResult.fromJson(Map<String, dynamic> json) =>
      _$$_PlacesResultFromJson(json);

  @override
  @JsonKey(name: "business_status")
  final String? businessStatus;
  @override
  @JsonKey(name: "formatted_address")
  final String? formattedAddress;
  @override
  @JsonKey(name: "geometry")
  final Geometry? geometry;
  @override
  @JsonKey(name: "icon")
  final String? icon;
  @override
  @JsonKey(name: "icon_background_color")
  final String? iconBackgroundColor;
  @override
  @JsonKey(name: "icon_mask_base_uri")
  final String? iconMaskBaseUri;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "opening_hours")
  final OpeningHours? openingHours;
  final List<Photo>? _photos;

  @override
  @JsonKey(name: "photos")
  List<Photo>? get photos {
    final value = _photos;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "place_id")
  final String? placeId;
  @override
  @JsonKey(name: "rating")
  final double? rating;
  @override
  @JsonKey(name: "reference")
  final String? reference;
  final List<String>? _types;

  @override
  @JsonKey(name: "types")
  List<String>? get types {
    final value = _types;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "user_ratings_total")
  final int? userRatingsTotal;

  @override
  String toString() {
    return 'PlacesResult(businessStatus: $businessStatus, formattedAddress: $formattedAddress, geometry: $geometry, icon: $icon, iconBackgroundColor: $iconBackgroundColor, iconMaskBaseUri: $iconMaskBaseUri, name: $name, openingHours: $openingHours, photos: $photos, placeId: $placeId, rating: $rating, reference: $reference, types: $types, userRatingsTotal: $userRatingsTotal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlacesResult &&
            const DeepCollectionEquality()
                .equals(other.businessStatus, businessStatus) &&
            const DeepCollectionEquality()
                .equals(other.formattedAddress, formattedAddress) &&
            const DeepCollectionEquality().equals(other.geometry, geometry) &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            const DeepCollectionEquality()
                .equals(other.iconBackgroundColor, iconBackgroundColor) &&
            const DeepCollectionEquality()
                .equals(other.iconMaskBaseUri, iconMaskBaseUri) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.openingHours, openingHours) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            const DeepCollectionEquality().equals(other.placeId, placeId) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality().equals(other.reference, reference) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            const DeepCollectionEquality()
                .equals(other.userRatingsTotal, userRatingsTotal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(businessStatus),
      const DeepCollectionEquality().hash(formattedAddress),
      const DeepCollectionEquality().hash(geometry),
      const DeepCollectionEquality().hash(icon),
      const DeepCollectionEquality().hash(iconBackgroundColor),
      const DeepCollectionEquality().hash(iconMaskBaseUri),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(openingHours),
      const DeepCollectionEquality().hash(_photos),
      const DeepCollectionEquality().hash(placeId),
      const DeepCollectionEquality().hash(rating),
      const DeepCollectionEquality().hash(reference),
      const DeepCollectionEquality().hash(_types),
      const DeepCollectionEquality().hash(userRatingsTotal));

  @JsonKey(ignore: true)
  @override
  _$$_PlacesResultCopyWith<_$_PlacesResult> get copyWith =>
      __$$_PlacesResultCopyWithImpl<_$_PlacesResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlacesResultToJson(this);
  }
}

abstract class _PlacesResult implements PlacesResult {
  factory _PlacesResult(
      {@JsonKey(name: "business_status")
          final String? businessStatus,
      @JsonKey(name: "formatted_address")
          final String? formattedAddress,
      @JsonKey(name: "geometry")
          final Geometry? geometry,
      @JsonKey(name: "icon")
          final String? icon,
      @JsonKey(name: "icon_background_color")
          final String? iconBackgroundColor,
      @JsonKey(name: "icon_mask_base_uri")
          final String? iconMaskBaseUri,
      @JsonKey(name: "name")
          final String? name,
      @JsonKey(name: "opening_hours")
          final OpeningHours? openingHours,
      @JsonKey(name: "photos")
          final List<Photo>? photos,
      @JsonKey(name: "place_id")
          final String? placeId,
      @JsonKey(name: "rating")
          final double? rating,
      @JsonKey(name: "reference")
          final String? reference,
      @JsonKey(name: "types")
          final List<String>? types,
      @JsonKey(name: "user_ratings_total")
          final int? userRatingsTotal}) = _$_PlacesResult;

  factory _PlacesResult.fromJson(Map<String, dynamic> json) =
      _$_PlacesResult.fromJson;

  @override
  @JsonKey(name: "business_status")
  String? get businessStatus => throw _privateConstructorUsedError;

  @override
  @JsonKey(name: "formatted_address")
  String? get formattedAddress => throw _privateConstructorUsedError;

  @override
  @JsonKey(name: "geometry")
  Geometry? get geometry => throw _privateConstructorUsedError;

  @override
  @JsonKey(name: "icon")
  String? get icon => throw _privateConstructorUsedError;

  @override
  @JsonKey(name: "icon_background_color")
  String? get iconBackgroundColor => throw _privateConstructorUsedError;

  @override
  @JsonKey(name: "icon_mask_base_uri")
  String? get iconMaskBaseUri => throw _privateConstructorUsedError;

  @override
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;

  @override
  @JsonKey(name: "opening_hours")
  OpeningHours? get openingHours => throw _privateConstructorUsedError;

  @override
  @JsonKey(name: "photos")
  List<Photo>? get photos => throw _privateConstructorUsedError;

  @override
  @JsonKey(name: "place_id")
  String? get placeId => throw _privateConstructorUsedError;

  @override
  @JsonKey(name: "rating")
  double? get rating => throw _privateConstructorUsedError;

  @override
  @JsonKey(name: "reference")
  String? get reference => throw _privateConstructorUsedError;

  @override
  @JsonKey(name: "types")
  List<String>? get types => throw _privateConstructorUsedError;

  @override
  @JsonKey(name: "user_ratings_total")
  int? get userRatingsTotal => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$$_PlacesResultCopyWith<_$_PlacesResult> get copyWith =>
      throw _privateConstructorUsedError;
}
