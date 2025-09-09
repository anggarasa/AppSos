part of 'register_bloc.dart';

@freezed
abstract class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.register({
    required String name,
    required String username,
    required String email,
    required String password,
  }) = _Register;
}
