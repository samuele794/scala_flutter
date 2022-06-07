import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scala_flutter/model/user/user_type.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    @Default('') String name,
    @Default('') String surname,
    @Default(null) String? birthDate,
    @Default(UserType.NONE) UserType accountType,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
