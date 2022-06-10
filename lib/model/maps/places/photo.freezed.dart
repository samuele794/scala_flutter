// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'photo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Photo _$PhotoFromJson(Map<String, dynamic> json) {
  return _Photo.fromJson(json);
}

/// @nodoc
mixin _$Photo {
  @JsonKey(name: "height")
  int? get height => throw _privateConstructorUsedError;

  @JsonKey(name: "html_attributions")
  List<String>? get htmlAttributions => throw _privateConstructorUsedError;

  @JsonKey(name: "photo_reference")
  String? get photoReference => throw _privateConstructorUsedError;

  @JsonKey(name: "width")
  int? get width => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhotoCopyWith<Photo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoCopyWith<$Res> {
  factory $PhotoCopyWith(Photo value, $Res Function(Photo) then) =
      _$PhotoCopyWithImpl<$Res>;

  $Res call(
      {@JsonKey(name: "height") int? height,
      @JsonKey(name: "html_attributions") List<String>? htmlAttributions,
      @JsonKey(name: "photo_reference") String? photoReference,
      @JsonKey(name: "width") int? width});
}

/// @nodoc
class _$PhotoCopyWithImpl<$Res> implements $PhotoCopyWith<$Res> {
  _$PhotoCopyWithImpl(this._value, this._then);

  final Photo _value;

  // ignore: unused_field
  final $Res Function(Photo) _then;

  @override
  $Res call({
    Object? height = freezed,
    Object? htmlAttributions = freezed,
    Object? photoReference = freezed,
    Object? width = freezed,
  }) {
    return _then(_value.copyWith(
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      htmlAttributions: htmlAttributions == freezed
          ? _value.htmlAttributions
          : htmlAttributions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      photoReference: photoReference == freezed
          ? _value.photoReference
          : photoReference // ignore: cast_nullable_to_non_nullable
              as String?,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_PhotoCopyWith<$Res> implements $PhotoCopyWith<$Res> {
  factory _$$_PhotoCopyWith(_$_Photo value, $Res Function(_$_Photo) then) =
      __$$_PhotoCopyWithImpl<$Res>;

  @override
  $Res call(
      {@JsonKey(name: "height") int? height,
      @JsonKey(name: "html_attributions") List<String>? htmlAttributions,
      @JsonKey(name: "photo_reference") String? photoReference,
      @JsonKey(name: "width") int? width});
}

/// @nodoc
class __$$_PhotoCopyWithImpl<$Res> extends _$PhotoCopyWithImpl<$Res>
    implements _$$_PhotoCopyWith<$Res> {
  __$$_PhotoCopyWithImpl(_$_Photo _value, $Res Function(_$_Photo) _then)
      : super(_value, (v) => _then(v as _$_Photo));

  @override
  _$_Photo get _value => super._value as _$_Photo;

  @override
  $Res call({
    Object? height = freezed,
    Object? htmlAttributions = freezed,
    Object? photoReference = freezed,
    Object? width = freezed,
  }) {
    return _then(_$_Photo(
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      htmlAttributions: htmlAttributions == freezed
          ? _value._htmlAttributions
          : htmlAttributions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      photoReference: photoReference == freezed
          ? _value.photoReference
          : photoReference // ignore: cast_nullable_to_non_nullable
              as String?,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Photo implements _Photo {
  _$_Photo(
      {@JsonKey(name: "height") this.height,
      @JsonKey(name: "html_attributions") final List<String>? htmlAttributions,
      @JsonKey(name: "photo_reference") this.photoReference,
      @JsonKey(name: "width") this.width})
      : _htmlAttributions = htmlAttributions;

  factory _$_Photo.fromJson(Map<String, dynamic> json) =>
      _$$_PhotoFromJson(json);

  @override
  @JsonKey(name: "height")
  final int? height;
  final List<String>? _htmlAttributions;

  @override
  @JsonKey(name: "html_attributions")
  List<String>? get htmlAttributions {
    final value = _htmlAttributions;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "photo_reference")
  final String? photoReference;
  @override
  @JsonKey(name: "width")
  final int? width;

  @override
  String toString() {
    return 'Photo(height: $height, htmlAttributions: $htmlAttributions, photoReference: $photoReference, width: $width)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Photo &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality()
                .equals(other._htmlAttributions, _htmlAttributions) &&
            const DeepCollectionEquality()
                .equals(other.photoReference, photoReference) &&
            const DeepCollectionEquality().equals(other.width, width));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(_htmlAttributions),
      const DeepCollectionEquality().hash(photoReference),
      const DeepCollectionEquality().hash(width));

  @JsonKey(ignore: true)
  @override
  _$$_PhotoCopyWith<_$_Photo> get copyWith =>
      __$$_PhotoCopyWithImpl<_$_Photo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhotoToJson(this);
  }
}

abstract class _Photo implements Photo {
  factory _Photo(
      {@JsonKey(name: "height") final int? height,
      @JsonKey(name: "html_attributions") final List<String>? htmlAttributions,
      @JsonKey(name: "photo_reference") final String? photoReference,
      @JsonKey(name: "width") final int? width}) = _$_Photo;

  factory _Photo.fromJson(Map<String, dynamic> json) = _$_Photo.fromJson;

  @override
  @JsonKey(name: "height")
  int? get height => throw _privateConstructorUsedError;

  @override
  @JsonKey(name: "html_attributions")
  List<String>? get htmlAttributions => throw _privateConstructorUsedError;

  @override
  @JsonKey(name: "photo_reference")
  String? get photoReference => throw _privateConstructorUsedError;

  @override
  @JsonKey(name: "width")
  int? get width => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$$_PhotoCopyWith<_$_Photo> get copyWith =>
      throw _privateConstructorUsedError;
}
