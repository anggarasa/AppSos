import 'package:appsos/services/local/secure_storage/secure_storage_service.dart';
import 'package:appsos/services/remote/configs/api_response.dart';
import 'package:appsos/services/remote/configs/network_exceptions.dart';
import 'package:appsos/services/remote/implementation/auth_service.dart';
import 'package:appsos/services/remote/model/auth_login/auth_login_response_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthService _authService = AuthService();
  final SecureStorageService _secureStorageService = SecureStorageService();
  LoginBloc() : super(const LoginState.initial()) {
    on<LoginEvent>((event, emit) async {
      await event.when(
        login: (email, password) async {
          emit(const LoginState.loading());

          final response = await _authService.login(
            email: email,
            password: password,
          );
          response.when(
            success: (data) {
              _secureStorageService.saveToken(data.data.token);
              emit(LoginState.success(data));
            },
            error: (error) => emit(LoginState.failed(error)),
          );
        },
      );
    });
  }
}
