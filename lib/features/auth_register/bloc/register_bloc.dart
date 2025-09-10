import 'package:appsos/services/local/secure_storage/secure_storage_service.dart';
import 'package:appsos/services/remote/configs/api_response.dart';
import 'package:appsos/services/remote/configs/network_exceptions.dart';
import 'package:appsos/services/remote/implementation/auth_service.dart';
import 'package:appsos/services/remote/model/auth_register/auth_register_response_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final AuthService _authService = AuthService();
  final SecureStorageService _secureStorageService = SecureStorageService();
  RegisterBloc() : super(const RegisterState.initial()) {
    on<RegisterEvent>((event, emit) async {
      await event.when(
        register: (name, username, email, password) async {
          emit(const RegisterState.loading());
          final response = await _authService.register(
            name: name,
            username: username,
            email: email,
            password: password,
          );
          response.when(
            success: (data) {
              _secureStorageService.saveToken(data.data.token);
              emit(RegisterState.success(data));
            },
            error: (error) => emit(RegisterState.failed(error)),
          );
        },
      );
    });
  }
}
