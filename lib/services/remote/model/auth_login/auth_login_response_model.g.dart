// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthLoginResponseModel _$AuthLoginResponseModelFromJson(
  Map<String, dynamic> json,
) => _AuthLoginResponseModel(
  status: (json['status'] as num).toInt(),
  message: json['message'] as String,
  data: LoginResponseData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AuthLoginResponseModelToJson(
  _AuthLoginResponseModel instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'data': instance.data,
};

_LoginResponseData _$LoginResponseDataFromJson(Map<String, dynamic> json) =>
    _LoginResponseData(
      token: json['token'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResponseDataToJson(_LoginResponseData instance) =>
    <String, dynamic>{'token': instance.token, 'user': instance.user};

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
