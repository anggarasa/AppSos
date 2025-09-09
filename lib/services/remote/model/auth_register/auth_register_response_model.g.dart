// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_register_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthRegisterResponseModel _$AuthRegisterResponseModelFromJson(
  Map<String, dynamic> json,
) => _AuthRegisterResponseModel(
  token: json['token'] as String,
  user: User.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AuthRegisterResponseModelToJson(
  _AuthRegisterResponseModel instance,
) => <String, dynamic>{'token': instance.token, 'user': instance.user};

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  id: json['id'] as String,
  email: json['email'] as String,
  username: json['username'] as String,
  name: json['name'] as String,
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'id': instance.id,
  'email': instance.email,
  'username': instance.username,
  'name': instance.name,
};
