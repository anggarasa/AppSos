import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'auth_login_response_model.freezed.dart';
part 'auth_login_response_model.g.dart';

@freezed
abstract class AuthLoginResponseModel with _$AuthLoginResponseModel {
  const factory AuthLoginResponseModel({
    @JsonKey(name: "status") required int status,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "data") required LoginResponseData data,
  }) = _AuthLoginResponseModel;

  factory AuthLoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AuthLoginResponseModelFromJson(json);
}

@freezed
abstract class LoginResponseData with _$LoginResponseData {
  const factory LoginResponseData({
    @JsonKey(name: "token") required String token,
    @JsonKey(name: "user") required User user,
  }) = _LoginResponseData;

  factory LoginResponseData.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseDataFromJson(json);
}

@freezed
abstract class User with _$User {
  const factory User({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "email") required String email,
    @JsonKey(name: "username") required String username,
    @JsonKey(name: "name") required String name,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
