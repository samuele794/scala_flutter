// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'places_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlacesResponse _$PlacesResponseFromJson(Map<String, dynamic> json) {
  return _PlacesResponse.fromJson(json);
}

/// @nodoc
mixin _$PlacesResponse {
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;

  @JsonKey(name: "results")
  List<PlacesResult> get placesResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlacesResponseCopyWith<PlacesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlacesResponseCopyWith<$Res> {
  factory $PlacesResponseCopyWith(
          PlacesResponse value, $Res Function(PlacesResponse) then) =
      _$PlacesResponseCopyWithImpl<$Res>;

  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "results") List<PlacesResult> placesResults});
}

/// @nodoc
class _$PlacesResponseCopyWithImpl<$Res>
    implements $PlacesResponseCopyWith<$Res> {
  _$PlacesResponseCopyWithImpl(this._value, this._then);

  final PlacesResponse _value;

  // ignore: unused_field
  final $Res Function(PlacesResponse) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? placesResults = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      placesResults: placesResults == freezed
          ? _value.placesResults
          : placesResults // ignore: cast_nullable_to_non_nullable
              as List<PlacesResult>,
    ));
  }
}

/// @nodoc
abstract class _$$_PlacesResponseCopyWith<$Res>
    implements $PlacesResponseCopyWith<$Res> {
  factory _$$_PlacesResponseCopyWith(
          _$_PlacesResponse value, $Res Function(_$_PlacesResponse) then) =
      __$$_PlacesResponseCopyWithImpl<$Res>;

  @override
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "results") List<PlacesResult> placesResults});
}

/// @nodoc
class __$$_PlacesResponseCopyWithImpl<$Res>
    extends _$PlacesResponseCopyWithImpl<$Res>
    implements _$$_PlacesResponseCopyWith<$Res> {
  __$$_PlacesResponseCopyWithImpl(
      _$_PlacesResponse _value, $Res Function(_$_PlacesResponse) _then)
      : super(_value, (v) => _then(v as _$_PlacesResponse));

  @override
  _$_PlacesResponse get _value => super._value as _$_PlacesResponse;

  @override
  $Res call({
    Object? status = freezed,
    Object? placesResults = freezed,
  }) {
    return _then(_$_PlacesResponse(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      placesResults: placesResults == freezed
          ? _value._placesResults
          : placesResults // ignore: cast_nullable_to_non_nullable
              as List<PlacesResult>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlacesResponse implements _PlacesResponse {
  const _$_PlacesResponse(
      {@JsonKey(name: "status")
          this.status,
      @JsonKey(name: "results")
          final List<PlacesResult> placesResults = const []})
      : _placesResults = placesResults;

  factory _$_PlacesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PlacesResponseFromJson(json);

  @override
  @JsonKey(name: "status")
  final String? status;
  final List<PlacesResult> _placesResults;

  @override
  @JsonKey(name: "results")
  List<PlacesResult> get placesResults {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_placesResults);
  }

  @override
  String toString() {
    return 'PlacesResponse(status: $status, placesResults: $placesResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlacesResponse &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other._placesResults, _placesResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(_placesResults));

  @JsonKey(ignore: true)
  @override
  _$$_PlacesResponseCopyWith<_$_PlacesResponse> get copyWith =>
      __$$_PlacesResponseCopyWithImpl<_$_PlacesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlacesResponseToJson(this);
  }
}

abstract class _PlacesResponse implements PlacesResponse {
  const factory _PlacesResponse(
          {@JsonKey(name: "status") final String? status,
          @JsonKey(name: "results") final List<PlacesResult> placesResults}) =
      _$_PlacesResponse;

  factory _PlacesResponse.fromJson(Map<String, dynamic> json) =
      _$_PlacesResponse.fromJson;

  @override
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;

  @override
  @JsonKey(name: "results")
  List<PlacesResult> get placesResults => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$$_PlacesResponseCopyWith<_$_PlacesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
