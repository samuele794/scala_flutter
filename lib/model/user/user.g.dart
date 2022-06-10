// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      name: json['name'] as String? ?? '',
      surname: json['surname'] as String? ?? '',
      birthDate: json['birthDate'] as String? ?? null,
      accountType:
          $enumDecodeNullable(_$UserTypeEnumMap, json['accountType']) ??
              UserType.NONE,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'name': instance.name,
      'surname': instance.surname,
      'birthDate': instance.birthDate,
      'accountType': _$UserTypeEnumMap[instance.accountType],
    };

const _$UserTypeEnumMap = {
  UserType.NONE: 'NONE',
  UserType.TRAINER: 'TRAINER',
  UserType.USER: 'USER',
};
