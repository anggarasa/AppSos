import 'package:appsos/services/remote/configs/api_response.dart';
import 'package:appsos/services/remote/model/auth_login/auth_login_response_model.dart';
import 'package:appsos/services/remote/model/auth_register/auth_register_response_model.dart';

abstract class AuthServiceInterface {
  Future<ApiResponse<AuthRegisterResponseModel>> register({
    required String name,
    required String username,
    required String email,
    required String password,
  });

  Future<ApiResponse<AuthLoginResponseModel>> login({
    required String email,
    required String password,
  });
}
