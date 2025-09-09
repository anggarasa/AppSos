import 'package:appsos/services/remote/configs/api_response.dart';
import 'package:appsos/services/remote/configs/dio_helper.dart';
import 'package:appsos/services/remote/configs/error_handler.dart';
import 'package:appsos/services/remote/configs/network_exceptions.dart';
import 'package:appsos/services/remote/interface/auth_service_interface.dart';
import 'package:appsos/services/remote/model/auth_register/auth_register_response_model.dart';
import 'package:appsos/utils/constans.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AuthService implements AuthServiceInterface {
  final Dio dio;

  AuthService() : dio = DioHelper.createDio("${dotenv.env[EnvConst.baseUrl]}");
  @override
  Future<ApiResponse<AuthRegisterResponseModel>> register({
    required String name,
    required String username,
    required String email,
    required String password,
  }) async {
    try {
      Map<String, dynamic> body = {
        "name": name,
        "username": username,
        "email": email,
        "password": password,
      };

      Response response = await dio.post(
        "/api/auth/register",
        data: body,
        options: Options(extra: {"requireAuth": false}),
      );
      final data = AuthRegisterResponseModel.fromJson(response.data);
      return ApiResponse.success(data);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      }
      return ApiResponse.error(
        NetworkExceptions.defaultError(message: e.toString()),
      );
    }
  }
}
