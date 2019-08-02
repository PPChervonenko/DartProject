// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api.response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserResponse _$UserResponseFromJson(Map<String, dynamic> json) {
  return UserResponse(
    json['results'] as List,
  );
}

Map<String, dynamic> _$UserResponseToJson(UserResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    json['id'] as int,
    json['firstName'] as String,
    json['lastName'] as String,
    json['active'] as String,
    json['company'] as String,
    json['salary'] as int,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'active': instance.active,
      'company': instance.company,
      'salary': instance.salary,
    };
