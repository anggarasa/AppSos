part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = _Initial;
  const factory RegisterState.loading() = _Loading;
  const factory RegisterState.success(AuthRegisterResponseModel data) =
      _Success;
  const factory RegisterState.failed(NetworkExceptions error) = _Failed;
}
