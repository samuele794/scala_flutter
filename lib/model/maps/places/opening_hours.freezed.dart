// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'opening_hours.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OpeningHours _$OpeningHoursFromJson(Map<String, dynamic> json) {
  return _OpeningHours.fromJson(json);
}

/// @nodoc
mixin _$OpeningHours {
  @JsonKey(name: "open_now")
  bool? get openNow => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpeningHoursCopyWith<OpeningHours> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpeningHoursCopyWith<$Res> {
  factory $OpeningHoursCopyWith(
          OpeningHours value, $Res Function(OpeningHours) then) =
      _$OpeningHoursCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "open_now") bool? openNow});
}

/// @nodoc
class _$OpeningHoursCopyWithImpl<$Res> implements $OpeningHoursCopyWith<$Res> {
  _$OpeningHoursCopyWithImpl(this._value, this._then);

  final OpeningHours _value;
  // ignore: unused_field
  final $Res Function(OpeningHours) _then;

  @override
  $Res call({
    Object? openNow = freezed,
  }) {
    return _then(_value.copyWith(
      openNow: openNow == freezed
          ? _value.openNow
          : openNow // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_OpeningHoursCopyWith<$Res>
    implements $OpeningHoursCopyWith<$Res> {
  factory _$$_OpeningHoursCopyWith(
          _$_OpeningHours value, $Res Function(_$_OpeningHours) then) =
      __$$_OpeningHoursCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "open_now") bool? openNow});
}

/// @nodoc
class __$$_OpeningHoursCopyWithImpl<$Res>
    extends _$OpeningHoursCopyWithImpl<$Res>
    implements _$$_OpeningHoursCopyWith<$Res> {
  __$$_OpeningHoursCopyWithImpl(
      _$_OpeningHours _value, $Res Function(_$_OpeningHours) _then)
      : super(_value, (v) => _then(v as _$_OpeningHours));

  @override
  _$_OpeningHours get _value => super._value as _$_OpeningHours;

  @override
  $Res call({
    Object? openNow = freezed,
  }) {
    return _then(_$_OpeningHours(
      openNow: openNow == freezed
          ? _value.openNow
          : openNow // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OpeningHours implements _OpeningHours {
  _$_OpeningHours({@JsonKey(name: "open_now") this.openNow});

  factory _$_OpeningHours.fromJson(Map<String, dynamic> json) =>
      _$$_OpeningHoursFromJson(json);

  @override
  @JsonKey(name: "open_now")
  final bool? openNow;

  @override
  String toString() {
    return 'OpeningHours(openNow: $openNow)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpeningHours &&
            const DeepCollectionEquality().equals(other.openNow, openNow));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(openNow));

  @JsonKey(ignore: true)
  @override
  _$$_OpeningHoursCopyWith<_$_OpeningHours> get copyWith =>
      __$$_OpeningHoursCopyWithImpl<_$_OpeningHours>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpeningHoursToJson(this);
  }
}

abstract class _OpeningHours implements OpeningHours {
  factory _OpeningHours({@JsonKey(name: "open_now") final bool? openNow}) =
      _$_OpeningHours;

  factory _OpeningHours.fromJson(Map<String, dynamic> json) =
      _$_OpeningHours.fromJson;

  @override
  @JsonKey(name: "open_now")
  bool? get openNow => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_OpeningHoursCopyWith<_$_OpeningHours> get copyWith =>
      throw _privateConstructorUsedError;
}
