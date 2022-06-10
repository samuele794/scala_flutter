// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'boarding_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BoardingUi {
  String get name => throw _privateConstructorUsedError;

  String get surname => throw _privateConstructorUsedError;

  UserType get userType => throw _privateConstructorUsedError;

  bool get firstNext => throw _privateConstructorUsedError;

  String get height => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BoardingUiCopyWith<BoardingUi> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardingUiCopyWith<$Res> {
  factory $BoardingUiCopyWith(
          BoardingUi value, $Res Function(BoardingUi) then) =
      _$BoardingUiCopyWithImpl<$Res>;

  $Res call(
      {String name,
      String surname,
      UserType userType,
      bool firstNext,
      String height});
}

/// @nodoc
class _$BoardingUiCopyWithImpl<$Res> implements $BoardingUiCopyWith<$Res> {
  _$BoardingUiCopyWithImpl(this._value, this._then);

  final BoardingUi _value;

  // ignore: unused_field
  final $Res Function(BoardingUi) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? surname = freezed,
    Object? userType = freezed,
    Object? firstNext = freezed,
    Object? height = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: surname == freezed
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      userType: userType == freezed
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType,
      firstNext: firstNext == freezed
          ? _value.firstNext
          : firstNext // ignore: cast_nullable_to_non_nullable
              as bool,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_BoardingUiCopyWith<$Res>
    implements $BoardingUiCopyWith<$Res> {
  factory _$$_BoardingUiCopyWith(
          _$_BoardingUi value, $Res Function(_$_BoardingUi) then) =
      __$$_BoardingUiCopyWithImpl<$Res>;

  @override
  $Res call(
      {String name,
      String surname,
      UserType userType,
      bool firstNext,
      String height});
}

/// @nodoc
class __$$_BoardingUiCopyWithImpl<$Res> extends _$BoardingUiCopyWithImpl<$Res>
    implements _$$_BoardingUiCopyWith<$Res> {
  __$$_BoardingUiCopyWithImpl(
      _$_BoardingUi _value, $Res Function(_$_BoardingUi) _then)
      : super(_value, (v) => _then(v as _$_BoardingUi));

  @override
  _$_BoardingUi get _value => super._value as _$_BoardingUi;

  @override
  $Res call({
    Object? name = freezed,
    Object? surname = freezed,
    Object? userType = freezed,
    Object? firstNext = freezed,
    Object? height = freezed,
  }) {
    return _then(_$_BoardingUi(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: surname == freezed
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      userType: userType == freezed
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType,
      firstNext: firstNext == freezed
          ? _value.firstNext
          : firstNext // ignore: cast_nullable_to_non_nullable
              as bool,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BoardingUi implements _BoardingUi {
  _$_BoardingUi(
      {this.name = "",
      this.surname = "",
      this.userType = UserType.NONE,
      this.firstNext = false,
      this.height = "0"});

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String surname;
  @override
  @JsonKey()
  final UserType userType;
  @override
  @JsonKey()
  final bool firstNext;
  @override
  @JsonKey()
  final String height;

  @override
  String toString() {
    return 'BoardingUi(name: $name, surname: $surname, userType: $userType, firstNext: $firstNext, height: $height)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BoardingUi &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.surname, surname) &&
            const DeepCollectionEquality().equals(other.userType, userType) &&
            const DeepCollectionEquality().equals(other.firstNext, firstNext) &&
            const DeepCollectionEquality().equals(other.height, height));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(surname),
      const DeepCollectionEquality().hash(userType),
      const DeepCollectionEquality().hash(firstNext),
      const DeepCollectionEquality().hash(height));

  @JsonKey(ignore: true)
  @override
  _$$_BoardingUiCopyWith<_$_BoardingUi> get copyWith =>
      __$$_BoardingUiCopyWithImpl<_$_BoardingUi>(this, _$identity);
}

abstract class _BoardingUi implements BoardingUi {
  factory _BoardingUi(
      {final String name,
      final String surname,
      final UserType userType,
      final bool firstNext,
      final String height}) = _$_BoardingUi;

  @override
  String get name => throw _privateConstructorUsedError;

  @override
  String get surname => throw _privateConstructorUsedError;

  @override
  UserType get userType => throw _privateConstructorUsedError;

  @override
  bool get firstNext => throw _privateConstructorUsedError;

  @override
  String get height => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$$_BoardingUiCopyWith<_$_BoardingUi> get copyWith =>
      throw _privateConstructorUsedError;
}
