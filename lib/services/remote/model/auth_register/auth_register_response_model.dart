import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'auth_register_response_model.freezed.dart';
part 'auth_register_response_model.g.dart';

@freezed
abstract class AuthRegisterResponseModel with _$AuthRegisterResponseModel {
  const factory AuthRegisterResponseModel({
    @JsonKey(name: "token") required String token,
    @JsonKey(name: "user") required User user,
  }) = _AuthRegisterResponseModel;

  factory AuthRegisterResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AuthRegisterResponseModelFromJson(json);
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
